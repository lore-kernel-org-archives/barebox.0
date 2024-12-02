Delivery-date: Mon, 02 Dec 2024 09:05:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tI1QW-0030JU-2R
	for lore@lore.pengutronix.de;
	Mon, 02 Dec 2024 09:05:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tI1QW-00071b-Gf
	for lore@pengutronix.de; Mon, 02 Dec 2024 09:05:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HE36PuHAV25Mcr0RqUOum8Dih6dCJxi/swUqAdwyXk8=; b=gmtfp7kr3lo0Rxjpco/s7V68Y1
	ifZIcjm5N5c8dOC7jcSl1ErowBX6lNrrDaBW0MUlJj0FTZNB+raUCmh+rHACCVuMEuxEuwWgpAWzN
	7L409Xbgxi7h0PWpuJv2YSeqyymFYFM+W5r80P8w4AC894N2aukj8IyGuywgVeH+65A/gvsHWpK21
	Tb2ZWbqvWRuI4W2G2TAtcvP9OvSMSSXO5hVwUxPCaTnH9KWkepr2uMOJSn60q9+SiCDn2ILunT7u/
	mclmn3qzQ1bEXx2eoGCBsgpTB1jz9e0GcS3jV9jcwZdPZk9scYpgCrzwep29TUz0n4w5pNWtqNx6W
	s4fiFclA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tI1Q3-00000005Moh-1wXK;
	Mon, 02 Dec 2024 08:04:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tI1PN-00000005Ml9-0gcM
	for barebox@lists.infradead.org;
	Mon, 02 Dec 2024 08:03:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tI1PK-0006pG-6p; Mon, 02 Dec 2024 09:03:50 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tI1PH-001GEZ-1g;
	Mon, 02 Dec 2024 09:03:48 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tI1PI-00AVUY-0e;
	Mon, 02 Dec 2024 09:03:48 +0100
Date: Mon, 2 Dec 2024 09:03:48 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Sohaib Mohamed <sohaib.amhmd@gmail.com>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org,
	sohaib.radwan@loytec.com
Message-ID: <Z01p5PgQEkGLunyX@pengutronix.de>
References: <20241201212959.3196255-1-a.fatoum@pengutronix.de>
 <y3ggfeytlihua6m5dar7r6qmanmsw4kbqxgxaschrn6mcdwxis@6zdxuzv733s3>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <y3ggfeytlihua6m5dar7r6qmanmsw4kbqxgxaschrn6mcdwxis@6zdxuzv733s3>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241202_000353_201286_26238A7F 
X-CRM114-Status: GOOD (  40.35  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] ARM: omap: add two smaller MLO defconfigs for
 AM335x
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Sun, Dec 01, 2024 at 11:53:59PM +0100, Sohaib Mohamed wrote:
> Hi,
> 
> On Sun, Dec 01, 2024 at 10:29:59PM +0100, Ahmad Fatoum wrote:
> > The Beaglebone Black remains a popular board and it's not a good look to
> > have it not compile by default due to barebox getting too big.
> >
> > As we keep running into size issues with the MLO defconfig, let's accept
> > that we die bite off more than we could chew and split off the defconfigs
> > into one for SD/MMC and another for NOR/NAND and document that users
> > should prefer those instead.
> >
> > Reported-by: Sohaib Mohamed <sohaib.amhmd@gmail.com>
> > Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> > ---
> >  Documentation/boards/am335x.rst    | 28 +++++++++++++++++++++++++---
> >  arch/arm/Makefile                  |  6 ++++++
> >  common/boards/configs/nomci.config |  1 +
> >  common/boards/configs/nomtd.config |  1 +
> >  4 files changed, 33 insertions(+), 3 deletions(-)
> >  create mode 100644 common/boards/configs/nomci.config
> >  create mode 100644 common/boards/configs/nomtd.config
> >
> > diff --git a/Documentation/boards/am335x.rst b/Documentation/boards/am335x.rst
> > index f54611428bb3..ec7322a0acdf 100644
> > --- a/Documentation/boards/am335x.rst
> > +++ b/Documentation/boards/am335x.rst
> > @@ -8,9 +8,15 @@ loader from the same medium.
> >  Building barebox
> >  ----------------
> >
> > -The TI AM335x boards in barebox are covered by the ``am335x_mlo_defconfig``
> > -for the MLO and ``omap_defconfig`` for the regular barebox image. The
> > -resulting images will be placed under ``images/``:
> > +Booting with barebox on the TI AM335x is a two-stage process and unlike
> > +more recently added SoCs, requires building barebox twice, each time
> > +with a different defconfig:
> > +
> > +* ``omap_defconfig`` for the regular (second-stage) barebox image
> > +* For the MLO first-stage, either ``am335x_mlo_sdmmc_defconfig`` for
> > +  SD/eMMC or ``am335x_mlo_rawflash_defconfig`` for raw NOR/NAND.
> > +
> > +The resulting images will be placed under ``images/``:
> >
> >  ::
> >
> > @@ -30,6 +36,22 @@ resulting images will be placed under ``images/``:
> >
> >  Some boards come in different variants, make sure to pick the correct one.
> >
> > +Size Constraints
> > +^^^^^^^^^^^^^^^^
> > +
> > +As the MLO needs to setup DRAM first, it must fit into the 109KiB
> > +of available on-Chip SRAM. Depending on the boards, drivers and general
> > +features enabled by your config, barebox may exceed this size resulting
> > +in an error message during build, e.g.::
> > +
> > +  images/start_am33xx_myirtech_sram.pblb size 111800 > maximum size 111616
> > +
> > +If you run into this issue, consider disabling some unneeded config options
> > +for the MLO via ``make menuconfig`` and try again.
> > +The ``am335x_mlo_sdmmc_defconfig`` and ``am335x_mlo_rawflash_defconfig``
> > +defconfigs do just that by disabling ``CONFIG_MTD`` and ``CONFIG_MCI``,
> > +respectively.
> > +
> >  Starting and updating barebox
> >  -----------------------------
> >
> > diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> > index 6785432c52ca..7138f638651e 100644
> > --- a/arch/arm/Makefile
> > +++ b/arch/arm/Makefile
> > @@ -2,6 +2,12 @@
> >
> >  KBUILD_DEFCONFIG := multi_v8_defconfig
> >
> > +generated_configs += $(patsubst %, %_defconfig, sdmmc rawflash)
> > +am335x_mlo_sdmmc_defconfig:
> > +	$(call merge_into_defconfig,am335x_mlo_defconfig,nomtd)
> > +am335x_mlo_rawflash_defconfig:
> > +	$(call merge_into_defconfig,am335x_mlo_defconfig,nomci)
> > +
> >  KBUILD_CPPFLAGS	+= -D__ARM__ -fno-strict-aliasing
> >  # Explicitly specifiy 32-bit ARM ISA since toolchain default can be -mthumb:
> >  ifeq ($(CONFIG_CPU_64),y)
> > diff --git a/common/boards/configs/nomci.config b/common/boards/configs/nomci.config
> > new file mode 100644
> > index 000000000000..f541645cccfc
> > --- /dev/null
> > +++ b/common/boards/configs/nomci.config
> > @@ -0,0 +1 @@
> > +# CONFIG_MCI is not set
> > diff --git a/common/boards/configs/nomtd.config b/common/boards/configs/nomtd.config
> > new file mode 100644
> > index 000000000000..f29845573ae6
> > --- /dev/null
> > +++ b/common/boards/configs/nomtd.config
> > @@ -0,0 +1 @@
> > +# CONFIG_MTD is not set
> 
> Is it possible to remove also CONFIG_MACH_MYIRTECH_X335X by default, I
> still get this error:

With Ahamds patch you have to use either am335x_mlo_sdmmc_defconfig
or am335x_mlo_rawflash_defconfig depending on where you are booting
from. Did you use one of them? Even with Ahmads patch the old
am335x_mlo_defconfig is still there and still leads to an image
exceeding the size limit.

Sascha

> 
>   OBJCOPYB images/start_am33xx_myirtech_sram.pblb
>   CHKFILESIZE images/start_am33xx_myirtech_sram.pblb
>   OBJCOPYB images/start_am33xx_phytec_phycore_r2_sram.pblb
> images/start_am33xx_myirtech_sram.pblb size 111856 > maximum size 111616
> make[1]: *** [/home/smalinux/repos/bbb/barebox_standalone/barebox/images/Makefile:82: images/start_am33xx_myirtech_sram.pblb] Error 1
> make[1]: *** Deleting file 'images/start_am33xx_myirtech_sram.pblb'
> make[1]: *** Waiting for unfinished jobs....
>   CHKFILESIZE images/start_am33xx_phytec_phycore_r2_sram.pblb
> make: *** [Makefile:736: images] Error 2
> 
> 
> 
> > --
> > 2.39.5
> >
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


