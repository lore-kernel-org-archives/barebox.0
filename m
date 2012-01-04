Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo3.mail-out.ovh.net ([178.32.228.3])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RiPNj-0005mF-5U
 for barebox@lists.infradead.org; Wed, 04 Jan 2012 11:51:47 +0000
Received: from mail181.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 51D88100816E
 for <barebox@lists.infradead.org>; Wed,  4 Jan 2012 12:52:52 +0100 (CET)
Date: Wed, 4 Jan 2012 12:45:33 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120104114533.GB1810@game.jcrosoft.org>
References: <1325673359-8101-1-git-send-email-eric@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1325673359-8101-1-git-send-email-eric@eukrea.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] u_serial: add setbrg to be able to use loadb & co
To: Eric =?iso-8859-1?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On 11:35 Wed 04 Jan     , Eric B=E9nard wrote:
> Signed-off-by: Eric B=E9nard <eric@eukrea.com>
> ---
>  drivers/usb/gadget/u_serial.c |    5 +++++
>  1 files changed, 5 insertions(+), 0 deletions(-)
> =

> diff --git a/drivers/usb/gadget/u_serial.c b/drivers/usb/gadget/u_serial.c
> index e310c3a..980b527 100644
> --- a/drivers/usb/gadget/u_serial.c
> +++ b/drivers/usb/gadget/u_serial.c
> @@ -420,6 +420,10 @@ static int serial_getc(struct console_device *cdev)
>  static void serial_flush(struct console_device *cdev)
>  {
>  }
> +static int serial_setbaudrate(struct console_device *cdev, int baudrate)
> +{
> +	return 0;
> +}
>  =

>  static struct console_device *mycdev;
>  =

> @@ -469,6 +473,7 @@ int gserial_connect(struct gserial *gser, u8 port_num)
>  	cdev->putc =3D serial_putc;
>  	cdev->getc =3D serial_getc;
>  	cdev->flush =3D serial_flush;
> +	cdev->setbrg =3D serial_setbaudrate;
>  	console_register(cdev);
>  	mycdev =3D cdev;

if no setbrg this need to be manage at framework level

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
