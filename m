Delivery-date: Tue, 09 Jan 2024 10:18:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rN8FM-00A6Ai-1l
	for lore@lore.pengutronix.de;
	Tue, 09 Jan 2024 10:18:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rN8FL-0001GX-Up
	for lore@pengutronix.de; Tue, 09 Jan 2024 10:18:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=haQPmf4GZKbvcjA1Wp7by27DvkmTTpZO9PSX66YJWL8=; b=hnuA3Nc+zJkJbsBY/LfvMweRbR
	fA3DlBVygUh8Ahw6RNIvEGsBzidADlJSrWFd1YHPntHgaxdp0vwZkIcNY71DNppqyJxsVWEvQ9pC4
	K51n0+VJAJA2Muz2MRvnIOhX11BWk95dcXUJWUxSBMToHWg3ixapvosW9tg51r7cyGNtRi/w87Gdk
	MCTs2owQ4cTiCd/slHH12PVfURBjf65uXhxN6RLmFhaGgjPDyZbcVpBLyLphokNKPMB2kCSfsleuv
	MoyAuU/QLK9a+/mrJTBVPEt5K0KV14z8nC/U7KQ8L/h7x4/y70P4Bmkf7zmtDq6n7CvSxEknG7QMA
	cvSQvDTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rN8DX-007SM1-00;
	Tue, 09 Jan 2024 09:16:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rN8DR-007SIp-2k
	for barebox@lists.infradead.org;
	Tue, 09 Jan 2024 09:16:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rN8DP-0000Os-7y; Tue, 09 Jan 2024 10:16:07 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rN8DO-001RWn-Ls; Tue, 09 Jan 2024 10:16:06 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rN8DO-001A9q-1v;
	Tue, 09 Jan 2024 10:16:06 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  9 Jan 2024 10:16:02 +0100
Message-Id: <20240109091603.235589-10-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240109091603.235589-1-s.hauer@pengutronix.de>
References: <20240109091603.235589-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240109_011609_915615_6D442CE1 
X-CRM114-Status: UNSURE (   8.53  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 09/10] ARM: psci: make header self contained
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

arch/arm/include/asm/psci.h uses struct device_node, so include of.h

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/include/asm/psci.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/include/asm/psci.h b/arch/arm/include/asm/psci.h
index dbb9adfc3e..f8fc2a8471 100644
--- a/arch/arm/include/asm/psci.h
+++ b/arch/arm/include/asm/psci.h
@@ -6,6 +6,8 @@
 #ifndef __ARM_PSCI_H__
 #define __ARM_PSCI_H__
 
+#include <of.h>
+
 #define ARM_PSCI_VER(major, minor)	(((major) << 16) | (minor))
 #define ARM_PSCI_VER_1_0		ARM_PSCI_VER(1,0)
 #define ARM_PSCI_VER_0_2		ARM_PSCI_VER(0,2)
-- 
2.39.2



