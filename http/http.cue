package http

Get:    Do & {method: "GET"}
Post:   Do & {method: "POST"}
Put:    Do & {method: "PUT"}
Delete: Do & {method: "DELETE"}

Do: {
	$action: "http.Do"

	method: string
	url:    string

	request: {
		body?: bytes | string
		header: [string]: string | [...string]
	}
	response: {
		status:     string
		statusCode: int

		body: *bytes | string
	}
}
