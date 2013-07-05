@test "jenkins is running" {
    curl http://localhost:8080 | grep -i jenkins
}
