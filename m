Delivery-date: Mon, 04 Jul 2022 11:26:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o8ILA-005QVr-TO
	for lore@lore.pengutronix.de; Mon, 04 Jul 2022 11:26:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o8ILC-0007ja-KD
	for lore@pengutronix.de; Mon, 04 Jul 2022 11:26:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Usw+GOXNotpIZy26GcYgPVK5aKtrNn5xFJAYiDeusBI=; b=Hom6pblg3bPa+TOdRw+HGZsyY8
	ZmqvYSlry+wa4iQ9UHc8o5mf1rxojh+yDyWacRhox3VXvW0iIclQllGoyyNheq5oF2z3+0a9IzKzd
	BJf2cGtkJrrfC56G0bEasoSEg2RRf2obgQgBztiUTBFpqh0araVrNYRfv2ujbU04Mp9Xk9sksEuAE
	jxdX/Xm2ZxTEBs4K8sDQtgeYAncli5mla6LkGHg4NsA+xLPnUi1igZFssy+36CAda3aOTEcJ9oVNF
	Izx5PwesWumlHVyYGvMc1ciIXi3HBkZyb34GVzJJTtS9jQpvf3E8h19XC9lPB5PznQaTjm7NV14dC
	FqY0jSCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8IJY-006QcN-8M; Mon, 04 Jul 2022 09:24:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8IJT-006QaG-IP
	for barebox@lists.infradead.org; Mon, 04 Jul 2022 09:24:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1o8IJP-0007Oc-Pf; Mon, 04 Jul 2022 11:24:11 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1o8IJL-004LIW-Iv; Mon, 04 Jul 2022 11:24:11 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1o8IJO-000Wki-Fq; Mon, 04 Jul 2022 11:24:10 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: lst@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  4 Jul 2022 11:24:08 +0200
Message-Id: <20220704092409.124836-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220704_022415_641531_EE285FE7 
X-CRM114-Status: GOOD (  11.38  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/2] ARM: i.MX8M: select ARM_USE_COMPRESSED_DTB for all boards
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

With DDR firmware, ARM trusted firmware and possibly OP-TEE, we are
already quite short on SRAM, so it makes sense to always use compressed
device trees on the i.MX8M to shift some of the size from PBL into
barebox proper. Select ARM_USE_COMPRESSED_DTB for the i.MX8M boards.

Follow-up commit will touch all i.MX8M boards we have in tree that do
not yet make use of this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index c9f03f8aaddd..83ea0059ca35 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -183,6 +183,7 @@ config ARCH_IMX8M
 	select HW_HAS_PCI
 	select IMX8M_DRAM
 	select PBL_VERIFY_PIGGY if HABV4
+	select ARM_USE_COMPRESSED_DTB
 
 config ARCH_IMX8MM
 	select ARCH_IMX8M
@@ -514,7 +515,6 @@ config MACH_ZII_IMX8MQ_DEV
 	select ARM_SMCCC
 	select MCI_IMX_ESDHC_PBL
 	select MACH_ZII_COMMON
-	select ARM_USE_COMPRESSED_DTB
 
 config MACH_ZII_VF610_DEV
 	bool "ZII VF610 Dev Family"
@@ -574,7 +574,6 @@ config MACH_NXP_IMX8MN_EVK
 	select MCI_IMX_ESDHC_PBL
 	select IMX8M_DRAM
 	select I2C_IMX_EARLY
-	select ARM_USE_COMPRESSED_DTB
 
 config MACH_NXP_IMX8MP_EVK
 	bool "NXP i.MX8MP EVK Board"
-- 
2.30.2



