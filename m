Delivery-date: Fri, 08 May 2026 16:44:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wLMRb-002OVu-1j
	for lore@lore.pengutronix.de;
	Fri, 08 May 2026 16:44:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wLMRW-0002gQ-NS
	for lore@pengutronix.de; Fri, 08 May 2026 16:44:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xfcHqMk0r0NPqfGJlLAOIguX8pNk/3LLpxboVfpoVJY=; b=dqIdNjngrnMfwitTuz+FCmzeU6
	eyfBiiaMUHu7TFS18qGC75omAxOuMtZ5yJmWE0U8WAz7e2hJkZktN6rYVl1bgCnc5JsVXZRN2tQb8
	sE1MctBhMNSoMcoswU7T3WYrchJbqEhNhTA31Wh56AqSs1u4B4HbbUkIKeXtKjRf8fPWbj+7dgRW4
	VWXZJnm8QiSc0TWRbN86ZwK6F9oo4WYID5B30kIZHB9CqzkbGcxf5IABsgnDYVEsdafdbMFlTQSlh
	Yw1oBrc2yYYmN7Sc4soUM826m69NvaPnw5VvV2MnkulGpGg0DwxsqKzpwkScChV7vYJa45UW2GIrq
	txop9kPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLMQ1-00000006hIc-2yqQ;
	Fri, 08 May 2026 14:43:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wLMPy-00000006hCA-1iXk
	for barebox@lists.infradead.org;
	Fri, 08 May 2026 14:43:08 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1wLMPu-0001TN-Vx; Fri, 08 May 2026 16:43:03 +0200
From: Fabian Pflug <f.pflug@pengutronix.de>
Date: Fri, 08 May 2026 16:43:02 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260508-v2025-11-0-topic-riotboard-v1-1-42e6134c3de6@pengutronix.de>
References: <20260508-v2025-11-0-topic-riotboard-v1-0-42e6134c3de6@pengutronix.de>
In-Reply-To: <20260508-v2025-11-0-topic-riotboard-v1-0-42e6134c3de6@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Fabian Pflug <f.pflug@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260508_074306_457942_6304D5C1 
X-CRM114-Status: UNSURE (   7.40  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] ARM: i.MX: riotboard: add tzasc.h to flashheader
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Even though the riotboard is a i.MX6S, the flashheader is the same for
QDLS variants. It allows to integrate OP-TEE and does not hinder in
normal operation.

Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
---
 arch/arm/boards/embest-riotboard/flash-header-embest-riotboard.imxcfg | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boards/embest-riotboard/flash-header-embest-riotboard.imxcfg b/arch/arm/boards/embest-riotboard/flash-header-embest-riotboard.imxcfg
index 1f27163417..335f5033ce 100644
--- a/arch/arm/boards/embest-riotboard/flash-header-embest-riotboard.imxcfg
+++ b/arch/arm/boards/embest-riotboard/flash-header-embest-riotboard.imxcfg
@@ -67,4 +67,5 @@ wm 32 MX6_MMDC_P0_MDPDC 0x00025565
 wm 32 MX6_MMDC_P0_MAPSR 0x00011006
 wm 32 MX6_MMDC_P0_MDSCR 0x00000000
 
+#include <mach/imx/imx6q-tzasc.h>
 #include <mach/imx/habv4-imx6-gencsf.h>

-- 
2.47.3



