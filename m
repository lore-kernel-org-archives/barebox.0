Delivery-date: Tue, 12 Mar 2024 16:49:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rk4Nc-002rc9-0p
	for lore@lore.pengutronix.de;
	Tue, 12 Mar 2024 16:49:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rk4Nb-0004Vo-Md
	for lore@pengutronix.de; Tue, 12 Mar 2024 16:49:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=4nZNPfbltnq8mDcoRLk4a5ahEHrLC1tC8t6voHsAEp4=; b=uEzVzAAvA0oM3mpIJpqtXusUHe
	OBx/rWvP/Q7XJLBIvQ2yOiDXBNp8e5OIkAvd5BL4aybPcuyPEQWhF44pPtF5mZbVpEFnGLQCuRom0
	id7euzFc3e0oHiKWZSIYBPRjALoWFOMA8Xt/b9jMBnfiXCH0suz76Ttg/5AkdDmoG1ToNGBXxjRqz
	C4u2QS1+9oBqlTZY36Q5onZS01mLqYT0aJpW3Sy+9Z5ww7iHXV/VRrPMZNdczzOIP4DKUBbazr950
	PuI+7XuIrBH6cKRLQ0Dnfdx/4hPMimL4DUIdO4FVemvf3o212n4w9wCqsbgKQZzLwInq3exhhqB2T
	tlYMlgqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rk4Mq-00000006REi-3oK9;
	Tue, 12 Mar 2024 15:48:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rk4Mn-00000006RDa-37yE
	for barebox@lists.infradead.org;
	Tue, 12 Mar 2024 15:48:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1rk4Mm-0003FK-19; Tue, 12 Mar 2024 16:48:36 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1rk4Ml-005wdk-II; Tue, 12 Mar 2024 16:48:35 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ukl@pengutronix.de>)
	id 1rk4Ml-004pRE-1Z;
	Tue, 12 Mar 2024 16:48:35 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 12 Mar 2024 16:48:27 +0100
Message-ID: <20240312154827.638763-2-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1289; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=IPcS3JW5PAOISy8/kgiKVGsiw13Y9yqQ27b6abwjwx8=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBl8HlLGfPFi6gre+HaJ22l+d5l1dvR5/4/twqiD KOp4S0V8JaJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZfB5SwAKCRCPgPtYfRL+ TkX7CACO4+cAgn4OnFwb0J3k3Xbztwp5fD/ZS8pyUZl5ydcmwCRUM+BBF1ouR8aXDcI78RpwpTk dGgX7H7A43cVYYKgrEu6XsFvdMMNA6ejF8UboX2o//auSPbUz9OOcIXi4V0WzaK7oYIrTkI1kh5 Lk6L1SyzGuXGdjk+qVP9UFI0l3T22B7czzuOO3SpGm8hAnvzQkJZ/TEXiSB6HD0yo1PAxWThHu0 U73fUsQsv8UJLtV52stM/3/I1g6DZiez218J/0ADSiiHjmruk8FUzfZwYld0sdKxNW82hZTMji2 ZQvOUnYHBTioStmI08gdOFrtvli4ZQcYMpHH72A+ZDxQuzwW
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240312_084837_812495_BB6191D0 
X-CRM114-Status: GOOD (  12.00  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] imx25: Feed the unique id to machine_id_set_hashable()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This enables barebox on i.MX25 to generate a per-machine eth address.

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
---
 arch/arm/mach-imx/iim.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm/mach-imx/iim.c b/arch/arm/mach-imx/iim.c
index 90ca644c2e62..f4581396b1a5 100644
--- a/arch/arm/mach-imx/iim.c
+++ b/arch/arm/mach-imx/iim.c
@@ -22,6 +22,7 @@
 #include <linux/regmap.h>
 #include <regulator.h>
 #include <linux/err.h>
+#include <machine_id.h>
 
 #include <mach/imx/iim.h>
 #include <mach/imx/imx51-regs.h>
@@ -504,6 +505,25 @@ static int imx_iim_probe(struct device *dev)
 	dev_add_param_bool(&iim->dev, "explicit_sense_enable",
 			NULL, NULL, &iim->sense_enable, NULL);
 
+	/* Maybe this is too strict? This might also work on i.MX31 and i.MX35 */
+	if (IS_ENABLED(CONFIG_MACHINE_ID) &&
+	    of_device_is_compatible(dev->of_node, "fsl,imx25-iim")) {
+		char uid[8];
+
+		for (i = 0; i < 8; ++i) {
+			unsigned int value;
+
+			ret = imx_iim_read_field(IMX25_IIM_UID(i), &value);
+			if (ret)
+				break;
+
+			uid[i] = value;
+		}
+
+		if (!ret)
+			machine_id_set_hashable(uid, 8);
+	}
+
 	return 0;
 }
 

base-commit: d27c50c131e7393f4640c20c711e2aad83543066
-- 
2.43.0



