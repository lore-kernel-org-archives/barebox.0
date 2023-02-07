Delivery-date: Tue, 07 Feb 2023 21:06:49 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pPUEt-00HMBD-BR
	for lore@lore.pengutronix.de; Tue, 07 Feb 2023 21:06:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pPUEq-0005V6-GX
	for lore@pengutronix.de; Tue, 07 Feb 2023 21:06:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AEAFij12tdhb59sfYEUOYQHvDMEw38jC/lZ/u69Yw7Y=; b=VN+Dz4jk2uhJ7izI5eiJ5HXd3M
	1FoZI1N0rw6tiW7UTsmb/90V9FJq2JoUAzw8oydJQpGE1rYiQ8fbMMfWApAxYKDiFBgi06I9kb1GK
	/NiXWLys2gS577Eg50OJZzB4tJwnDdiZh84jTNJrt+LGbs0nnDj609bUZ5uLf+fiLAQjd0+/YJR0p
	1ZXkLgjON05Tk3EzXz+1Zz1RW7iXIejhzHT3rFcbS0blul17hUkd2o7mX8uDyDzezT92Eqnnn0iAN
	z10EA1IFDlLT8MyZic7V2wxA6eB7n9gWCkXKJ+QaqiY369SMHSK7jpdpksbEhlrj9/VAgA0tJfPcS
	frphAstQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPUDp-00DHes-2P; Tue, 07 Feb 2023 20:05:45 +0000
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPUDi-00DHdV-5k
	for barebox@lists.infradead.org; Tue, 07 Feb 2023 20:05:41 +0000
Received: by lynxeye.de (Postfix, from userid 501)
	id 56EB5E74012; Tue,  7 Feb 2023 21:05:05 +0100 (CET)
Received: from astat.fritz.box (a89-183-230-107.net-htp.de [89.183.230.107])
	by lynxeye.de (Postfix) with ESMTPA id 772EDE74011
	for <barebox@lists.infradead.org>; Tue,  7 Feb 2023 21:05:02 +0100 (CET)
From: Lucas Stach <l.stach@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue,  7 Feb 2023 21:04:58 +0100
Message-Id: <20230207200459.1078994-2-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230207200459.1078994-1-l.stach@pengutronix.de>
References: <20230207200459.1078994-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230207_120538_382671_0581BA06 
X-CRM114-Status: GOOD (  12.47  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/3] ARM: i.MX8M: esdctl: use common compatible to detect i.MX8MQ/MM/MP DDRC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

All i.MX8M* DDRC nodes are compatible to "fsl,imx8m-ddrc". As the memory
size detection works the same on most of them, with the only exception
being the i.MX8MM, which only has a 16bit data bus, there is no need to
match the more specific compatibles for i.MX8MQ/MM/MP.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/mach-imx/esdctl.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index 043de477a77d..fc6db25de9e4 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -652,7 +652,7 @@ static __maybe_unused struct imx_esdctl_data vf610_data = {
 	.add_mem = vf610_ddrmc_add_mem,
 };
 
-static __maybe_unused struct imx_esdctl_data imx8mq_data = {
+static __maybe_unused struct imx_esdctl_data imx8m_data = {
 	.base0 = MX8M_DDR_CSD1_BASE_ADDR,
 	.add_mem = imx8m_ddrc_add_mem,
 };
@@ -732,14 +732,11 @@ static __maybe_unused struct of_device_id imx_esdctl_dt_ids[] = {
 		.compatible = "fsl,vf610-ddrmc",
 		.data = &vf610_data
 	}, {
-		.compatible = "fsl,imx8mm-ddrc",
-		.data = &imx8mq_data
+		.compatible = "fsl,imx8m-ddrc",
+		.data = &imx8m_data
 	}, {
 		.compatible = "fsl,imx8mn-ddrc",
 		.data = &imx8mn_data
-	}, {
-		.compatible = "fsl,imx8mq-ddrc",
-		.data = &imx8mq_data
 	}, {
 		.compatible = "fsl,imx7d-ddrc",
 		.data = &imx7d_data
-- 
2.39.1



