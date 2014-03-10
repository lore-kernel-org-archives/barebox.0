Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2-g21.free.fr ([2a01:e0c:1:1599::11])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WMuzu-0005US-Oo
 for barebox@lists.infradead.org; Mon, 10 Mar 2014 07:51:44 +0000
Date: Mon, 10 Mar 2014 08:51:12 +0100
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
Message-ID: <20140310085112.55b969e5@e6520eb>
In-Reply-To: <20140310070957.GG17250@pengutronix.de>
References: <20140210091152.GM17250@pengutronix.de>
 <1394188803-13456-1-git-send-email-eric@eukrea.com>
 <20140310070957.GG17250@pengutronix.de>
MIME-Version: 1.0
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
Subject: Re: [PATCH v2 1/7] sata-imx: i.MX53, use the internal 120MHz clock
 by default
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

Le Mon, 10 Mar 2014 08:09:57 +0100,
Sascha Hauer <s.hauer@pengutronix.de> a =E9crit :

> On Fri, Mar 07, 2014 at 11:39:57AM +0100, Eric B=E9nard wrote:
> > this allows SATA to work on i.MX53 QSB-R :
> > barebox@Freescale i.MX53 Quick Start-R Board:/ ata0.probe=3D1
> > imx-sata 10000000.sata: port 0: SATA link ok
> > imx-sata 10000000.sata: port 0: Spinning up device...
> > imx-sata 10000000.sata: port 0: ok.
> > ata0: registered /dev/ata0
> > =

> > before this fix the log was :
> > barebox@Freescale i.MX53 Quick Start-R Board:/ ata0.probe=3D1
> > imx-sata 10000000.sata: port 0: SATA link timeout
> > set parameter: Connection timed out
> > =

> > Signed-off-by: Eric B=E9nard <eric@eukrea.com>
> > ---
> >  drivers/ata/sata-imx.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > =

> > diff --git a/drivers/ata/sata-imx.c b/drivers/ata/sata-imx.c
> > index b7bd110..450cf4f 100644
> > --- a/drivers/ata/sata-imx.c
> > +++ b/drivers/ata/sata-imx.c
> > @@ -59,7 +59,7 @@ static int imx53_sata_init(struct imx_ahci *imx_ahci)
> >  	 */
> >  	val =3D readl(base + 0x180c);
> >  	val &=3D (0x3 << 1);
> > -	val |=3D (0x1 << 1);
> > +	val |=3D (0x2 << 1);
> >  	writel(val, base + 0x180c);
> =

> I haven't applied this yet. Have you tested this on the regular (not -R)
> variant of the board? If not I'd like to do that before applying.

I can try to test on an original QSB (with Dialog PMIC) but I don't see
why that would change as the difference between QSB and QSB-R is the
PMIC (Dialog to Freescale) and here we only change the clock source of
the SATA which has nothing to see with the PMIC.

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
