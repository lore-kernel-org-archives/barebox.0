Delivery-date: Wed, 06 May 2026 11:08:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKYEg-001Xg2-1m
	for lore@lore.pengutronix.de;
	Wed, 06 May 2026 11:08:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKYEb-00014y-WC
	for lore@pengutronix.de; Wed, 06 May 2026 11:08:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qAqSXc0Rg08X8g6VHXGp3GG/tFt/CogvJLja5NGaKMQ=; b=jDQhgfnbjqzhYuhxxDEPP+mGSH
	vTj5x6nNT5rRYutZg5V/r4WZx31vCv0ne/HwnvWNkpGfUWbwK14jlaivuY7dXrWi2ctog3/XL7CH1
	fBs0CrkPdZB65S63wLIdkAUomqvKNSYCpgzO2GXT6bkgC81we9TE1t4LXS5afUgqm8/MgjXSJUA+p
	XBhYd4wkfrACcuHtEn2wMIyxGK8Y5pNrAjrz3VdYUalHMM3iOzR7RMulbQAPK06VbI98y/H0KavHH
	KCFxYHAY3098W3Wk3teW6SSNUQdjA8yQSjEQsXnZK+yTwS906Jd0D2zkuPwcaSqMyQ0rWgpClDyXF
	pv2khJxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKYCy-00000000Htw-0Dek;
	Wed, 06 May 2026 09:06:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKYCv-00000000Hqf-3glf
	for barebox@lists.infradead.org;
	Wed, 06 May 2026 09:06:17 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wKYCs-0008RK-1A; Wed, 06 May 2026 11:06:14 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Wed, 06 May 2026 11:06:07 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260506-socfpga-agilex5-qspi-v1-1-94def85c1b80@pengutronix.de>
References: <20260506-socfpga-agilex5-qspi-v1-0-94def85c1b80@pengutronix.de>
In-Reply-To: <20260506-socfpga-agilex5-qspi-v1-0-94def85c1b80@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260506_020617_937164_4E79B6F7 
X-CRM114-Status: UNSURE (   7.82  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/6] arm: socfpga: agilex5: add missing include
 soc64-regs.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

soc64-firewall.h defines macros that use register values that are
defined in soc64-regs.h. Include the appropriate header to make sure
that the definitions are available and users don't have to include the
headers in the correct order.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 include/mach/socfpga/soc64-firewall.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/mach/socfpga/soc64-firewall.h b/include/mach/socfpga/soc64-firewall.h
index 659b84ca1f3f..0187e908594c 100644
--- a/include/mach/socfpga/soc64-firewall.h
+++ b/include/mach/socfpga/soc64-firewall.h
@@ -9,6 +9,8 @@
 
 #include <linux/bitops.h>
 
+#include <mach/socfpga/soc64-regs.h>
+
 struct socfpga_firwall_l4_per {
 	u32	nand;		/* 0x00 */
 	u32	nand_data;

-- 
2.47.3



