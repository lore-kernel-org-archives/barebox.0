Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qp500-0004zl-Fw
	for barebox@lists.infradead.org; Thu, 04 Aug 2011 20:58:37 +0000
Received: by wyg19 with SMTP id 19so1524279wyg.36
	for <barebox@lists.infradead.org>; Thu, 04 Aug 2011 13:58:32 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1312486653-19494-1-git-send-email-plagnioj@jcrosoft.com>
References: <1312389389-9255-1-git-send-email-plagnioj@jcrosoft.com>
	<1312486653-19494-1-git-send-email-plagnioj@jcrosoft.com>
Date: Fri, 5 Aug 2011 00:58:32 +0400
Message-ID: <CAA4bVAHfPQKx3w0ge_iy6daXpr7Yg2WHtGyBZc86o+vzzgOVMw@mail.gmail.com>
From: Antony Pavlov <antonynpavlov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] ns16550: switch platform_data to drivers private data
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On 4 August 2011 23:37, Jean-Christophe PLAGNIOL-VILLARD
<plagnioj@jcrosoft.com> wrote:

> --- a/drivers/serial/serial_ns16550.c
> +++ b/drivers/serial/serial_ns16550.c
> @@ -48,6 +48,55 @@
>
> =A0/*********** Private Functions **********************************/
>
> +/*
> + * We wrap our port structure around the generic console_device.
> + */
> +struct ns16550_uart_port {
> + =A0 =A0 =A0 void __iomem *base;
> + =A0 =A0 =A0 uint32_t shift;
> + =A0 =A0 =A0 uint32_t clock;
> + =A0 =A0 =A0 uint32_t (*read)(void __iomem *base, uint8_t off);
> + =A0 =A0 =A0 void (*write)(uint32_t val, void __iomem *base, uint8_t off=
);
> +
> + =A0 =A0 =A0 struct console_device uart;

          nice trick :)))

          But why the name is 'uart', not 'cdev'?
> +};

As a rule, structure declarations go to header files.

> +
> +static uint32_t ns16550_readb(void __iomem *base, uint8_t off)
> +{
> + =A0 =A0 =A0 return readb(base + off);

 warning: pointer of type =91void *=92 used in arithmetic


> -static unsigned int ns16550_calc_divisor(struct console_device *cdev,
> +static unsigned int ns16550_calc_divisor(struct ns16550_uart_port *uart,
> =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 unsigned int baudrate)
> =A0{
> - =A0 =A0 =A0 struct NS16550_plat *plat =3D (struct NS16550_plat *)
> - =A0 =A0 =A0 =A0 =A0 cdev->dev->platform_data;
> - =A0 =A0 =A0 unsigned int clk =3D plat->clock;
> -
> - =A0 =A0 =A0 return (clk / MODE_X_DIV / baudrate);
> -
> + =A0 =A0 =A0 return (uart->clock / MODE_X_DIV / baudrate);
> =A0}

inline?


> + =A0 =A0 =A0 if (!plat->reg_read) {
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 switch (width) {
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 case IORESOURCE_MEM_8BIT:
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 uart->read =3D ns16550_read=
b;
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 break;
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 case IORESOURCE_MEM_16BIT:
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 uart->read =3D ns16550_read=
w;
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 break;
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 case IORESOURCE_MEM_32BIT:
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 uart->read =3D ns16550_read=
l;
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 break;
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 }
> + =A0 =A0 =A0 } else {
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 uart->read =3D plat->reg_read;
> + =A0 =A0 =A0 }

In this if the 'else' block is very short. 'if' block is much longer.
Swapping of them will improve readability.

> + =A0 =A0 =A0 if (!plat->reg_write) {
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 switch (width) {
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 case IORESOURCE_MEM_8BIT:
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 uart->write =3D ns16550_wri=
teb;
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 break;
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 case IORESOURCE_MEM_16BIT:
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 uart->write =3D ns16550_wri=
tew;
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 break;
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 case IORESOURCE_MEM_32BIT:
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 uart->write =3D ns16550_wri=
tel;
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 break;
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 }
> + =A0 =A0 =A0 } else {
> + =A0 =A0 =A0 =A0 =A0 =A0 =A0 uart->write =3D plat->reg_write;
> + =A0 =A0 =A0 }

why do it twice?

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
