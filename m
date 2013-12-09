Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 19.mo5.mail-out.ovh.net ([46.105.35.78]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vq3mZ-0002GC-6K
 for barebox@lists.infradead.org; Mon, 09 Dec 2013 16:34:07 +0000
Received: from mail31.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 39D6CFF853F
 for <barebox@lists.infradead.org>; Mon,  9 Dec 2013 17:35:35 +0100 (CET)
Date: Mon, 9 Dec 2013 17:33:53 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20131209163353.GO27628@ns203013.ovh.net>
References: <1386409020-11914-1-git-send-email-eric@eukrea.com>
 <1386409020-11914-7-git-send-email-eric@eukrea.com>
 <20131209133125.GJ27628@ns203013.ovh.net>
 <20131209155351.43504839@e6520eb>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20131209155351.43504839@e6520eb>
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
Subject: Re: [PATCH 7/7] samsa5d3xek: update defconfig
To: Eric B??nard <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On 15:53 Mon 09 Dec     , Eric B??nard wrote:
> Hi Jean-Christophe,
> =

> Le Mon, 9 Dec 2013 14:31:25 +0100,
> Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> a =E9crit :
> =

> > more comment here
> > On 10:37 Sat 07 Dec     , Eric B??nard wrote:
> > > Signed-off-by: Eric B=E9nard <eric@eukrea.com>
> > > ---
> > >  arch/arm/configs/sama5d3xek_defconfig | 9 ++++++---
> > >  1 file changed, 6 insertions(+), 3 deletions(-)
> > > =

> > > diff --git a/arch/arm/configs/sama5d3xek_defconfig b/arch/arm/configs=
/sama5d3xek_defconfig
> > > index 970ded5..bd331c3 100644
> > > --- a/arch/arm/configs/sama5d3xek_defconfig
> > > +++ b/arch/arm/configs/sama5d3xek_defconfig
> > > @@ -41,8 +41,7 @@ CONFIG_CMD_UIMAGE=3Dy
> > >  CONFIG_CMD_RESET=3Dy
> > >  CONFIG_CMD_GO=3Dy
> > >  CONFIG_CMD_OFTREE=3Dy
> > > -CONFIG_CMD_MTEST=3Dy
> > > -CONFIG_CMD_MTEST_ALTERNATIVE=3Dy
> > > +CONFIG_CMD_MEMTEST=3Dy
> > why?
> =

> because MTEST became MEMTEST so as you initialy enabled it, I updated
> the defconfig to keep the same functionnality.
> mtest was removed in :
> 47f9da43801d7a345569a35d23cd49eb355a891a
> memtest was added in :
> 842308e29774c577291cae09a8a71ecc3b708b92

so put this in the commit messasge

Best Regards,
J.
> =

> > >  CONFIG_CMD_SPLASH=3Dy
> > >  CONFIG_CMD_TIMEOUT=3Dy
> > >  CONFIG_CMD_PARTITION=3Dy
> > > @@ -65,13 +64,17 @@ CONFIG_I2C_GPIO=3Dy
> > >  CONFIG_MTD=3Dy
> > >  # CONFIG_MTD_OOB_DEVICE is not set
> > >  CONFIG_MTD_M25P80=3Dy
> > > +CONFIG_DRIVER_CFI=3Dy
> > > +# CONFIG_DRIVER_CFI_BANK_WIDTH_1 is not set
> > > +# CONFIG_DRIVER_CFI_BANK_WIDTH_4 is not set
> > > +CONFIG_CFI_BUFFER_WRITE=3Dy
> > >  CONFIG_NAND=3Dy
> > >  # CONFIG_NAND_ECC_SOFT is not set
> > >  # CONFIG_NAND_ECC_HW_SYNDROME is not set
> > >  # CONFIG_NAND_ECC_HW_NONE is not set
> > >  CONFIG_NAND_ATMEL=3Dy
> > >  CONFIG_NAND_ATMEL_PMECC=3Dy
> > > -CONFIG_UBI=3Dy
> > > +CONFIG_MTD_UBI=3Dy
> =

> same thing here.
> =

> Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
