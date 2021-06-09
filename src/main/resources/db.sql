create table user
(
    id             int          not null primary key auto_increment,
    first_name     varchar(50)  not null,
    last_name      varchar(50)  not null,
    email          varchar(50)  not null,
    password       varchar(255) not null,
    phone          varchar(25)  not null,
    admission_year date         not null,
    address        varchar(25)  not null,
    courses        int          not null
) ENGINE = InnoDB;

create table role
(
    id    int         not null primary key auto_increment,
    roles varchar(12) not null

) ENGINE = InnoDB;

create table user_roles
(
    user_id int not null,
    role_id int not null,

    foreign key (user_id) references user (id),
    foreign key (role_id) references role (id),

    unique (user_id, role_id)

) ENGINE = InnoDB;

create table subject
(
    id             int          not null primary key auto_increment,
    school_subject varchar(255) not null

) ENGINE = InnoDB;

create table rating
(
    id         int         not null primary key auto_increment,
    rate       varchar(10) not null,

    user_id    int         not null,
    subject_id int         not null,

    foreign key (user_id) references user (id),
    foreign key (subject_id) references subject (id),

    unique (user_id, subject_id)

) ENGINE = InnoDB;

create table user_rate_in_subject
(
    id         int not null primary key auto_increment,
    user_id    int not null,
    subject_id int not null,
    rating_id  int not null,

    foreign key (user_id) references user (id),
    foreign key (subject_id) references subject (id),
    foreign key (rating_id) references rating (id),

    unique (user_id, subject_id, rating_id)

) ENGINE = InnoDB;