Delivery-date: Fri, 21 Apr 2023 12:08:35 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ppngw-00BPSE-MW
	for lore@lore.pengutronix.de; Fri, 21 Apr 2023 12:08:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ppngw-0001R6-Fh
	for lore@pengutronix.de; Fri, 21 Apr 2023 12:08:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YAXWsiJzARsAA/pvNkrzCdIlpWyaaFE2z7GwMJusCbw=; b=aymjhi9d8KGrh3cnBF7n6yRGST
	23LlDYo8DpCXo2LDKuMkGnhnoPHkoSJs1egSogp7xtXUBjbLDZn2stR11fggt4Lajt3HtYi/OF7+k
	PImrOo99sNlwkn7jd2UMGPsWjSmzJ/QSbFxuGYLUzIsSIWpBdh9VG8+2tQH5VzoeCrUyC9J3qhmGI
	xFM0OW535/4p3v5TuU01iFac0BOX5b9qUS2q8VJ1bj/9vVsi/wdt5LP2SblL1US6DZ7G9Fr6I67oc
	EIoVUsU96Bn2YJ8sSIUA+FUh/EcWjl/CRHuWs0bggKXdhqJ/gM0BIT9vjSOaAP1rHj2VbA2cne8LL
	6OmB5pJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ppnfl-00AQ4l-0E;
	Fri, 21 Apr 2023 10:07:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ppnfd-00AQ1a-0w
	for barebox@lists.infradead.org;
	Fri, 21 Apr 2023 10:07:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1ppnfa-000110-JP; Fri, 21 Apr 2023 12:07:10 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ppnfZ-00ClhX-UO; Fri, 21 Apr 2023 12:07:09 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ppnfY-00C2OZ-IO; Fri, 21 Apr 2023 12:07:08 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 21 Apr 2023 12:06:42 +0200
Message-Id: <20230421100642.2867651-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230421100642.2867651-1-a.fatoum@pengutronix.de>
References: <20230421100642.2867651-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230421_030713_366345_A4818592 
X-CRM114-Status: GOOD (  11.65  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 5/5] ARM: stm32mp: dkx: enable deep probe
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This wasn't enabled before, because the USB parts needed some love to be
deep probe compatible. This has been done in the meantime, so let's
enable it. No functional change expected, except that probe deferral
shouldn't happen anymore.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/stm32mp15xx-dkx/board.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boards/stm32mp15xx-dkx/board.c b/arch/arm/boards/stm32mp15xx-dkx/board.c
index b00781769ba5..1783c5ca17af 100644
--- a/arch/arm/boards/stm32mp15xx-dkx/board.c
+++ b/arch/arm/boards/stm32mp15xx-dkx/board.c
@@ -2,6 +2,7 @@
 #include <common.h>
 #include <init.h>
 #include <mach/stm32mp/bbu.h>
+#include <deep-probe.h>
 
 static int dkx_probe(struct device *dev)
 {
@@ -23,6 +24,7 @@ static const struct of_device_id dkx_of_match[] = {
 	{ .compatible = "st,stm32mp157c-dk2", .data = "STM32MP157C-DK2" },
 	{ /* sentinel */ },
 };
+BAREBOX_DEEP_PROBE_ENABLE(dkx_of_match);
 
 static struct driver dkx_board_driver = {
 	.name = "board-stm32mp15xx-dkx",
-- 
2.39.2



