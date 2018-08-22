USE bdii182_biblioteca;

CREATE TABLE categorias(
	id INT NOT NULL AUTO_INCREMENT,
    categoria VARCHAR(15) NOT NULL,
    PRIMARY KEY(id)
);

INSERT INTO categorias(id,categoria) VALUES (null,'ROMANCE');
INSERT INTO categorias(id,categoria) VALUES (null,'DIDÁTICO');
INSERT INTO categorias(id,categoria) VALUES (null,'FICÇÃO');
INSERT INTO categorias(id,categoria) VALUES (null,'CIENTÍFICA');

ALTER TABLE livros ADD pk_codCategoria INT NOT NULL;
ALTER TABLE livros ADD CONSTRAINT pk_codCategoria FOREIGN KEY(pk_codCategoria) REFERENCES categorias(ID);

