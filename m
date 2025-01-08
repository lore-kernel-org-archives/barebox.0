Delivery-date: Wed, 08 Jan 2025 16:37:57 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVY85-000nSl-0A
	for lore@lore.pengutronix.de;
	Wed, 08 Jan 2025 16:37:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVY83-0007M5-IY
	for lore@pengutronix.de; Wed, 08 Jan 2025 16:37:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=SxslAzjJSbb/EYHL3riRlvBeDwVE2yLF3eD/c+QF3ng=; b=pszKYCZKWIA5tpI9+qgpYsLXXS
	9cTy/p4fo1eVnrwW0LzTmzO9y/itd+wl9YySk6hpUNJWS8fKcl0MQoLveu9cF9yXuAi8/XJ9KhP6D
	1cgSKGSIKb/RgTUjPzl3ZenI3FSCPwwt4cCQpvxPA1JQLEslO2qX2H+bw+p0zswvgqYnTsONni+/o
	DQmArZu0vuxKu8T1JK5ATzQUdCflZ0xzYP5rCF4r/nY2fh8JDqoJv1Mb3amOXk8Z72Uq5+S9Qrw9v
	Z/nlQfF7wNFB3SxA3iDGWGWMF2ujt5r1jJWzu0dHHUZSp642WsteVJCdbEEC0U4+fKricBsEVzkuJ
	447OLJ2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVY7c-00000008zkT-3FMf;
	Wed, 08 Jan 2025 15:37:28 +0000
Received: from mail.inside-m2m.de ([188.68.57.244])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVY7a-00000008zk8-2w9V
	for barebox@lists.infradead.org;
	Wed, 08 Jan 2025 15:37:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=inside-m2m.de;
	s=default; t=1736350615;
	bh=+0kzK8iVyBPOmFpgIzGyQObG0OsPWeYpQmSkWxrpN/w=;
	h=Date:From:To:Subject:From;
	b=PGuZk4mjyiS8GlqDFbO7izpBjyfr1HbMviVQqz3I5KOn4QepNhA0en6ScAiFL2mRp
	 EEUeSpGPOZQzGo/n+uXIhK17rscWQI6LMjZtqiM7x6i6wJLnUdPtPaMYI5hV/uAQGq
	 oZ7+tFj4MBE2MJnjeByVGurhyrIhc/YUTgNFn1WUuEX2scInZeMfKqanE+LLBLEOMl
	 y88IqtbyMDV+aVUHyeUF2h3mAgCRxTGRRzD3c13qv6SxnBPtVufw+NQ7KuGPQgZK3Z
	 GR3qsSKqvezFbgwagaVIXfjoeqXVCMiFlrqvJqUlipKf9EMCruygRh1CIHMyk0kSs7
	 R4q4rIQMCAWZg==
Received: from hephaistos (business-90-187-159-109.pool2.vodafone-ip.de [90.187.159.109])
	(Authenticated sender: konstantin.kletschke@inside-m2m.de)
	by mail.inside-m2m.de (Postfix) with ESMTPSA id 10CA5400E1
	for <barebox@lists.infradead.org>; Wed,  8 Jan 2025 16:36:55 +0100 (CET)
Date: Wed, 8 Jan 2025 16:36:53 +0100
From: Konstantin Kletschke <konstantin.kletschke@inside-m2m.de>
To: barebox@lists.infradead.org
Message-ID: <Z36bldpLxr1x_rY2@hephaistos>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250108_073726_877795_4B77C60F 
X-CRM114-Status: UNSURE (   9.14  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: beaglebone: add delay in lowlevel.c
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Some Beaglebone Black devices are not able to cope with a warm start.
When system is powered up and booted hitting reset button (S1) or
issuing "reset" at barebox prompt the new instance of first stage gets
stuck after PLL init.

Adding a delay of ~1.8ms in lowlevel.c after PLL init solves this.

Link: https://lore.barebox.org/barebox/Z0gywL2hLcIDoLQ8@hephaistos/

Signed-off-by: Konstantin Kletschke <konstantin.kletschke at inside-m2m.de>

--- 
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
-- 




