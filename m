Delivery-date: Mon, 09 Feb 2026 10:15:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpNMx-00AVJ1-1T
	for lore@lore.pengutronix.de;
	Mon, 09 Feb 2026 10:15:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpNMw-0006AC-FK
	for lore@pengutronix.de; Mon, 09 Feb 2026 10:15:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yg6/Tf3YwBYHEvklgSxy9fX97eEmLjk6deTsenpXks4=; b=Ycg6DtQnS7f3amSYNRyIpAP2wY
	nQyQINVs9cbKJN7xSe469btXEiViBQV5EXtbQsLCcS996MZVoh2aZn9h/dQqwxcW0OTq/sf2JMv1L
	tX7q00Je19Fz+765dU8Uc+fVMHPiCt9r0X5N/m27ae7Y+GIOIBjTs1sO213ZpV8SzwibnG2LM//1d
	bSSZIxWU+jpXcbei7w16ltPlgNhS3T8bG9SA6VgiHeIw4xw/HIHA9xdEzEDwLz5FUECmcWFn4+Fv5
	Vd+JszMutpqDyVlhwPYQVoO9fS4mXf0ahgJrTkFymQvvxeg3zHELVKJVvPo5aRWGYm74pzOsxyg96
	sonhKF9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpNMZ-0000000F6fk-1gJj;
	Mon, 09 Feb 2026 09:15:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpNMU-0000000F6bV-1JzB
	for barebox@lists.infradead.org;
	Mon, 09 Feb 2026 09:15:21 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=localhost.localdomain)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vpNMS-0005oY-Pm; Mon, 09 Feb 2026 10:15:16 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: "Claude Opus 4.6" <noreply@anthropic.com>,
	Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon,  9 Feb 2026 10:10:29 +0100
Message-ID: <20260209091513.3563412-5-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260209091513.3563412-1-a.fatoum@barebox.org>
References: <20260209091513.3563412-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260209_011518_396552_A4DE3DF1 
X-CRM114-Status: GOOD (  10.29  )
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
Subject: [PATCH 4/6] gpio: mpc8xxx: allow build on MPC85xx platforms
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The fsl,qoriq-gpio controller is present on MPC85xx-based platforms
(including QEMU ppce500). Add ARCH_MPC85XX to the depends list so the
driver can be selected for these platforms.

Co-Authored-By: Claude Opus 4.6 <noreply@anthropic.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/gpio/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
index 17d5587ea8cf..988d08cf143c 100644
--- a/drivers/gpio/Kconfig
+++ b/drivers/gpio/Kconfig
@@ -102,7 +102,7 @@ config GPIO_MALTA_FPGA_I2C
 
 config GPIO_MPC8XXX
 	bool "MPC512x/MPC8xxx/QorIQ GPIO support"
-	depends on ARCH_LAYERSCAPE || COMPILE_TEST
+	depends on ARCH_LAYERSCAPE || ARCH_MPC85XX || COMPILE_TEST
 	select GPIO_GENERIC
 	help
 	  Say Y here if you're going to use hardware that connects to the
-- 
2.47.3



