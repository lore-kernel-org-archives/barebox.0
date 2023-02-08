Delivery-date: Wed, 08 Feb 2023 14:36:06 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pPkcJ-000bOw-OX
	for lore@lore.pengutronix.de; Wed, 08 Feb 2023 14:36:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pPkcG-0002Sl-VC
	for lore@pengutronix.de; Wed, 08 Feb 2023 14:36:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ThGdEiTUL+NDwBnc19Z1aGx1FxKC+PbJl2n9XaoX0lA=; b=VuueGWbbi2v2z0FVoXNbs1ectI
	PNT4OmDX0NNGn67+x/i/O3Ai0asuNUCfgQitAsV3P+liA8Aesln8bLqtOtQggLho9FGbT6nLwFAMq
	ibMWXZYbID5deApTqL1uCnA750mzszj4bqjFLeRdOFrClw7k9W2tcNgglSg8ZpKc+tBXXEeGYwCKa
	nOizHCimSjNZENUcrVQQNjmPdniOqCJZVoCNc5BSn5xhdTdkfN0yPanIMu/asanBYKtg3PiK4LqKy
	nrSwW943GO+LeymZSOytXbn3EXpfQb5S+br8nyS2OF3EsBG3foRq7BpBNMk2yIQMSb0hw9hfo12PY
	JduDyCgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPkb9-00FlNf-ET; Wed, 08 Feb 2023 13:34:55 +0000
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPkb1-00FlL5-FV
	for barebox@lists.infradead.org; Wed, 08 Feb 2023 13:34:49 +0000
Received: by lynxeye.de (Postfix, from userid 501)
	id 26468E74016; Wed,  8 Feb 2023 14:34:12 +0100 (CET)
Received: from astat.fritz.box (a89-183-230-152.net-htp.de [89.183.230.152])
	by lynxeye.de (Postfix) with ESMTPA id EE5E1E74008
	for <barebox@lists.infradead.org>; Wed,  8 Feb 2023 14:34:10 +0100 (CET)
From: Lucas Stach <l.stach@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed,  8 Feb 2023 14:34:06 +0100
Message-Id: <20230208133408.1114573-1-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230208_053447_684644_9B9395F0 
X-CRM114-Status: GOOD (  12.14  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 1/3] ARM: i.MX8M: esdctl: use common compatible to detect i.MX8MQ/MM/MP DDRC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

All i.MX8M* DDRC nodes are compatible to "fsl,imx8m-ddrc". As the memory
size detection works the same on most of them, with the only exception
being the i.MX8MN, which only has a 16bit data bus, there is no need to
match the more specific compatibles for i.MX8MQ/MM/MP.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/mach-imx/esdctl.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index a704250297bb..29e992933421 100644
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



