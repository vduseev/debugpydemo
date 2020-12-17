# My file
import debugpy


print("Starting debugger ...")
debugpy.listen(("localhost", 10001))
print("Waiting for clients to connect 🎉")
debugpy.wait_for_client()


def main(start=1):
    a = start
    for i in range(10):
        a += i
    print(a)

if __name__ == "__main__":
    print("Executing main function")
    main()

    # One more time baby girl
    main(5)


