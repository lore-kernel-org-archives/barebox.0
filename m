Delivery-date: Mon, 13 Jun 2022 09:11:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o0eEl-00153u-7F
	for lore@lore.pengutronix.de; Mon, 13 Jun 2022 09:11:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o0eEj-0003BZ-EQ
	for lore@pengutronix.de; Mon, 13 Jun 2022 09:11:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sJSA6jecKIUnZW9Uyx7VSunYlEJnuYRfnE5vVY04Cfk=; b=SgFzKFb+V2TOC4
	qG4Z07zouTM0d+8STUMjCKhUYMoEjtHm0LWGzQAKj+H601ON+9yqi+3GrqCxavtoklvyM55DzzqTw
	fPqLN/G/qeDyMNldwAtla/6aA/ZtuK5/Dpz8+h2J9/qsfcqUDajZ65WSUc/AkPgoNYtzp7cxYv8n/
	5JIsqoUwaxVMNq1rUNcdAbdAh5c5YotFYRZ3laBruqTlAslkaiwxiKGApeuUpLUn+WDf30oaOP89J
	ik51isdfAViw+2YorOtdwE9U8Yv/kzAb9H8ZuFeKay1y2Y6T8CFwz05DPaRiFAJgbs9g1NO+F78LG
	7q0u84NW/gtNlcv9s0oA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0eDU-001tvW-Ea; Mon, 13 Jun 2022 07:10:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0eDP-001tuo-Lo
	for barebox@lists.infradead.org; Mon, 13 Jun 2022 07:10:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o0eDN-0002bn-Uv; Mon, 13 Jun 2022 09:10:21 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1o0eDN-000FhH-Pt; Mon, 13 Jun 2022 09:10:21 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1o0eDM-001Hk2-Ks; Mon, 13 Jun 2022 09:10:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 13 Jun 2022 09:10:19 +0200
Message-Id: <20220613071019.306483-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220613_001023_750633_3019B570 
X-CRM114-Status: UNSURE (   9.89  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] arm: rockchip: radxa-rock3: register barebox update handler
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Register a barebox update handler on the eMMC card.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/radxa-rock3/board.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boards/radxa-rock3/board.c b/arch/arm/boards/radxa-rock3/board.c
index 05a526b06e..30ad594d0a 100644
--- a/arch/arm/boards/radxa-rock3/board.c
+++ b/arch/arm/boards/radxa-rock3/board.c
@@ -2,6 +2,7 @@
 #include <bootsource.h>
 #include <common.h>
 #include <init.h>
+#include <mach/bbu.h>
 
 struct rock3_model {
 	const char *name;
@@ -24,6 +25,9 @@ static int rock3_probe(struct device_d *dev)
 	else
 		of_device_enable_path("/chosen/environment-emmc");
 
+	rk3568_bbu_mmc_register("emmc", BBU_HANDLER_FLAG_DEFAULT,
+				"/dev/mmc1");
+
 	return 0;
 }
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

