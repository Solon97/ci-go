run:
	docker compose up -d

lint:
	docker run --rm -itv $(CURDIR):/app -w /app golangci/golangci-lint golangci-lint run controllers/ database/ models/ routes/    

test:
	docker compose exec app go test main_teste.go

ci: run lint test
