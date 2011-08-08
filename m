Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo3.mail-out.ovh.net ([188.165.43.173]
	helo=mo3.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QqXIx-00035G-9M
	for barebox@lists.infradead.org; Mon, 08 Aug 2011 21:24:12 +0000
Received: from mail191.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo3.mail-out.ovh.net (Postfix) with SMTP id 1E093FFB44C
	for <barebox@lists.infradead.org>;
	Mon,  8 Aug 2011 23:24:16 +0200 (CEST)
Date: Mon, 8 Aug 2011 23:05:36 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110808210536.GB22213@game.jcrosoft.org>
References: <CAA4bVAHyTDdjUy+xUsKWqXQWwyKh0iX_TTE=fqC=K_jPqZjGEQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA4bVAHyTDdjUy+xUsKWqXQWwyKh0iX_TTE=fqC=K_jPqZjGEQ@mail.gmail.com>
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
Subject: Re: versatilepb board support is broken
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox <barebox@lists.infradead.org>

On 23:49 Mon 08 Aug     , Antony Pavlov wrote:
> Hi!
> =

> The following patch breaks qemu versatilepb board support:
> =

> c0ff8f7f47fa10b2e683cb0452f659c97aec186f
>     versatile: switch to add_generic_device
> =

> The problem is in serial port initialization.
> =

> As versatilepb use only one serial port, this hack make barebox workable
> again (of course it is not a good solution).
> =

> --- a/arch/arm/mach-versatile/core.c
> +++ b/arch/arm/mach-versatile/core.c
> @@ -156,6 +156,7 @@ void versatile_register_uart(unsigned id)
>  	switch (id) {
>  	case 0:
>  		start =3D VERSATILE_UART0_BASE;
I found the issue too

but you need to fix all uart

see my patch

Best Regards,
J.
> +		vpb_clk_create(&ref_clk_24, "uart-pl0110");
>  		break;
>  	case 1:
>  		start =3D VERSATILE_UART1_BASE;
> @@ -171,7 +172,6 @@ void versatile_register_uart(unsigned id)
>  	}
>  	dev =3D add_generic_device("uart-pl011", id, NULL, start, 4096,
>  			   IORESOURCE_MEM, NULL);
> -	vpb_clk_create(&ref_clk_24, dev_name(dev));
>  }
> =

>  void __noreturn reset_cpu (unsigned long ignored)
> =

> -- =

> Best regards,
> =A0 Antony Pavlov
> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
