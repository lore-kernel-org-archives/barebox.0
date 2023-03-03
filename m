Delivery-date: Fri, 03 Mar 2023 09:34:18 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY0rp-007L0r-M4
	for lore@lore.pengutronix.de; Fri, 03 Mar 2023 09:34:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY0ro-0000XW-HB
	for lore@pengutronix.de; Fri, 03 Mar 2023 09:34:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ayhplWqJ/W4wBeMK9tj6rAZpn/Doq6HJJpn0+/seoWY=; b=ieizo6rxZ2N4o6pLfpJ/WnuHJV
	qLOxb/V6EdOS60oFqbIs/fDc9+kW3cLOkKaEA9EDuYuCzcW71jyzBcX7a4Ggwqo0J19y91isvq9yd
	KscG68dCr4eIpUdXIm/j7RKRotdHqurzaaZlskoatMr7sZeFGwefnUBOD+BxiXEMs/wNMPZKDa0CS
	QF1mYgs2NYAvIN5b8Mt/lR8WnIO6c/z5yd4TsRq4GaTnNnuyC7CzXhe3zjYoWH3A2nD1W4Ty+Kt0Y
	TMKmaEoOhS/wIsM+rHCgqWWweot2nMSp28lSjqy+lEuRJYGilrHwUvd0kIs2h1KRTixGGvKaYb9wi
	2oO3ROrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY0q6-005PfV-Az; Fri, 03 Mar 2023 08:32:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY0pz-005PcT-Rk
	for barebox@lists.infradead.org; Fri, 03 Mar 2023 08:32:27 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pY0pt-0000QP-Qt; Fri, 03 Mar 2023 09:32:17 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pY0pt-0004Mq-IZ; Fri, 03 Mar 2023 09:32:17 +0100
Date: Fri, 3 Mar 2023 09:32:17 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20230303083217.GR32097@pengutronix.de>
References: <20230302111606.1054037-1-s.hauer@pengutronix.de>
 <20230302111606.1054037-4-s.hauer@pengutronix.de>
 <5ac1e824-d3b2-26b7-01bc-19de2755cf84@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5ac1e824-d3b2-26b7-01bc-19de2755cf84@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230303_003224_269646_5B1DD439 
X-CRM114-Status: GOOD (  25.76  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 03/13] ARM: at91: Use ENTRY_FUNCTION_HEAD
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Mar 02, 2023 at 05:40:40PM +0100, Ahmad Fatoum wrote:
> On 02.03.23 12:15, Sascha Hauer wrote:
> > Use ENTRY_FUNCTION_HEAD in the at91 boards to customize the barebox
> > image header without having to hook into a generic include file.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  arch/arm/boards/animeo_ip/lowlevel.c               |  4 ++--
> >  arch/arm/boards/at91rm9200ek/lowlevel.c            |  4 ++--
> >  arch/arm/boards/at91sam9260ek/lowlevel.c           |  6 +++---
> >  arch/arm/boards/at91sam9261ek/lowlevel_init.c      |  5 +++--
> >  arch/arm/boards/at91sam9m10g45ek/lowlevel.c        |  4 ++--
> >  arch/arm/boards/at91sam9m10ihd/lowlevel.c          |  4 ++--
> >  arch/arm/boards/at91sam9n12ek/lowlevel.c           |  4 ++--
> >  arch/arm/boards/dss11/lowlevel.c                   |  4 ++--
> >  arch/arm/boards/haba-knx/lowlevel.c                |  4 ++--
> >  arch/arm/boards/pm9261/lowlevel_init.c             |  3 ++-
> >  arch/arm/boards/pm9263/lowlevel_init.c             |  3 ++-
> >  arch/arm/boards/pm9g45/lowlevel.c                  |  4 ++--
> >  arch/arm/boards/qil-a926x/lowlevel.c               |  6 +++---
> >  arch/arm/boards/telit-evk-pro3/lowlevel.c          |  4 ++--
> >  arch/arm/boards/tny-a926x/tny_a9260_lowlevel.c     |  6 +++---
> >  arch/arm/boards/tny-a926x/tny_a9263_lowlevel.c     |  4 ++--
> >  arch/arm/boards/usb-a926x/usb_a9260_lowlevel.c     |  6 +++---
> >  arch/arm/boards/usb-a926x/usb_a9263_lowlevel.c     |  5 +++--
> >  arch/arm/mach-at91/Kconfig                         |  8 --------
> >  arch/arm/mach-at91/include/mach/barebox-arm-head.h | 12 ++++--------
> >  20 files changed, 46 insertions(+), 54 deletions(-)
> > 
> > diff --git a/arch/arm/boards/animeo_ip/lowlevel.c b/arch/arm/boards/animeo_ip/lowlevel.c
> > index 2d443f5384..f56f59fa8e 100644
> > --- a/arch/arm/boards/animeo_ip/lowlevel.c
> > +++ b/arch/arm/boards/animeo_ip/lowlevel.c
> > @@ -7,14 +7,14 @@
> >  #include <common.h>
> >  #include <init.h>
> >  
> > -#include <asm/barebox-arm-head.h>
> > +#include <mach/barebox-arm-head.h>
> >  #include <asm/barebox-arm.h>
> >  
> >  #include <mach/at91sam9_sdramc.h>
> >  #include <mach/at91sam9260.h>
> >  #include <mach/hardware.h>
> >  
> > -ENTRY_FUNCTION(start_animeo_ip, r0, r1, r2)
> > +ENTRY_FUNCTION_AT91(start_animeo_ip, r0, r1, r2)
> 
> There's SAMA5_ENTRY_FUNCTION, so it's a bit unfortunate that it's
> the other way round here.

Indeed. I didn't notice there is such a function.

I have changed the name accordingly and put it barebox-arm.h instead.
Also it seems that SAMA5_ENTRY_FUNCTION should use __barebox_at91_head
as well.

Sascha

-------------------------8<-------------------------

>From 4331e488f36330dfd163b4739e7e326889e67792 Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 2 Mar 2023 12:15:56 +0100
Subject: [PATCH] ARM: at91: Use ENTRY_FUNCTION_HEAD

Use ENTRY_FUNCTION_HEAD in the at91 boards to customize the barebox
image header without having to hook into a generic include file.

Link: https://lore.barebox.org/20230302111606.1054037-4-s.hauer@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/animeo_ip/lowlevel.c          |  5 +-
 arch/arm/boards/at91rm9200ek/lowlevel.c       |  5 +-
 arch/arm/boards/at91sam9260ek/lowlevel.c      |  7 ++-
 arch/arm/boards/at91sam9261ek/lowlevel_init.c |  6 +--
 arch/arm/boards/at91sam9m10g45ek/lowlevel.c   |  5 +-
 arch/arm/boards/at91sam9m10ihd/lowlevel.c     |  5 +-
 arch/arm/boards/at91sam9n12ek/lowlevel.c      |  5 +-
 arch/arm/boards/dss11/lowlevel.c              |  5 +-
 arch/arm/boards/haba-knx/lowlevel.c           |  5 +-
 arch/arm/boards/pm9261/lowlevel_init.c        |  4 +-
 arch/arm/boards/pm9263/lowlevel_init.c        |  4 +-
 arch/arm/boards/pm9g45/lowlevel.c             |  5 +-
 arch/arm/boards/qil-a926x/lowlevel.c          |  7 ++-
 arch/arm/boards/telit-evk-pro3/lowlevel.c     |  5 +-
 .../arm/boards/tny-a926x/tny_a9260_lowlevel.c |  7 ++-
 .../arm/boards/tny-a926x/tny_a9263_lowlevel.c |  5 +-
 .../arm/boards/usb-a926x/usb_a9260_lowlevel.c |  7 ++-
 .../arm/boards/usb-a926x/usb_a9263_lowlevel.c |  6 +--
 arch/arm/mach-at91/Kconfig                    |  8 ----
 .../mach-at91/include/mach/barebox-arm-head.h | 47 -------------------
 arch/arm/mach-at91/include/mach/barebox-arm.h | 40 +++++++++++++++-
 21 files changed, 81 insertions(+), 112 deletions(-)
 delete mode 100644 arch/arm/mach-at91/include/mach/barebox-arm-head.h

diff --git a/arch/arm/boards/animeo_ip/lowlevel.c b/arch/arm/boards/animeo_ip/lowlevel.c
index 2d443f5384..dcea35484c 100644
--- a/arch/arm/boards/animeo_ip/lowlevel.c
+++ b/arch/arm/boards/animeo_ip/lowlevel.c
@@ -7,14 +7,13 @@
 #include <common.h>
 #include <init.h>
 
-#include <asm/barebox-arm-head.h>
-#include <asm/barebox-arm.h>
+#include <mach/barebox-arm.h>
 
 #include <mach/at91sam9_sdramc.h>
 #include <mach/at91sam9260.h>
 #include <mach/hardware.h>
 
-ENTRY_FUNCTION(start_animeo_ip, r0, r1, r2)
+AT91_ENTRY_FUNCTION(start_animeo_ip, r0, r1, r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/at91rm9200ek/lowlevel.c b/arch/arm/boards/at91rm9200ek/lowlevel.c
index ba62f1116d..c6b25e830b 100644
--- a/arch/arm/boards/at91rm9200ek/lowlevel.c
+++ b/arch/arm/boards/at91rm9200ek/lowlevel.c
@@ -7,8 +7,7 @@
 #include <common.h>
 #include <init.h>
 
-#include <asm/barebox-arm-head.h>
-#include <asm/barebox-arm.h>
+#include <mach/barebox-arm.h>
 
 #include <mach/at91rm9200_mc.h>
 #include <mach/at91rm9200.h>
@@ -21,7 +20,7 @@ void static inline access_sdram(void)
 	writel(0x00000000, AT91_CHIPSELECT_1);
 }
 
-ENTRY_FUNCTION(start_at91rm9200ek, r0, r1, r2)
+AT91_ENTRY_FUNCTION(start_at91rm9200ek, r0, r1, r2)
 {
 	u32 r;
 	int i;
diff --git a/arch/arm/boards/at91sam9260ek/lowlevel.c b/arch/arm/boards/at91sam9260ek/lowlevel.c
index 81fe70278b..40810f43c9 100644
--- a/arch/arm/boards/at91sam9260ek/lowlevel.c
+++ b/arch/arm/boards/at91sam9260ek/lowlevel.c
@@ -7,14 +7,13 @@
 #include <common.h>
 #include <init.h>
 
-#include <asm/barebox-arm-head.h>
-#include <asm/barebox-arm.h>
+#include <mach/barebox-arm.h>
 
 #include <mach/at91sam9_sdramc.h>
 #include <mach/at91sam9260.h>
 #include <mach/hardware.h>
 
-ENTRY_FUNCTION(start_at91sam9260ek, r0, r1, r2)
+AT91_ENTRY_FUNCTION(start_at91sam9260ek, r0, r1, r2)
 {
 	arm_cpu_lowlevel_init();
 
@@ -25,7 +24,7 @@ ENTRY_FUNCTION(start_at91sam9260ek, r0, r1, r2)
 			  NULL);
 }
 
-ENTRY_FUNCTION(start_at91sam9g20ek, r0, r1, r2)
+AT91_ENTRY_FUNCTION(start_at91sam9g20ek, r0, r1, r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/at91sam9261ek/lowlevel_init.c b/arch/arm/boards/at91sam9261ek/lowlevel_init.c
index 47a8f21db8..17c0094522 100644
--- a/arch/arm/boards/at91sam9261ek/lowlevel_init.c
+++ b/arch/arm/boards/at91sam9261ek/lowlevel_init.c
@@ -4,7 +4,7 @@
  * Under GPLv2
  */
 
-#include <asm/barebox-arm.h>
+#include <mach/barebox-arm.h>
 
 #include <mach/at91sam926x_board_init.h>
 #include <mach/at91sam9261_matrix.h>
@@ -117,7 +117,7 @@ static void __bare_init at91sam9261ek_init(void)
 	                  NULL);
 }
 
-ENTRY_FUNCTION(start_at91sam9261ek, r0, r1, r2)
+AT91_ENTRY_FUNCTION(start_at91sam9261ek, r0, r1, r2)
 {
 	arm_cpu_lowlevel_init();
 
@@ -126,7 +126,7 @@ ENTRY_FUNCTION(start_at91sam9261ek, r0, r1, r2)
 	at91sam9261ek_init();
 }
 
-ENTRY_FUNCTION(start_at91sam9g10ek, r0, r1, r2)
+AT91_ENTRY_FUNCTION(start_at91sam9g10ek, r0, r1, r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/at91sam9m10g45ek/lowlevel.c b/arch/arm/boards/at91sam9m10g45ek/lowlevel.c
index 94732df14f..e0cd647b44 100644
--- a/arch/arm/boards/at91sam9m10g45ek/lowlevel.c
+++ b/arch/arm/boards/at91sam9m10g45ek/lowlevel.c
@@ -7,13 +7,12 @@
 #include <common.h>
 #include <init.h>
 
-#include <asm/barebox-arm-head.h>
-#include <asm/barebox-arm.h>
+#include <mach/barebox-arm.h>
 
 #include <mach/hardware.h>
 #include <mach/at91_ddrsdrc.h>
 
-ENTRY_FUNCTION(start_at91sam9m10g45ek, r0, r1, r2)
+AT91_ENTRY_FUNCTION(start_at91sam9m10g45ek, r0, r1, r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/at91sam9m10ihd/lowlevel.c b/arch/arm/boards/at91sam9m10ihd/lowlevel.c
index 1dd17ee263..4e307c8f41 100644
--- a/arch/arm/boards/at91sam9m10ihd/lowlevel.c
+++ b/arch/arm/boards/at91sam9m10ihd/lowlevel.c
@@ -7,14 +7,13 @@
 #include <common.h>
 #include <init.h>
 
-#include <asm/barebox-arm-head.h>
-#include <asm/barebox-arm.h>
+#include <mach/barebox-arm.h>
 
 #include <mach/at91_ddrsdrc.h>
 #include <mach/at91sam9g45.h>
 #include <mach/hardware.h>
 
-ENTRY_FUNCTION(start_at91sam9m10ihd, r0, r1, r2)
+AT91_ENTRY_FUNCTION(start_at91sam9m10ihd, r0, r1, r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/at91sam9n12ek/lowlevel.c b/arch/arm/boards/at91sam9n12ek/lowlevel.c
index 7366e74c3c..21a0721ecc 100644
--- a/arch/arm/boards/at91sam9n12ek/lowlevel.c
+++ b/arch/arm/boards/at91sam9n12ek/lowlevel.c
@@ -7,13 +7,12 @@
 #include <common.h>
 #include <init.h>
 
-#include <asm/barebox-arm-head.h>
-#include <asm/barebox-arm.h>
+#include <mach/barebox-arm.h>
 
 #include <mach/at91_ddrsdrc.h>
 #include <mach/hardware.h>
 
-ENTRY_FUNCTION(start_at91sam9n12ek, r0, r1, r2)
+AT91_ENTRY_FUNCTION(start_at91sam9n12ek, r0, r1, r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/dss11/lowlevel.c b/arch/arm/boards/dss11/lowlevel.c
index 86cc295e8b..427e9d39cd 100644
--- a/arch/arm/boards/dss11/lowlevel.c
+++ b/arch/arm/boards/dss11/lowlevel.c
@@ -7,14 +7,13 @@
 #include <common.h>
 #include <init.h>
 
-#include <asm/barebox-arm-head.h>
-#include <asm/barebox-arm.h>
+#include <mach/barebox-arm.h>
 
 #include <mach/at91sam9_sdramc.h>
 #include <mach/at91sam9260.h>
 #include <mach/hardware.h>
 
-ENTRY_FUNCTION(start_dss11, r0, r1, r2)
+AT91_ENTRY_FUNCTION(start_dss11, r0, r1, r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/haba-knx/lowlevel.c b/arch/arm/boards/haba-knx/lowlevel.c
index 3f810a396d..76275e440a 100644
--- a/arch/arm/boards/haba-knx/lowlevel.c
+++ b/arch/arm/boards/haba-knx/lowlevel.c
@@ -7,14 +7,13 @@
 #include <common.h>
 #include <init.h>
 
-#include <asm/barebox-arm-head.h>
-#include <asm/barebox-arm.h>
+#include <mach/barebox-arm.h>
 
 #include <mach/at91sam9_sdramc.h>
 #include <mach/at91sam9260.h>
 #include <mach/hardware.h>
 
-ENTRY_FUNCTION(start_haba_knx_lite, r0, r1, r2)
+AT91_ENTRY_FUNCTION(start_haba_knx_lite, r0, r1, r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/pm9261/lowlevel_init.c b/arch/arm/boards/pm9261/lowlevel_init.c
index 13a604ceb8..7131120e97 100644
--- a/arch/arm/boards/pm9261/lowlevel_init.c
+++ b/arch/arm/boards/pm9261/lowlevel_init.c
@@ -4,7 +4,7 @@
  * Under GPLv2
  */
 
-#include <asm/barebox-arm.h>
+#include <mach/barebox-arm.h>
 
 #include <mach/at91sam926x_board_init.h>
 #include <mach/at91sam9261_matrix.h>
@@ -111,7 +111,7 @@ static void __bare_init pm9261_init(void)
 	                  NULL);
 }
 
-ENTRY_FUNCTION(start_pm9261, r0, r1, r2)
+AT91_ENTRY_FUNCTION(start_pm9261, r0, r1, r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/pm9263/lowlevel_init.c b/arch/arm/boards/pm9263/lowlevel_init.c
index 9a690531e3..7a9993c50b 100644
--- a/arch/arm/boards/pm9263/lowlevel_init.c
+++ b/arch/arm/boards/pm9263/lowlevel_init.c
@@ -6,7 +6,7 @@
 
 #include <linux/sizes.h>
 
-#include <asm/barebox-arm.h>
+#include <mach/barebox-arm.h>
 
 #include <mach/at91sam926x_board_init.h>
 #include <mach/at91sam9263_matrix.h>
@@ -132,7 +132,7 @@ static void __bare_init pm9263_board_init(void)
 	                  NULL);
 }
 
-ENTRY_FUNCTION(start_pm9263, r0, r1, r2)
+AT91_ENTRY_FUNCTION(start_pm9263, r0, r1, r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/pm9g45/lowlevel.c b/arch/arm/boards/pm9g45/lowlevel.c
index 096bbc485a..017c8d9b12 100644
--- a/arch/arm/boards/pm9g45/lowlevel.c
+++ b/arch/arm/boards/pm9g45/lowlevel.c
@@ -7,14 +7,13 @@
 #include <common.h>
 #include <init.h>
 
-#include <asm/barebox-arm-head.h>
-#include <asm/barebox-arm.h>
+#include <mach/barebox-arm.h>
 
 #include <mach/at91_ddrsdrc.h>
 
 #include <mach/hardware.h>
 
-ENTRY_FUNCTION(start_pm9g45, r0, r1, r2)
+AT91_ENTRY_FUNCTION(start_pm9g45, r0, r1, r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/qil-a926x/lowlevel.c b/arch/arm/boards/qil-a926x/lowlevel.c
index 3a233fcf17..f21d8b8057 100644
--- a/arch/arm/boards/qil-a926x/lowlevel.c
+++ b/arch/arm/boards/qil-a926x/lowlevel.c
@@ -7,14 +7,13 @@
 #include <common.h>
 #include <init.h>
 
-#include <asm/barebox-arm-head.h>
-#include <asm/barebox-arm.h>
+#include <mach/barebox-arm.h>
 
 #include <mach/at91sam9_sdramc.h>
 #include <mach/at91sam9260.h>
 #include <mach/hardware.h>
 
-ENTRY_FUNCTION(start_qil_a926x, r0, r1, r2)
+AT91_ENTRY_FUNCTION(start_qil_a926x, r0, r1, r2)
 {
 	arm_cpu_lowlevel_init();
 
@@ -25,7 +24,7 @@ ENTRY_FUNCTION(start_qil_a926x, r0, r1, r2)
 			  NULL);
 }
 
-ENTRY_FUNCTION(start_qil_a9g20, r0, r1, r2)
+AT91_ENTRY_FUNCTION(start_qil_a9g20, r0, r1, r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/telit-evk-pro3/lowlevel.c b/arch/arm/boards/telit-evk-pro3/lowlevel.c
index 3a613a65a8..bded2ebf5d 100644
--- a/arch/arm/boards/telit-evk-pro3/lowlevel.c
+++ b/arch/arm/boards/telit-evk-pro3/lowlevel.c
@@ -7,14 +7,13 @@
 #include <common.h>
 #include <init.h>
 
-#include <asm/barebox-arm-head.h>
-#include <asm/barebox-arm.h>
+#include <mach/barebox-arm.h>
 
 #include <mach/at91sam9_sdramc.h>
 #include <mach/at91sam9260.h>
 #include <mach/hardware.h>
 
-ENTRY_FUNCTION(start_telit_evk_pro3, r0, r1, r2)
+AT91_ENTRY_FUNCTION(start_telit_evk_pro3, r0, r1, r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/tny-a926x/tny_a9260_lowlevel.c b/arch/arm/boards/tny-a926x/tny_a9260_lowlevel.c
index e78e93528d..aad5b3de59 100644
--- a/arch/arm/boards/tny-a926x/tny_a9260_lowlevel.c
+++ b/arch/arm/boards/tny-a926x/tny_a9260_lowlevel.c
@@ -7,14 +7,13 @@
 #include <common.h>
 #include <init.h>
 
-#include <asm/barebox-arm-head.h>
-#include <asm/barebox-arm.h>
+#include <mach/barebox-arm.h>
 
 #include <mach/at91sam9_sdramc.h>
 #include <mach/at91sam9260.h>
 #include <mach/hardware.h>
 
-ENTRY_FUNCTION(start_tny_a9260, r0, r1, r2)
+AT91_ENTRY_FUNCTION(start_tny_a9260, r0, r1, r2)
 {
 	arm_cpu_lowlevel_init();
 
@@ -25,7 +24,7 @@ ENTRY_FUNCTION(start_tny_a9260, r0, r1, r2)
 			  NULL);
 }
 
-ENTRY_FUNCTION(start_tny_a9g20, r0, r1, r2)
+AT91_ENTRY_FUNCTION(start_tny_a9g20, r0, r1, r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/tny-a926x/tny_a9263_lowlevel.c b/arch/arm/boards/tny-a926x/tny_a9263_lowlevel.c
index b8b813ef12..34aa10a12a 100644
--- a/arch/arm/boards/tny-a926x/tny_a9263_lowlevel.c
+++ b/arch/arm/boards/tny-a926x/tny_a9263_lowlevel.c
@@ -7,8 +7,7 @@
 #include <common.h>
 #include <init.h>
 
-#include <asm/barebox-arm-head.h>
-#include <asm/barebox-arm.h>
+#include <mach/barebox-arm.h>
 
 #include <mach/at91sam926x_board_init.h>
 #include <mach/at91sam9263_matrix.h>
@@ -118,7 +117,7 @@ static void __bare_init tny_a9263_init(void)
 	                  NULL);
 }
 
-ENTRY_FUNCTION(start_tny_a9263, r0, r1, r2)
+AT91_ENTRY_FUNCTION(start_tny_a9263, r0, r1, r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/usb-a926x/usb_a9260_lowlevel.c b/arch/arm/boards/usb-a926x/usb_a9260_lowlevel.c
index 7e3ee80ab7..c2c8d0f7fe 100644
--- a/arch/arm/boards/usb-a926x/usb_a9260_lowlevel.c
+++ b/arch/arm/boards/usb-a926x/usb_a9260_lowlevel.c
@@ -7,14 +7,13 @@
 #include <common.h>
 #include <init.h>
 
-#include <asm/barebox-arm-head.h>
-#include <asm/barebox-arm.h>
+#include <mach/barebox-arm.h>
 
 #include <mach/at91sam9_sdramc.h>
 #include <mach/at91sam9260.h>
 #include <mach/hardware.h>
 
-ENTRY_FUNCTION(start_usb_a9260, r0, r1, r2)
+AT91_ENTRY_FUNCTION(start_usb_a9260, r0, r1, r2)
 {
 	arm_cpu_lowlevel_init();
 
@@ -25,7 +24,7 @@ ENTRY_FUNCTION(start_usb_a9260, r0, r1, r2)
 			  NULL);
 }
 
-ENTRY_FUNCTION(start_usb_a9g20, r0, r1, r2)
+AT91_ENTRY_FUNCTION(start_usb_a9g20, r0, r1, r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/usb-a926x/usb_a9263_lowlevel.c b/arch/arm/boards/usb-a926x/usb_a9263_lowlevel.c
index 0597321084..4b0a80fa83 100644
--- a/arch/arm/boards/usb-a926x/usb_a9263_lowlevel.c
+++ b/arch/arm/boards/usb-a926x/usb_a9263_lowlevel.c
@@ -6,7 +6,7 @@
 
 #include <linux/sizes.h>
 
-#include <asm/barebox-arm.h>
+#include <mach/barebox-arm.h>
 
 #include <mach/at91sam926x_board_init.h>
 #include <mach/at91sam9263_matrix.h>
@@ -122,7 +122,7 @@ static void __bare_init usb_a9263_init(bool has_mem_128m)
 	                  NULL);
 }
 
-ENTRY_FUNCTION(start_usb_a9263, r0, r1, r2)
+AT91_ENTRY_FUNCTION(start_usb_a9263, r0, r1, r2)
 {
 	arm_cpu_lowlevel_init();
 
@@ -131,7 +131,7 @@ ENTRY_FUNCTION(start_usb_a9263, r0, r1, r2)
 	usb_a9263_init(false);
 }
 
-ENTRY_FUNCTION(start_usb_a9263_128m, r0, r1, r2)
+AT91_ENTRY_FUNCTION(start_usb_a9263_128m, r0, r1, r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index caf296dfcd..b803a1185d 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -92,7 +92,6 @@ config SOC_SAMA5D2
 	select HAVE_AT91_I2S_MUX_CLK
 	select PINCTRL_AT91PIO4
 	select HAS_MACB
-	select HAVE_MACH_ARM_HEAD
 	select HAVE_AT91_DDRAMC
 
 config SOC_SAMA5D3
@@ -105,7 +104,6 @@ config SOC_SAMA5D3
 	select HAVE_AT91_UTMI
 	select PINCTRL_AT91
 	select HAS_MACB
-	select HAVE_MACH_ARM_HEAD
 
 config SOC_SAMA5D4
 	bool
@@ -118,7 +116,6 @@ config SOC_SAMA5D4
 	select HAVE_AT91_UTMI
 	select PINCTRL_AT91
 	select HAS_MACB
-	select HAVE_MACH_ARM_HEAD
 
 config SOC_SAM9X60
 	bool
@@ -159,7 +156,6 @@ config SOC_AT91SAM9260
 	select SOC_AT91SAM9
 	select HAS_MACB
 	select PINCTRL_AT91
-	select HAVE_MACH_ARM_HEAD
 	help
 	  Select this if you are using one of Atmel's AT91SAM9260, AT91SAM9XE
 	  or AT91SAM9G20 SoC.
@@ -169,7 +165,6 @@ config SOC_AT91SAM9261
 	select SOC_AT91SAM9
 	select PINCTRL_AT91
 	select HAVE_AT91_LOAD_BAREBOX_SRAM
-	select HAVE_MACH_ARM_HEAD
 	help
 	  Select this if you are using one of Atmel's AT91SAM9261 or AT91SAM9G10 SoC.
 
@@ -178,7 +173,6 @@ config SOC_AT91SAM9263
 	select SOC_AT91SAM9
 	select HAS_MACB
 	select HAVE_AT91_LOAD_BAREBOX_SRAM
-	select HAVE_MACH_ARM_HEAD
 	select PINCTRL_AT91
 
 config SOC_AT91SAM9G45
@@ -186,7 +180,6 @@ config SOC_AT91SAM9G45
 	select SOC_AT91SAM9
 	select HAS_MACB
 	select PINCTRL_AT91
-	select HAVE_MACH_ARM_HEAD
 	help
 	  Select this if you are using one of Atmel's AT91SAM9G45 family SoC.
 	  This support covers AT91SAM9G45, AT91SAM9G46, AT91SAM9M10 and AT91SAM9M11.
@@ -209,7 +202,6 @@ config SOC_AT91SAM9N12
 	bool
 	select SOC_AT91SAM9
 	select PINCTRL_AT91
-	select HAVE_MACH_ARM_HEAD
 	help
 	  Select this if you are using Atmel's AT91SAM9N12 SoC.
 
diff --git a/arch/arm/mach-at91/include/mach/barebox-arm-head.h b/arch/arm/mach-at91/include/mach/barebox-arm-head.h
deleted file mode 100644
index 4a95f89fc9..0000000000
--- a/arch/arm/mach-at91/include/mach/barebox-arm-head.h
+++ /dev/null
@@ -1,47 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-
-#ifndef __MACH_ARM_HEAD_H
-#define __MACH_ARM_HEAD_H
-
-#ifdef CONFIG_AT91_LOAD_BAREBOX_SRAM
-#define AT91_EXV6	".word _barebox_image_size\n"
-#else
-#define AT91_EXV6	".word _barebox_bare_init_size\n"
-#endif
-
-static inline void __barebox_arm_head(void)
-{
-	__asm__ __volatile__ (
-#ifdef CONFIG_THUMB2_BAREBOX
-#error Thumb2 is not supported
-#else
-		"b 2f\n"
-		"1: b 1b\n"
-		"1: b 1b\n"
-		"1: b 1b\n"
-		"1: b 1b\n"
-		AT91_EXV6				/* image size to load by the bootrom */
-		"1: b 1b\n"
-		"1: b 1b\n"
-#endif
-		".asciz \"barebox\"\n"
-		".word _text\n"				/* text base. If copied there,
-							 * barebox can skip relocation
-							 */
-		".word _barebox_image_size\n"		/* image size to copy */
-		".rept 8\n"
-		".word 0x55555555\n"
-		".endr\n"
-		"2:\n"
-	);
-}
-
-static inline void barebox_arm_head(void)
-{
-	__barebox_arm_head();
-	__asm__ __volatile__ (
-		"b barebox_arm_reset_vector\n"
-	);
-}
-
-#endif /* __MACH_ARM_HEAD_H */
diff --git a/arch/arm/mach-at91/include/mach/barebox-arm.h b/arch/arm/mach-at91/include/mach/barebox-arm.h
index 707444180c..a0c51118c9 100644
--- a/arch/arm/mach-at91/include/mach/barebox-arm.h
+++ b/arch/arm/mach-at91/include/mach/barebox-arm.h
@@ -7,6 +7,41 @@
 #include <mach/sama5d3.h>
 #include <mach/sama5d4.h>
 
+#ifdef CONFIG_AT91_LOAD_BAREBOX_SRAM
+#define AT91_EXV6	".word _barebox_image_size\n"
+#else
+#define AT91_EXV6	".word _barebox_bare_init_size\n"
+#endif
+
+#include <linux/compiler.h>
+
+static __always_inline void __barebox_at91_head(void)
+{
+	__asm__ __volatile__ (
+#ifdef CONFIG_THUMB2_BAREBOX
+#error Thumb2 is not supported
+#else
+		"b 2f\n"
+		"1: b 1b\n"
+		"1: b 1b\n"
+		"1: b 1b\n"
+		"1: b 1b\n"
+		AT91_EXV6				/* image size to load by the bootrom */
+		"1: b 1b\n"
+		"1: b 1b\n"
+#endif
+		".asciz \"barebox\"\n"
+		".word _text\n"				/* text base. If copied there,
+							 * barebox can skip relocation
+							 */
+		".word _barebox_image_size\n"		/* image size to copy */
+		".rept 8\n"
+		".word 0x55555555\n"
+		".endr\n"
+		"2:\n"
+	);
+}
+
 #define SAMA5_ENTRY_FUNCTION(name, stack_top, r4)				\
 	void name (u32 r0, u32 r1, u32 r2, u32 r3);				\
 										\
@@ -16,7 +51,7 @@
 				(u32 r0, u32 r1, u32 r2, u32 r3)		\
 		{								\
 			register u32 r4 asm("r4");				\
-			__barebox_arm_head();					\
+			__barebox_at91_head();					\
 			if (stack_top)						\
 				arm_setup_stack(stack_top);			\
 			__##name(r4);						\
@@ -33,4 +68,7 @@
 #define SAMA5D4_ENTRY_FUNCTION(name, r4)					\
 	SAMA5_ENTRY_FUNCTION(name, SAMA5D4_SRAM_BASE + SAMA5D4_SRAM_SIZE, r4)
 
+#define AT91_ENTRY_FUNCTION(fn, r0, r1, r2)					\
+	ENTRY_FUNCTION_HEAD(fn, __barebox_at91_head, r0, r1, r2)
+
 #endif
-- 
2.30.2

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


