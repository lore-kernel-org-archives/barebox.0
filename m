Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f49.google.com ([74.125.82.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QqVpB-0001U1-9t
	for barebox@lists.infradead.org; Mon, 08 Aug 2011 19:49:23 +0000
Received: by wwf10 with SMTP id 10so2406786wwf.18
	for <barebox@lists.infradead.org>; Mon, 08 Aug 2011 12:49:16 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 8 Aug 2011 23:49:16 +0400
Message-ID: <CAA4bVAHyTDdjUy+xUsKWqXQWwyKh0iX_TTE=fqC=K_jPqZjGEQ@mail.gmail.com>
From: Antony Pavlov <antonynpavlov@gmail.com>
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
Subject: versatilepb board support is broken
To: barebox <barebox@lists.infradead.org>

Hi!

The following patch breaks qemu versatilepb board support:

c0ff8f7f47fa10b2e683cb0452f659c97aec186f
    versatile: switch to add_generic_device

The problem is in serial port initialization.

As versatilepb use only one serial port, this hack make barebox workable
again (of course it is not a good solution).

--- a/arch/arm/mach-versatile/core.c
+++ b/arch/arm/mach-versatile/core.c
@@ -156,6 +156,7 @@ void versatile_register_uart(unsigned id)
 	switch (id) {
 	case 0:
 		start =3D VERSATILE_UART0_BASE;
+		vpb_clk_create(&ref_clk_24, "uart-pl0110");
 		break;
 	case 1:
 		start =3D VERSATILE_UART1_BASE;
@@ -171,7 +172,6 @@ void versatile_register_uart(unsigned id)
 	}
 	dev =3D add_generic_device("uart-pl011", id, NULL, start, 4096,
 			   IORESOURCE_MEM, NULL);
-	vpb_clk_create(&ref_clk_24, dev_name(dev));
 }

 void __noreturn reset_cpu (unsigned long ignored)

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
