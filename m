Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1boSMB-0005NA-SO
 for barebox@lists.infradead.org; Mon, 26 Sep 2016 09:37:52 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <ukl@pengutronix.de>) id 1boSLq-0001NI-2d
 for barebox@lists.infradead.org; Mon, 26 Sep 2016 11:37:30 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.84_2)
 (envelope-from <ukl@pengutronix.de>) id 1boSLp-00087R-Re
 for barebox@lists.infradead.org; Mon, 26 Sep 2016 11:37:29 +0200
Date: Mon, 26 Sep 2016 11:37:29 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20160926093729.txxe5hjd2i6a7fiv@pengutronix.de>
References: <20160926091137.24719-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20160926091137.24719-1-u.kleine-koenig@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/2] firmware: altera-serial: Make the driver match the
 dt binding documentation
To: barebox@lists.infradead.org

Hello Sascha

I just noticed there is an additional change needed:

diff --git a/drivers/firmware/altera_serial.c b/drivers/firmware/altera_ser=
ial.c
index ddee991ed073..b119778d720d 100644
--- a/drivers/firmware/altera_serial.c
+++ b/drivers/firmware/altera_serial.c
@@ -328,7 +328,7 @@ out:
 =

 static struct of_device_id altera_spi_id_table[] =3D {
 	{
-		.compatible =3D "altr,passive-serial",
+		.compatible =3D "altr,fpga-passive-serial",
 	},
 };
 =

Should I resend, or can you fixup yourself?

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
