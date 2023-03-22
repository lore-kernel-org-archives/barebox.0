Delivery-date: Wed, 22 Mar 2023 09:34:14 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1petvB-00AE2W-Fk
	for lore@lore.pengutronix.de; Wed, 22 Mar 2023 09:34:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1petv6-0001kh-2I
	for lore@pengutronix.de; Wed, 22 Mar 2023 09:34:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xPIWpGdn2Pl73z5ftJlxdllmhZxxMGtGFc1yLmY0kr0=; b=hiUAs2TXH8zPxpv6kYp1KYGFP3
	SjO3K4hjPzeg8xZTfpPqDtZRJm2CHwAY9XhtH/y87v/sMH13KCVrTe48d87dlCTpObWcL5GeILNC3
	uX/yrzJ1Ww2DtO5LqxIwwyDUfMqG7696qwPDRnyf8n8wG98vq1yFzgo6Q7VDwHyy3FEPrub+Ry1xj
	2fpUtgBX53ycLVezu7btkD5dSMkox6MvZP33Tdl4FadFoVA4RoBYigJZ7FL9xBnNLM+j4yoZGlh8i
	z8dA6ZcktcUrxHlntqJo0C3QrFtXefAEsHPdgZzdpvcOpTwZ026youVJn7n7QCMXW/rfvhqmS4Kd5
	lBOXfZiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1petts-00FCEw-0e;
	Wed, 22 Mar 2023 08:32:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1petto-00FCDF-35
	for barebox@lists.infradead.org;
	Wed, 22 Mar 2023 08:32:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pettn-0001Sg-JA; Wed, 22 Mar 2023 09:32:47 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pettm-005sSU-V2; Wed, 22 Mar 2023 09:32:46 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pettm-001DA1-62; Wed, 22 Mar 2023 09:32:46 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 22 Mar 2023 09:32:45 +0100
Message-Id: <20230322083245.251340-5-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230322083245.251340-1-s.hauer@pengutronix.de>
References: <20230322083245.251340-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230322_013249_010894_C9F96302 
X-CRM114-Status: GOOD (  13.66  )
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
Subject: [PATCH 4/4] commands: of_overlay: Allow to register clocks from overlay
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

When clocks are added from an overlay calling of_probe() is enough
for devices handled by regular drivers, but not for clocks declared
with CLK_OF_DECLARE(). Additionally call of_clk_init() to support
these as well.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/of_overlay.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/commands/of_overlay.c b/commands/of_overlay.c
index 37d29b88e5..1bd54a7b10 100644
--- a/commands/of_overlay.c
+++ b/commands/of_overlay.c
@@ -10,6 +10,7 @@
 #include <getopt.h>
 #include <libfile.h>
 #include <of.h>
+#include <linux/clk.h>
 
 static int do_of_overlay(int argc, char *argv[])
 {
@@ -49,8 +50,11 @@ static int do_of_overlay(int argc, char *argv[])
 
 	if (live_tree) {
 		ret = of_overlay_apply_tree(of_get_root_node(), overlay);
-		if (!ret)
-			ret = of_probe();
+		if (ret)
+			goto err;
+
+		of_probe();
+		of_clk_init();
 	} else {
 		ret = of_register_overlay(overlay);
 	}
-- 
2.30.2



