Delivery-date: Tue, 13 May 2025 12:54:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uEnGs-0058P9-1x
	for lore@lore.pengutronix.de;
	Tue, 13 May 2025 12:54:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uEnGs-0001L7-3d
	for lore@pengutronix.de; Tue, 13 May 2025 12:54:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=yBurBx/T8STIrpKMtTE6skQiKFLm/H8Nvsy0p2Yte9E=; b=xWqfsn5qDau6o+Op4OipSx0jEi
	d3yvuhd3pR3Tk96w4VzJjWBQzUvX4vjhYcM34wbQYzKCswPwDqOrKkI4TNSlbeeKxKUl59GaGL+1B
	soL1283oBh1dSdeYlZX9V3Vy4ZcqtDlQiKqLHIfaUK3LhVlqwv6oTaCpGRUdmoVZx6n37GLTW41WB
	Qhd91WFUdbIDCSwT4h3UZhnBBSx8PVX2TeAk7cKMxKeQU5O6J3KJyHIY8I3hzYzxeT3cvV+srjeMo
	pSgB0asA1XCgQlMCqAOWt2Q5WjrKg9JMKc0cEIA4dWCKkKOzc+qVjKc+wUfs/pQ4rhVBW4/BMvzyS
	nYvvjWJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uEnGA-0000000CBn2-0ZAV;
	Tue, 13 May 2025 10:53:18 +0000
Received: from magratgarlick.emantor.de ([78.46.208.201])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uEn8a-0000000CAVp-0foE
	for barebox@lists.infradead.org;
	Tue, 13 May 2025 10:45:29 +0000
Received: by magratgarlick.emantor.de (Postfix, from userid 114)
	id 5FF4D90FC5; Tue, 13 May 2025 12:45:25 +0200 (CEST)
Received: from localhost (110.8.30.213.rev.vodafone.pt [213.30.8.110])
	by magratgarlick.emantor.de (Postfix) with ESMTPSA id B89A390FC0;
	Tue, 13 May 2025 12:45:24 +0200 (CEST)
From: Rouven Czerwinski <rouven.czerwinski@linaro.org>
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <rouven.czerwinski@linaro.org>
Date: Tue, 13 May 2025 11:45:21 +0100
Message-ID: <20250513104521.4104574-1-rouven.czerwinski@linaro.org>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250513_034528_341495_480D13BF 
X-CRM114-Status: UNSURE (   8.34  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] virt: select COMMON_CLK & COMMON_CLK_OF_PROVIDER
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Otherwise the qemu invocation provided in the documentation leads to no
output on the serial console, presumably because the serial driver can
not calculate the timings. This was not noticed in the multi_v8_defconfig since
any other platform selects both.

Tested by using multi_v8_defconfig and disabling every other platform
except virt.

Signed-off-by: Rouven Czerwinski <rouven.czerwinski@linaro.org>
---
 arch/arm/Kconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 84b1660d1e..0800b15d78 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -146,6 +146,8 @@ config ARCH_ARM64_VIRT
 	select BOARD_ARM_VIRT
 	select HW_HAS_PCI
 	select HAS_DEBUG_LL
+	select COMMON_CLK
+	select COMMON_CLK_OF_PROVIDER
 
 config ARCH_BCM283X
 	bool "Broadcom BCM283x based boards"
-- 
2.48.1



