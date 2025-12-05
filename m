Delivery-date: Fri, 05 Dec 2025 15:31:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vRWqX-008EJu-2D
	for lore@lore.pengutronix.de;
	Fri, 05 Dec 2025 15:31:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vRWqX-0007Bd-5D
	for lore@pengutronix.de; Fri, 05 Dec 2025 15:31:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=o1jzWV1ah6RRzuT5G0qS9zyjuQw4RSqyt7dTucXD7vQ=; b=RekokUADNdQBmQzZU4x5W5PC63
	kYl0hroS0W2hZV/0hSlgRAq+Ahx/b3J8oZDZd39SOwtMDJF5JuWqbcjjuX5CNt0tCC1At4U44B3JB
	x9bzhNjjJAWNp9GNenFEW6w5wEFXwUJexgMpKnWnTrgePTW9M1XPICvTthAL9lWjlNg/HSP93oqo4
	KozKv4T2JZq6aLPfICkpSTBiBoSXc5veHOtQ7JL5yiSvW9huSlkThikAkhvGuMIZQWHj33e3pVR39
	ZZXkrQfDrGRNHnS03bNiZDr2x5hrVF6nAUaRgPYvkU8WLNoQPFgTe4C2e8u3lX0QmrmH/f2X3wtSj
	5hPIUIuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRWq6-00000009bCf-1rbC;
	Fri, 05 Dec 2025 14:31:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRWq3-00000009bC9-1V2K
	for barebox@lists.infradead.org;
	Fri, 05 Dec 2025 14:31:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vRWq1-00076W-Gl; Fri, 05 Dec 2025 15:31:13 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vRWq1-0048d3-14;
	Fri, 05 Dec 2025 15:31:13 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vRWq1-00000004xHi-0vqQ;
	Fri, 05 Dec 2025 15:31:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  5 Dec 2025 15:31:12 +0100
Message-ID: <20251205143112.1180264-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251205_063115_400297_7091F872 
X-CRM114-Status: UNSURE (   9.39  )
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
Subject: [PATCH] ARM: i.MX: dts: imx93-tqma9352-mba93xxla: add eeprom aliases
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

eeprom0 has an alias in the upstream device tree whereas the other
EEPROMs have not. Add aliases for the other EEPROMs. Without it the
other devices will also try to register themselves as eeprom0 which
fails with -EEXIST.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/imx93-tqma9352-mba93xxla.dts | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm/dts/imx93-tqma9352-mba93xxla.dts b/arch/arm/dts/imx93-tqma9352-mba93xxla.dts
index d1d68a55e1..4b1624cdaa 100644
--- a/arch/arm/dts/imx93-tqma9352-mba93xxla.dts
+++ b/arch/arm/dts/imx93-tqma9352-mba93xxla.dts
@@ -3,3 +3,10 @@
 #include <arm64/freescale/imx93-tqma9352-mba93xxla.dts>
 #include "imx93.dtsi"
 #include "imx93-tqma93xx.dtsi"
+
+/ {
+	aliases {
+		eeprom1 = &eeprom1;
+		eeprom2 = &eeprom2;
+	};
+};
-- 
2.47.3



