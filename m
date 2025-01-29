Delivery-date: Wed, 29 Jan 2025 16:34:59 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tdA5j-005yjo-0J
	for lore@lore.pengutronix.de;
	Wed, 29 Jan 2025 16:34:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tdA5j-0006jP-56
	for lore@pengutronix.de; Wed, 29 Jan 2025 16:34:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=o38SQeAqZKiS8+mEyvA7pOrReYQFrE2dq1klR37KGoA=; b=2x2XrMzPxrg2jgZ3oO5C6i6eiQ
	ZwkrAb6BUCyxO7y0y/HnTg0mlByju+GUpuDBf5aIjNEwd8Bx1vSwDoTwQIqqDwDiVjnEShVL32a+C
	e4stnYJ3kFEw7QsGWshx9kxMyayAvp/D7PI87V/pIfLXrwVOuCKWb0I5DP3wBb2YEXv4oKS1F1UcP
	wHCYXtfc1onBO3TkZDGUpVljmCMz+JAn/GKTKu9nJfMItzFAmq/0Iwe34dG3V27l2J7xp+1vujoYN
	GlBIOy/dLY2tg+Hf6sXdleOZV8Tl1m2Yf6q5Zu/4ujAmyIu2UYBAcRUoQXN5nNEtMOFTO9UFfz33E
	zMvXdZ0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tdA5I-00000007GaY-0dKo;
	Wed, 29 Jan 2025 15:34:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tdA4K-00000007GRs-0G31
	for barebox@lists.infradead.org;
	Wed, 29 Jan 2025 15:33:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tdA4I-0006Tm-S1; Wed, 29 Jan 2025 16:33:30 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tdA4I-002U5U-28;
	Wed, 29 Jan 2025 16:33:30 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tdA4I-00EUyC-1m;
	Wed, 29 Jan 2025 16:33:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 29 Jan 2025 16:33:29 +0100
Message-Id: <20250129153329.3455632-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250129_073332_098904_1BBFDE3C 
X-CRM114-Status: GOOD (  15.46  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: k3: am625: apply RTC i2327 erratum fixup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The AM625 RTC has an erratum which requires an early fixup to make the
RTC work under Linux. Apply the fixup. The code is based on the
corresponding U-Boot code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-k3/r5.c | 42 ++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/arch/arm/mach-k3/r5.c b/arch/arm/mach-k3/r5.c
index 6667c0d28b..dcbdd8a698 100644
--- a/arch/arm/mach-k3/r5.c
+++ b/arch/arm/mach-k3/r5.c
@@ -17,6 +17,46 @@
 #include <bootsource.h>
 #include <linux/usb/gadget-multi.h>
 
+#define RTC_BASE_ADDRESS		0x2b1f0000
+#define K3RTC_KICK0_UNLOCK_VALUE	0x83e70b13
+#define K3RTC_KICK1_UNLOCK_VALUE	0x95a4f1e0
+#define REG_K3RTC_S_CNT_LSW		0x18
+#define REG_K3RTC_KICK0			0x70
+#define REG_K3RTC_KICK1			0x74
+
+/*
+ * RTC Erratum i2327 Workaround for Silicon Revision 1
+ *
+ * Due to a bug in initial synchronization out of cold power on,
+ * IRQ status can get locked infinitely if we do not unlock RTC
+ *
+ * This workaround *must* be applied within 1 second of power on,
+ * So, this is closest point to be able to guarantee the max
+ * timing.
+ *
+ * https://www.ti.com/lit/er/sprz487c/sprz487c.pdf
+ */
+static void rtc_erratumi2327_init(void)
+{
+	void __iomem *rtc_base = IOMEM(RTC_BASE_ADDRESS);
+	u32 counter;
+
+	/*
+	 * If counter has gone past 1, nothing we can do, leave
+	 * system locked! This is the only way we know if RTC
+	 * can be used for all practical purposes.
+	 */
+	counter = readl(rtc_base + REG_K3RTC_S_CNT_LSW);
+	if (counter > 1)
+		return;
+	/*
+	 * Need to set this up at the very start
+	 * MUST BE DONE under 1 second of boot.
+	 */
+	writel(K3RTC_KICK0_UNLOCK_VALUE, rtc_base + REG_K3RTC_KICK0);
+	writel(K3RTC_KICK1_UNLOCK_VALUE, rtc_base + REG_K3RTC_KICK1);
+}
+
 #define CTRLMMR_LOCK_KICK0_UNLOCK_VAL	0x68ef3490
 #define CTRLMMR_LOCK_KICK1_UNLOCK_VAL	0xd172bc5a
 #define CTRLMMR_LOCK_KICK0		0x1008
@@ -40,6 +80,8 @@ static void mmr_unlock(uintptr_t base, u32 partition)
 
 void k3_ctrl_mmr_unlock(void)
 {
+	rtc_erratumi2327_init();
+
 	/* Unlock all WKUP_CTRL_MMR0 module registers */
 	mmr_unlock(WKUP_CTRL_MMR0_BASE, 0);
 	mmr_unlock(WKUP_CTRL_MMR0_BASE, 1);
-- 
2.39.5



