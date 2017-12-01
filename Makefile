build:
	docker build --rm -t r_ewas .
push:
	docker tag r_ewas csoriano/r_plink:3.4.0
	docker push csoriano/r_plink:3.4.0
login:
	docker login
