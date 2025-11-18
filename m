Delivery-date: Tue, 18 Nov 2025 09:10:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vLGnY-002G5x-3B
	for lore@lore.pengutronix.de;
	Tue, 18 Nov 2025 09:10:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vLGnY-0004bH-FE
	for lore@pengutronix.de; Tue, 18 Nov 2025 09:10:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=/05BOPRyFoQrpcXXjzvHk2SCggangP41yOsNfkbb3CI=; b=eK+t9vTCx4c8c5dl2L56eiHAhW
	hkGK2wlbzJ4cSML5SM3nD/6KS8sg5b/37hXYFQKjO3GOkNmyWZwdOo9NTMmrvqmfKoSME6chcM+KQ
	xQuF7fDLkz0wFLt0Ouo3Iaprf2Ip3+aMPkB8pY4sbMkFK2p39SFI9CKREZkPQz5DBjb8P9++gq5o0
	yMoS0P9IJZ19VrIFvTqwNo4ngWxwZ2TxF+scbK+/MYiJadOXmWIX9X/QH+68IDpDUSE+06K+Xz16W
	cIVdO+Qt6QGdR8dC+XUjFykRHY+a5rL1bMjbRvpvEsOYvXwEHc2MgBTlLAQnfVvDoG9UfKZEPDdLN
	LYiMlGug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLGn0-000000001wA-3lVG;
	Tue, 18 Nov 2025 08:10:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLGmy-000000001vR-0CZr
	for barebox@lists.infradead.org;
	Tue, 18 Nov 2025 08:10:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vLGmw-0004Wn-Fy; Tue, 18 Nov 2025 09:10:10 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vLGmw-0012xy-0y;
	Tue, 18 Nov 2025 09:10:10 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vLGmw-0000000Gcp9-2gI3;
	Tue, 18 Nov 2025 09:10:10 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 18 Nov 2025 09:10:09 +0100
Message-ID: <20251118081009.3962235-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251118_001012_088596_8547A3CC 
X-CRM114-Status: UNSURE (   9.87  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] nvmem: Fix typo in Kconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

supprot -> support

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/nvmem/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/nvmem/Kconfig b/drivers/nvmem/Kconfig
index 7428512e28..49f90452df 100644
--- a/drivers/nvmem/Kconfig
+++ b/drivers/nvmem/Kconfig
@@ -114,7 +114,7 @@ config KVX_OTP_NV
 	  volatile regs.
 
 config STARFIVE_OTP
-	tristate "Starfive OTP Supprot"
+	tristate "Starfive OTP Support"
 	depends on SOC_STARFIVE
 	depends on OFDEVICE
 	help
-- 
2.47.3



