Delivery-date: Mon, 16 Mar 2026 18:21:49 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2BdV-001VfD-19
	for lore@lore.pengutronix.de;
	Mon, 16 Mar 2026 18:21:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2BdU-00050M-QM
	for lore@pengutronix.de; Mon, 16 Mar 2026 18:21:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Kltz4GRnBhTQX63/3tPujviQBWEgno+JTDSSIETlfDU=; b=BsJ7VbdkkPRh6MDa8nvatA0dF1
	N5ZY3trltTO+8FOWPvTMkVOtvNUHVTl8T2OmRJu3oedbSBsMwEexnRmkk90KaDDPsTv3Cf0/NKj7m
	bCzYItt2cUc0lPgRCmpNYcPLYeKRSUWDXzV1VePwspBheHXvXKtQsApaRSdkek930EhHQDaesE6dz
	r1Q9E+Ce4ImTgKFGD2BubmJ3ptEETQMWgqq8+BlhdG0vOk7zoPTSv9O/sdWeg1fesSjF9gO+WTwV7
	HxHClLBqOzwQQWLBcSo3j82NGeGlpTL9Eoq6hjLsnahzMDUyPzxSKwl2yCy+HQ58yV4s5SGXagq14
	gNbWD/8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2BdA-00000004Y9I-2KxR;
	Mon, 16 Mar 2026 17:21:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2Bd8-00000004Y5a-26oI
	for barebox@lists.infradead.org;
	Mon, 16 Mar 2026 17:21:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w2Bcz-0004fb-0j; Mon, 16 Mar 2026 18:21:17 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w2Bcy-000bi1-2N;
	Mon, 16 Mar 2026 18:21:16 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w2Bcy-0000000AaeX-2avZ;
	Mon, 16 Mar 2026 18:21:16 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 16 Mar 2026 18:21:14 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260316-compressed-firmware-v1-1-d9712142881e@pengutronix.de>
References: <20260316-compressed-firmware-v1-0-d9712142881e@pengutronix.de>
In-Reply-To: <20260316-compressed-firmware-v1-0-d9712142881e@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773681676; l=793;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=W1p0kYRT/pTfY8lSpCE7TpHkSouRSmkccoGwncpgrpM=;
 b=hUKHskNNbFq+6JCbK0aGpHAs2wsmHyAHu6QczmlwIyGWmlhLyZooglkndjdLlom25J+etl/Cm
 Bcqfb6xbmbnBcWjKxMjR+iPd02OQ1bgwB1D31rkMoMb7JcwNbpHZNu4
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260316_102126_552973_51F6855B 
X-CRM114-Status: UNSURE (   8.63  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/9] ARM: socfpga: Drop unnecessary select
 USE_COMPRESSED_DTB
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

USE_COMPRESSED_DTB is already selected at architecture level, so drop it
from the SoC.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-socfpga/Kconfig | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/mach-socfpga/Kconfig b/arch/arm/mach-socfpga/Kconfig
index 9818e7d9be..734d2c6d7a 100644
--- a/arch/arm/mach-socfpga/Kconfig
+++ b/arch/arm/mach-socfpga/Kconfig
@@ -23,7 +23,6 @@ config ARCH_SOCFPGA_ARRIA10
 	bool
 	select CPU_V7
 	select ARM_SMP_TWD
-	select USE_COMPRESSED_DTB
 	select RESET_CONTROLLER
 	select OFDEVICE
 	select OFTREE
@@ -76,7 +75,6 @@ if 64BIT
 config ARCH_SOCFPGA_AGILEX5
 	bool
 	select CPU_V8
-	select USE_COMPRESSED_DTB
 	select RESET_CONTROLLER
 	select RESET_SIMPLE
 	select OFDEVICE

-- 
2.47.3



