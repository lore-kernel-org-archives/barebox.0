Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 68.mail-out.ovh.net ([91.121.185.69])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OsyH6-00040f-Od
	for barebox@lists.infradead.org; Tue, 07 Sep 2010 13:31:50 +0000
Date: Tue, 7 Sep 2010 15:31:00 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20100907133100.GF30509@game.jcrosoft.org>
References: <AANLkTi=F9yCBrpyYOdts_-Up3ywCMh4=MSa0iwjLLavh@mail.gmail.com>
	<201009071401.47921.jbe@pengutronix.de>
	<AANLkTinym9bzzP8J7OmY=kauzEHdOVgVsMJ78Yyph2-t@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AANLkTinym9bzzP8J7OmY=kauzEHdOVgVsMJ78Yyph2-t@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: a9m2440_defconfig failed to compile
To: Belisko Marek <marek.belisko@gmail.com>
Cc: barebox@lists.infradead.org

On 14:59 Tue 07 Sep     , Belisko Marek wrote:
> On Tue, Sep 7, 2010 at 2:01 PM, Juergen Beisert <jbe@pengutronix.de> wrote:
> > Belisko Marek wrote:
> >> Hi,
> >>
> >> following steps lead to compilation error (barebox v2010.09.0):
> >>
> >> 1. make a9m2440_defconfig ARCH=arm
> >> 2. make CROSS_COMPILE=arm-linux- ARCH=arm
> >>
> >> error: arch/arm/boards/a9m2440/built-in.o: In function `nand_boot':
> >> /home/open-nandra/projects/barebox/arch/arm/boards/a9m2440/a9m2440.c:183:
> >> undefined reference to `s3c24x0_nand_load_image'
> >>
> >> It seems in Kconfig for mach-s3c24xx is selected NAND_S3C24X0 but
> >> missing CONFIG_MTD and CONFIG_NAND to properly compile
> >> nand driver for s3c24xx.
> >>
> >> Could I send a patch with updated defconfig or exist better solution?
> >
> > Should be repaired in the menu and the source files. The defconfig is not the
> > correct location to fix it. There are dependencies between these components
> > that must be part of the menu.
> Not sure which menu type do you think?
Kconfig file

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
