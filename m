Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RiTqk-0008Od-TB
 for barebox@lists.infradead.org; Wed, 04 Jan 2012 16:38:04 +0000
Date: Wed, 4 Jan 2012 17:37:56 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120104163755.GW5446@pengutronix.de>
References: <20120104114533.GB1810@game.jcrosoft.org>
 <1325689276-12863-1-git-send-email-eric@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1325689276-12863-1-git-send-email-eric@eukrea.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] loadb: only try to change the baudrate if the driver has
 this feature
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On Wed, Jan 04, 2012 at 04:01:16PM +0100, Eric B=E9nard wrote:
> this allows loadb to work over usbserial gadget

I like the original approach better. The baudrate setting has no meaning
in hardware for the usb serial gadget. This means that we can happily
support every baudrate requested by adding a fake setbrg function.

If we had some global console_setbrg function I would agree
Jean-Christophe, this function should return cdev->setbrg or
-ENOSYS if the driver does not have a setbrg function. Still the
usb gadget serial driver should have a fake setbrg function for
the reason explained above.

> =

> Signed-off-by: Eric B=E9nard <eric@eukrea.com>
> ---
>  commands/loadb.c |    6 ++++--
>  1 files changed, 4 insertions(+), 2 deletions(-)
> =

> diff --git a/commands/loadb.c b/commands/loadb.c
> index 439a83a..d60340e 100644
> --- a/commands/loadb.c
> +++ b/commands/loadb.c
> @@ -690,12 +690,13 @@ static int do_load_serial_bin(struct command *cmdtp=
, int argc, char *argv[])
>  {
>  	ulong offset =3D 0;
>  	ulong addr;
> -	int load_baudrate =3D 0, current_baudrate;
> +	int load_baudrate =3D 0, current_baudrate =3D 0;
>  	int rcode =3D 0;
>  	int opt;
>  	int open_mode =3D O_WRONLY;
>  	char *output_file =3D NULL;
>  	struct console_device *cdev =3D NULL;
> +	unsigned char baudrate[16];
>  =

>  	while ((opt =3D getopt(argc, argv, "f:b:o:c")) > 0) {
>  		switch (opt) {
> @@ -722,7 +723,8 @@ static int do_load_serial_bin(struct command *cmdtp, =
int argc, char *argv[])
>  		printf("%s:No console device with STDIN and STDOUT\n", argv[0]);
>  		return -ENODEV;
>  	}
> -	current_baudrate =3D (int)simple_strtoul(dev_get_param(&cdev->class_dev=
, "baudrate"), NULL, 10);
> +	if (dev_get_param(&cdev->class_dev, "baudrate") !=3D NULL)
> +		current_baudrate =3D (int)simple_strtoul(dev_get_param(&cdev->class_de=
v, "baudrate"), NULL, 10);
>  =


This command could be improved by doing all this baudrate stuff only
when the -b option is given. This way we default to the current
baudrate (which seems sane in the cases I can think of)

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
