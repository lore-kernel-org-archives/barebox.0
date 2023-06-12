Delivery-date: Mon, 12 Jun 2023 15:03:40 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8hCv-003qav-En
	for lore@lore.pengutronix.de; Mon, 12 Jun 2023 15:03:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8hCs-0000dQ-PZ
	for lore@pengutronix.de; Mon, 12 Jun 2023 15:03:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=482ECTVsHgIdRKtVWQ2F1kvOdsLEw4r5ZUA+yw+4wWM=; b=xTP18TRMHF0L/KmHC2qa7pKpBQ
	SVa1GWIBYydK6urqcOVeFR5WQI4H7Mywel3LlfLLM2ileDLaoIszuwkKYdvOJo+AQMzK8xzBJ5e8K
	FBSENj66Sw3u/MMMNlHGlNNNgpJ1PJR9qjVCGYqIyrT7ynOuNJNlxwCrT/Ih126u5tAvWiBYDZyTE
	awX/tuKKu9QmZo5xBXh25I7GXRnqaNAIBWZVJ+ZpRXnqOTpPabMSoDY2a/0dd7ON6Way3mlKg7rw4
	1OlYgkxOcna4cFkHHn6z+i1qbxCcnu5NvPvjrBTwlO5Im33mI37Y5ZCcRXdOHsYKTN77Q9ZT40m0Z
	ZTSMwYfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8hCD-0047Ig-2x;
	Mon, 12 Jun 2023 13:02:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8hC7-0047CO-0x
	for barebox@lists.infradead.org;
	Mon, 12 Jun 2023 13:02:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q8hC6-0008Kv-2j; Mon, 12 Jun 2023 15:02:50 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q8hC5-006tVQ-9K; Mon, 12 Jun 2023 15:02:49 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q8hC3-004aJ7-47; Mon, 12 Jun 2023 15:02:47 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 12 Jun 2023 15:02:22 +0200
Message-Id: <20230612130239.1087599-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230612130239.1087599-1-a.fatoum@pengutronix.de>
References: <20230612130239.1087599-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_060251_330395_9442B173 
X-CRM114-Status: GOOD (  10.87  )
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
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 01/19] clk: always define clk_prepare_enable/disable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

clk_enable/clk_disable have stubs defined for !HAVE_CLK. By moving t
clk_prepare_enable/disable definitions, we can reuse them for the
prepare helpers as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/clk.h | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/include/linux/clk.h b/include/linux/clk.h
index c78132d40582..60534ddb732c 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -72,7 +72,6 @@ struct clk *clk_get(struct device *dev, const char *id);
  * Returns success (0) or negative errno.
  */
 int clk_enable(struct clk *clk);
-#define clk_prepare_enable(clk) clk_enable(clk)
 
 /**
  * clk_disable - inform the system when the clock source is no longer required.
@@ -87,7 +86,6 @@ int clk_enable(struct clk *clk);
  * disabled.
  */
 void clk_disable(struct clk *clk);
-#define clk_disable_unprepare(clk) clk_disable(clk)
 
 /**
  * clk_get_rate - obtain the current clock rate (in Hz) for a clock source.
@@ -206,6 +204,9 @@ static inline int clk_set_rate(struct clk *clk, unsigned long rate)
 }
 #endif
 
+#define clk_prepare_enable(clk) clk_enable(clk)
+#define clk_disable_unprepare(clk) clk_disable(clk)
+
 static inline void clk_put(struct clk *clk)
 {
 }
-- 
2.39.2



