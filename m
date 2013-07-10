Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ux1zE-0007sU-Gi
 for barebox@lists.infradead.org; Wed, 10 Jul 2013 21:31:45 +0000
Date: Wed, 10 Jul 2013 23:31:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130710213122.GB14452@pengutronix.de>
References: <1373361802-31080-1-git-send-email-t.gamez@phytec.de>
 <1373361802-31080-8-git-send-email-t.gamez@phytec.de>
 <51DD0B5C.3010002@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <51DD0B5C.3010002@phytec.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCHv2 08/12] PCM051: Add first stage support
To: Teresa Gamez <t.gamez@phytec.de>
Cc: barebox@lists.infradead.org

Hi Teresa,

On Wed, Jul 10, 2013 at 09:21:00AM +0200, Teresa Gamez wrote:
> Am 09.07.2013 11:23, schrieb Teresa G=E1mez:
> =

> Hello Sascha,
> =

> >From: Shravan kumar <shravan.k@phytec.in>
> >
> >This patch adds first stage support for PCM051.
> >
> >Signed-off-by: Shravan kumar <shravan.k@phytec.in>
> >Signed-off-by: Teresa G=E1mez <t.gamez@phytec.de>
> >---
> >Changes in v2:
> >- fixed aligment and register adress
> >   order in mach/am33xx-silicon.h
> >
> >  arch/arm/boards/pcm051/board.c                   |    1 +
> >  arch/arm/boards/pcm051/env/boot/sd               |    2 +-
> >  arch/arm/boards/pcm051/lowlevel.c                |  206 ++++++++++++++=
++++++++
> >  arch/arm/configs/pcm051_mlo_defconfig            |   33 ++++
> >  arch/arm/mach-omap/include/mach/am33xx-silicon.h |   13 ++
> >  scripts/mk-am35xx-spi-image.c                    |    2 +-
> >  6 files changed, 255 insertions(+), 2 deletions(-)
> >  create mode 100644 arch/arm/configs/pcm051_mlo_defconfig
> >
> >
> >  /* Ethernet MAC ID from EFuse */
> >diff --git a/scripts/mk-am35xx-spi-image.c b/scripts/mk-am35xx-spi-image=
.c
> >index 74e79db..b13568a 100644
> >--- a/scripts/mk-am35xx-spi-image.c
> >+++ b/scripts/mk-am35xx-spi-image.c
> >@@ -63,7 +63,7 @@ int main(int argc, char *argv[])
> >  	int opt;
> >  	off_t pos;
> >  	size_t size;
> >-	uint32_t addr =3D 0x40200000;
> >+	uint32_t addr =3D 0x402F0400;
> >  	uint32_t temp;
> >  	while((opt =3D getopt(argc, argv, "a:")) !=3D -1) {
> =

> This last hunk has accidentally slipped in here.
> Could you remove it?

No problem, I removed it.

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
