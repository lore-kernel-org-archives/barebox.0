Delivery-date: Mon, 05 Jan 2026 09:27:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcfwP-001SOU-2R
	for lore@lore.pengutronix.de;
	Mon, 05 Jan 2026 09:27:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcfwP-00029R-7v
	for lore@pengutronix.de; Mon, 05 Jan 2026 09:27:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=4hJAhXyyD4238X9fHGAhMgBSNUp/8R6N41p2Hggf5PQ=; b=ccUxM1Yy0nBoZbFllTAEPb/YKq
	jGZ0uuL2u9I7SPkdmkiUXk5HQQGjtM5LFiXM6MKJMCuWQbBIeH+fevxkusBS0Rg3yJk2tNzMFYwuy
	Hv9zLpeaBATm9AqJQ/RPokKGFJm6WwrpyhA6hOoy8tbwWD3XeTW99GcycSH1NAndt2R7jPRmjSry0
	NdSwm2Mtzmvhb5XYAZA+gYsRHy7uWZp2NiyOM4ypMEephDXLhbnxXMeAePBNA0H/SFj40211AGIG+
	KpF02/1I/IfnMVbVx3xZkDQommK3vMAzZbUB6Q9IlVlTPmyoKwdqpYf2PvsFw+w53F0UDwKak/w6S
	mvJy5LTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcfw1-0000000Az3s-17cb;
	Mon, 05 Jan 2026 08:27:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcfvy-0000000Az3M-046A
	for barebox@lists.infradead.org;
	Mon, 05 Jan 2026 08:27:27 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vcfvw-00023S-75; Mon, 05 Jan 2026 09:27:24 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon,  5 Jan 2026 09:27:16 +0100
Message-ID: <20260105082722.3251552-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_002726_589252_51F2133F 
X-CRM114-Status: UNSURE (   8.42  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: socfpga: replace select of undefined symbols
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

ARM_USE_COMPRESSED_DTB has been superseded by USE_COMPRESSED_DTB in the
meantime.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/mach-socfpga/Kconfig | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-socfpga/Kconfig b/arch/arm/mach-socfpga/Kconfig
index 7b05646eac0b..6f50ff36e347 100644
--- a/arch/arm/mach-socfpga/Kconfig
+++ b/arch/arm/mach-socfpga/Kconfig
@@ -23,7 +23,7 @@ config ARCH_SOCFPGA_ARRIA10
 	bool
 	select CPU_V7
 	select ARM_SMP_TWD
-	select ARM_USE_COMPRESSED_DTB
+	select USE_COMPRESSED_DTB
 	select RESET_CONTROLLER
 	select OFDEVICE
 	select OFTREE
@@ -75,7 +75,7 @@ if 64BIT
 config ARCH_SOCFPGA_AGILEX5
 	bool
 	select CPU_V8
-	select ARM_USE_COMPRESSED_DTB
+	select USE_COMPRESSED_DTB
 	select RESET_CONTROLLER
 	select RESET_SIMPLE
 	select OFDEVICE
-- 
2.47.3



