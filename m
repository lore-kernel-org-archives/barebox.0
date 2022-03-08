Delivery-date: Tue, 08 Mar 2022 13:22:21 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nRYr7-004dPI-T2
	for lore@lore.pengutronix.de; Tue, 08 Mar 2022 13:22:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nRYr6-0002cs-3Q
	for lore@pengutronix.de; Tue, 08 Mar 2022 13:22:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oUcospV/Fz1uXkw4VgbfQxKVu5C3rU33JYHKhCOQuQM=; b=tqvTl4OTTuP2s5
	MP6cQWBnclaQpAKccDmXR9DT9OIoVBbtt8cBe1pJYTj0KuHztkk0ERAIIcUk33Gps4UKXIOoqGhql
	tQVnO93Hn47+sMxaCzeP4cUMcHv4hHkwIbWUpFisOAlxKAB/MpJVU3w7QeWruCu4NjH/0MiRkRt6H
	Z1Oij6vf28Rz186eiIKTxE+4KH5yUZvRvHOlt058Gi0RSv6wQ+tjSOlOlPic7Fhr21Lrm+13VqzNY
	GoufjCYP1ITtZEzK5fn+Le/GBU1xPWRlC9HO/jA1Z+y+YzjS+18TPfkHQUUlVbvrDfgtL2K4PBkvK
	1gzzPZwhEPDOP43VYcRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRYpx-004Kce-Kf; Tue, 08 Mar 2022 12:21:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRYpi-004KUL-Eh
 for barebox@lists.infradead.org; Tue, 08 Mar 2022 12:20:55 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nRYpR-00027a-6E; Tue, 08 Mar 2022 13:20:37 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nRYpQ-001YFi-ED; Tue, 08 Mar 2022 13:20:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  8 Mar 2022 13:20:26 +0100
Message-Id: <20220308122028.3857376-6-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220308122028.3857376-1-s.hauer@pengutronix.de>
References: <20220308122028.3857376-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220308_042054_531502_22F9ED5C 
X-CRM114-Status: GOOD (  10.86  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 5/7] clk: imx6: fix cko1_sels
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

cko1 outputs pll5_video_div, not pll5_video. Also it outputs
pll4_audio_div, not pll4_audio.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/imx/clk-imx6.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/imx/clk-imx6.c b/drivers/clk/imx/clk-imx6.c
index 56ae09fc7b..4f843b8ba7 100644
--- a/drivers/clk/imx/clk-imx6.c
+++ b/drivers/clk/imx/clk-imx6.c
@@ -166,7 +166,7 @@ static const char *cko1_sels[] = {
 	"pll3_usb_otg",
 	"pll2_bus",
 	"pll1_sys",
-	"pll5_video",
+	"pll5_video_div",
 	"video_27m",
 	"axi",
 	"enfc",
@@ -178,7 +178,7 @@ static const char *cko1_sels[] = {
 	"ipg",
 	"ipg_per",
 	"ckil",
-	"pll4_audio",
+	"pll4_audio_div",
 };
 
 static const char *cko2_sels[] = {
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

