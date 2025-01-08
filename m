Delivery-date: Wed, 08 Jan 2025 16:29:31 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVXzu-000nDC-1l
	for lore@lore.pengutronix.de;
	Wed, 08 Jan 2025 16:29:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVXzu-0005Oe-Gq
	for lore@pengutronix.de; Wed, 08 Jan 2025 16:29:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=honfIOjygV68Rc3h2oPUFsadt5qrQBtfpMLx7vYQUDI=; b=tnyDboDSmXGjch1mHRrSrRO2x7
	jF6v+0Yg/dmI0pgPHiZHkEycxjv/fMkPBN1cuzi6GUcnqcWjHl4kQFgWjMgy7reP1+w1VswUo43Sh
	niK0ImmWSAvo1g5Xq7QOgCw83ji6KHwgi6SHpy2YPuNzS7XpluCGQ3CgMf+2nq2IJT58vfVQ6a9n3
	rE5iZLw/TKpoOani/dS4lbFYvYEOEblni9ygnaGbFDAXMZhfV49oxyCfdVnaTzfO27cGMEBqkZFlP
	hzLJINxYj7FnWVSr4kVdEs2MamKDY4o4dcTwBuMH3sGi6+sU0zud7ppdmABYlNbVEBXCXtrPxX24q
	RH/7Xbzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVXzV-00000008yF1-116K;
	Wed, 08 Jan 2025 15:29:05 +0000
Received: from mail.inside-m2m.de ([188.68.57.244])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVXyI-00000008y04-1rR7
	for barebox@lists.infradead.org;
	Wed, 08 Jan 2025 15:27:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
	s=default; t=1736350039;
	bh=Zbkj0Q1IDj+vodk6txPHyf2zp8TpcI2lgbLM8c03jo0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EOqAAbLJXmsiTSp1U/UIp3OjGdV7rYST9vFyceZc4xj8JgqCCoGkbC7dJnn0NwsHG
	 czjZcXuRbYufMm6DNxLGgUhHfT5p8hcvfvpISiPnTZU1GnfG7FyVE0SvXGog0S2KN7
	 pkyOtOni8ysmIbUOze1AELfF+J2KzQTFuRXiTypMV+1B215mU3oG96LhuCTdGp9EYs
	 7T6vowub0OoyelBKsBdZ1gsleS6sGNYrd04+8k0FZh/6DW+wE8Jht2mMzPI4PXn4DW
	 aS+N30ps7B2gbEFHyd8WdoPeuijlKslCvEleUC3jpcHtQjeXeuPN+AqR5x824uG4BY
	 rCiJqA2YcXm9g==
Received: from hephaistos (business-90-187-159-109.pool2.vodafone-ip.de [90.187.159.109])
	(Authenticated sender: konstantin.kletschke@inside-m2m.de)
	by mail.inside-m2m.de (Postfix) with ESMTPSA id EC784400E1;
	Wed,  8 Jan 2025 16:27:18 +0100 (CET)
Date: Wed, 8 Jan 2025 16:27:17 +0100
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <Z36ZVQNtHi6krRl0@hephaistos>
References: <Z31B5rxOomVzKR_1@hephaistos>
 <Z36MZJtzptPAdmsI@pengutronix.de>
 <Z36WZYxab1bAEzFG@hephaistos>
 <63ac6399-be23-40c5-a2d4-d995999b5d7a@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <63ac6399-be23-40c5-a2d4-d995999b5d7a@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250108_072750_621676_AAA3ED54 
X-CRM114-Status: GOOD (  12.04  )
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
Cc: barebox@lists.infradead.org
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: beaglebone: add delay in lowlevel.c
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

More like this?

On Wed, Jan 08, 2025 at 04:19:49PM +0100, Ahmad Fatoum wrote:
> 
> It would be nice to have the comment more verbose. e.g. that this issue
> was observed on new Seeed-produced BBBs is an intersting info IMO.

 arch/arm/boards/beaglebone/lowlevel.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm/boards/beaglebone/lowlevel.c b/arch/arm/boards/beaglebone/lowlevel.c
index 5dc49dfaaf..7dc338d03a 100644
--- a/arch/arm/boards/beaglebone/lowlevel.c
+++ b/arch/arm/boards/beaglebone/lowlevel.c
@@ -97,6 +97,12 @@ extern char __dtb_z_am335x_boneblack_start[];
 extern char __dtb_z_am335x_bone_common_start[];
 extern char __dtb_z_am335x_bone_start[];

+static void __udelay(int us)
+{
+        volatile int i;
+       for (i = 0; i < us; i++);
+}
+
 /**
  * @brief The basic entry point for board initialization.
  *
@@ -135,6 +141,12 @@ static noinline int beaglebone_sram_init(void)
        am33xx_enable_uart0_pin_mux();
        omap_debug_ll_init();
        putc_ll('>');
+       /*
+        * Some (~5%) Beaglebone Black received from SEEED in batches
+        * after autumn 2024 require a delay to be able to warm start
+        * after reset
+        */
+       __udelay(3000);

        barebox_arm_entry(0x80000000, sdram_size, fdt);
 }






