Delivery-date: Sat, 04 Mar 2023 15:16:34 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pYSgb-008me5-KV
	for lore@lore.pengutronix.de; Sat, 04 Mar 2023 15:16:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pYSga-00072t-Rh
	for lore@pengutronix.de; Sat, 04 Mar 2023 15:16:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JJ5BK0Dk7lOjDEtj8BtFFyRdx+b/sq8JoP0eOUpSKT0=; b=ii2jqIMjwLO9JDfDg+lucudxHW
	See/fGjSbuARSsb3q+cvbXh/tG1KpRRBESmsR8Cngxjfi8cLNdt3hqbK8wXIB0aFaCgAgztf0Eq6o
	a1/SbPbzW3M8ibK+CD/XWFQSlD1DGTAjptSwAGbunXd95+ppHt9Mz4dSWJS8C483bLQycmFprf2qm
	cJkOdAroX+5bwEBAFrxvh6131nKAFHXzZuSkyINc/M6vT1rj+6E4rAcstiKfjJYtk+DS2pJBzBn3G
	OVwgX4ZE0HsVZ5bKJVu8zuQ66/7Ghu/NlOPZFyS5EXMyrKtAiA8nViiIqWglrQjkKVnHnXHuSo8jb
	MEaLI+fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pYSez-0096to-UP; Sat, 04 Mar 2023 14:14:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pYSet-0096tA-Ad
	for barebox@lists.infradead.org; Sat, 04 Mar 2023 14:14:48 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pYSep-0006jT-Jk; Sat, 04 Mar 2023 15:14:43 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pYSeo-0004vW-Ch; Sat, 04 Mar 2023 15:14:42 +0100
Date: Sat, 4 Mar 2023 15:14:42 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Renaud Barbier <Renaud.Barbier@ametek.com>,
	Barebox List <barebox@lists.infradead.org>
Message-ID: <20230304141442.GA27249@pengutronix.de>
References: <BL0PR07MB566575E744709713CB99A86DECB39@BL0PR07MB5665.namprd07.prod.outlook.com>
 <2d905868-b24b-040e-ac2e-86337a1c6304@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2d905868-b24b-040e-ac2e-86337a1c6304@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230304_061447_408020_A683BEE5 
X-CRM114-Status: GOOD (  24.06  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Subject: [PATCH 1/1] ARM:lib32: add architected timer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Mar 03, 2023 at 06:31:27PM +0100, Ahmad Fatoum wrote:
> Hi,
> 
> On 03.03.23 18:05, Renaud Barbier wrote:
> > In preparation for the introduction of the LS1021A support,
> > add a specific timer support based on the LS1046A support so
> > that delays can be used in the PBL.
> > 
> > Signed-off-by: Renaud Barbier <renaud.barbier@ametek.com>
> > ---
> >  arch/arm/lib32/Makefile                |  2 ++
> >  arch/arm/lib32/arm_architected_timer.c | 17 +++++++++++++++++
> >  include/clock.h                        |  2 ++
> >  3 files changed, 21 insertions(+)
> >  create mode 100644 arch/arm/lib32/arm_architected_timer.c
> > 
> > diff --git a/arch/arm/lib32/Makefile b/arch/arm/lib32/Makefile
> > index 82507fffc0..d54fb7644c 100644
> > --- a/arch/arm/lib32/Makefile
> > +++ b/arch/arm/lib32/Makefile
> > @@ -31,6 +31,8 @@ extra-y += barebox.lds
> >  pbl-y	+= lib1funcs.o
> >  pbl-y	+= ashldi3.o
> >  pbl-y	+= div0.o
> > +pbl-$(CONFIG_CPU_32v7)	+= arm_architected_timer.o
> > +CFLAGS_arm_architected_timer.o := -march=armv7-a
> 
> Sorry, I should have been clearer before. Once you only build the
> file for ARMv7, you don't need to mess with -march=armv7-a anymore,
> see arch/arm/Makefile:
>   
>   arch-$(CONFIG_CPU_32v7) :=-D__LINUX_ARM_ARCH__=7 $(call cc-option,-march=armv7-a,-march=armv5t -Wa$(comma)-march=armv7-a)

You still need to add -march=armv7-a. CONFIG_CPU_32v7 means support for
that CPU is enabled, but that isn't necessarily the only CPU supported.
arch/arm/Makefile continues with:

arch-$(CONFIG_CPU_32v6)         :=-D__LINUX_ARM_ARCH__=6 $(call cc-option,-march=armv6,-march=armv5t -Wa$(comma)-march=armv6)
arch-$(CONFIG_CPU_32v5)         :=-D__LINUX_ARM_ARCH__=5 $(call cc-option,-march=armv5te,-march=armv4t)
arch-$(CONFIG_CPU_32v4T)        :=-D__LINUX_ARM_ARCH__=4 -march=armv4t

That means when you build barebox with CONFIG_CPU_32v7 and
CONFIG_CPU_32v4T enabled you'll end up with -march=armv4t. In that case
you still have to explicitly pass -march=armv7-a for compilation of
arm_architected_timer.c.

It's perfectly fine how Renaud did it here.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


