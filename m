Delivery-date: Thu, 03 Mar 2022 15:44:36 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nPmh2-00Gb7n-Iz
	for lore@lore.pengutronix.de; Thu, 03 Mar 2022 15:44:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nPmh0-0007v1-EE
	for lore@pengutronix.de; Thu, 03 Mar 2022 15:44:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RrPzqGVeEHlT0TnatqJkp218RhuGay89DSBlcmoThYg=; b=I3atF3q40lws+V
	xUDWddSf2BW8EBV1GAfXyz34JkdxFmI3bC1SKsqFgA/AEW2q9USWneJsSu2FzPM3qh/bp1kS2jTrk
	SaGkaYAWWRs3JWBRN30zM4bUdp05W4YJ2Udl7LH1h/c7hQYo59CPqfLVDNKqoCpZqUlDRiM66DNCa
	/jUuBoTcGUQSSjGzB3kgw4N9GWqre7K5O+jl9DTgMP3sYJviXRr5QWdMewmwq43MGO5fdtj7lQWQU
	bYlz06AR90owsK8VYherzbSesSdBXy5qONJtH9Odi3TpccwWaUXQTXgtMfbdbnO20x72Mougt+eyC
	1/7i3DNp2uD0x29cA3rQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPmfP-006fgI-HO; Thu, 03 Mar 2022 14:42:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPmfK-006fez-1B
 for barebox@lists.infradead.org; Thu, 03 Mar 2022 14:42:51 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nPmfI-0007o5-17; Thu, 03 Mar 2022 15:42:48 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nPmfH-00F7Ol-EI; Thu, 03 Mar 2022 15:42:47 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Christian Melki <christian.melki@t2data.com>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  3 Mar 2022 15:42:45 +0100
Message-Id: <20220303144246.3603311-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220303_064250_104275_55296B55 
X-CRM114-Status: GOOD (  10.99  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/2] ARM: i.MX: factor out AIPS configuration into helper
 function
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We have the exact same sequence twice for each AIPS and i.MX6ULL/SX add
another AIPS, so it's time to factor this out into a dedicated helper
function and comment it a bit more.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-imx/imx6.c | 44 +++++++++++++++++++++-------------------
 1 file changed, 23 insertions(+), 21 deletions(-)

diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
index 3ee42fd966dd..256288b25a88 100644
--- a/arch/arm/mach-imx/imx6.c
+++ b/arch/arm/mach-imx/imx6.c
@@ -31,10 +31,29 @@
 #define MX6_OCOTP_CFG0			0x410
 #define MX6_OCOTP_CFG1			0x420
 
+static void imx6_configure_aips(void __iomem *aips)
+{
+	/*
+	 * Set all MPROTx to be non-bufferable, trusted for R/W,
+	 * not forced to user-mode.
+	 */
+	writel(0x77777777, aips);
+	writel(0x77777777, aips + 0x4);
+
+	/*
+	 * Set all OPACRx to be non-bufferable, not require
+	 * supervisor privilege level for access,allow for
+	 * write access and untrusted master access.
+	 */
+	writel(0, aips + 0x40);
+	writel(0, aips + 0x44);
+	writel(0, aips + 0x48);
+	writel(0, aips + 0x4c);
+	writel(0, aips + 0x50);
+}
+
 static void imx6_init_lowlevel(void)
 {
-	void __iomem *aips1 = (void *)MX6_AIPS1_ON_BASE_ADDR;
-	void __iomem *aips2 = (void *)MX6_AIPS2_ON_BASE_ADDR;
 	bool is_imx6q = __imx6_cpu_type() == IMX6_CPUTYPE_IMX6Q;
 	bool is_imx6d = __imx6_cpu_type() == IMX6_CPUTYPE_IMX6D;
 	uint32_t val_480;
@@ -51,25 +70,8 @@ static void imx6_init_lowlevel(void)
 	if ((readl(MXC_CCM_CCGR6) & 0x3))
 		imx_reset_otg_controller(IOMEM(MX6_OTG_BASE_ADDR));
 
-	/*
-	 * Set all MPROTx to be non-bufferable, trusted for R/W,
-	 * not forced to user-mode.
-	 */
-	writel(0x77777777, aips1);
-	writel(0x77777777, aips1 + 0x4);
-	writel(0, aips1 + 0x40);
-	writel(0, aips1 + 0x44);
-	writel(0, aips1 + 0x48);
-	writel(0, aips1 + 0x4c);
-	writel(0, aips1 + 0x50);
-
-	writel(0x77777777, aips2);
-	writel(0x77777777, aips2 + 0x4);
-	writel(0, aips2 + 0x40);
-	writel(0, aips2 + 0x44);
-	writel(0, aips2 + 0x48);
-	writel(0, aips2 + 0x4c);
-	writel(0, aips2 + 0x50);
+	imx6_configure_aips(IOMEM(MX6_AIPS1_ON_BASE_ADDR));
+	imx6_configure_aips(IOMEM(MX6_AIPS2_ON_BASE_ADDR));
 
 	/* Due to hardware limitation, on MX6Q we need to gate/ungate all PFDs
 	 * to make sure PFD is working right, otherwise, PFDs may
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

