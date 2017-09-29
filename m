Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dxzlt-0001Uy-PV
 for barebox@lists.infradead.org; Fri, 29 Sep 2017 18:12:24 +0000
Date: Fri, 29 Sep 2017 20:08:28 +0200 (CEST)
From: Alexander Kurz <akurz@blala.de>
In-Reply-To: <20170802193907.4317-1-u.kleine-koenig@pengutronix.de>
Message-ID: <alpine.DEB.2.00.1709291955001.32464@blala.de>
References: <20170802193907.4317-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED;
 BOUNDARY="-598520180-186186948-1506708518=:32464"
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 0/2] spi: imx: don't loop endlessly
To: =?ISO-8859-15?Q?Uwe_Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

---598520180-186186948-1506708518=:32464
Content-Type: TEXT/PLAIN; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable

Hi,
during xchg_single 32 bits will be sent and received:
2x32 bits / 10 Microseconds =3D 6.4MHz Clock.

Hence, a 10 Microseconds timeout will break SPI communication for
boards with SPI frequencies less then 6.4MHz.
On some boards spi-max-frequency is limited due to improper communication
at higher frequencies, e.g. for the kindle4 it is 1MHz and there=20
also exists one board with 100kHz.

Before sending a patch calculating the timeout from spi-max-frequency,
is 640 Microseconds (to fit imx28-cfa10049.dts 100kHz) acceptable?

Regards, Alexander



On Wed, 2 Aug 2017, Uwe Kleine-K=F6nig wrote:

> Hello,
>=20
> during bringup of an i.MX7 board I am faced with cspi_2_3_xchg_single not
> returning. I don't know yet why this happens, but with this patch set it =
at least
> doesn't block barebox.
>=20
> I didn't test on a working board, maybe the timeout (10 ?s) I chose is to=
o tight?
>=20
> Best regards
> Uwe
>=20
> Uwe Kleine-K?nig (2):
>   spi: imx: add error checking
>   spi: imx: add timeout to xchg_single
>=20
>  drivers/spi/imx_spi.c | 105 ++++++++++++++++++++++++++++++++++----------=
------
>  1 file changed, 72 insertions(+), 33 deletions(-)
>=20
> --=20
> 2.11.0
>=20
>=20
>=20
---598520180-186186948-1506708518=:32464
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

---598520180-186186948-1506708518=:32464--
