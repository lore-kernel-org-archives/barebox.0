Delivery-date: Wed, 07 Dec 2022 23:11:46 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p32dm-00E4xy-3k
	for lore@lore.pengutronix.de; Wed, 07 Dec 2022 23:11:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p32dl-0006ck-C2
	for lore@pengutronix.de; Wed, 07 Dec 2022 23:11:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=TTCHDWW5mp/ZzJTeP/p7vGsMwm39Rc75NFVimZCWMdU=; b=QyjCf1aSApc0NkUnd9wtCGx5L/
	NrPXl/GfYyj/qEa4t0Xb9itTJvssQLfuC5FhqLqDfx2KS889WZ/n/PcSDb66/q9MS14eKrrlTW9qg
	1L1tcbB5quOXdEXMwhfqTZ5MEJTSAvN6FWTS+CcNDZ8bVyvjfHWybZXQMkrO69Kf7JEn5Na/p3pmP
	U0L0/aXY8xSS6PwE1oZ4M2O5PBP5nohYh8uYOHpsRFN3mXVuVvvlK6hYw4tKpTXjVCXlazXf3kg2z
	w7mgDs7Xr37SLLCHW/2i129xr80XyjuiplhRbR6I0J3v8uYGIzVGEM4BG05pn/uwjY2l5IRrNMOao
	AtHzAzHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p32cJ-00Dmzi-EK; Wed, 07 Dec 2022 22:10:15 +0000
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p32cA-00DmjA-Fn
	for barebox@lists.infradead.org; Wed, 07 Dec 2022 22:10:09 +0000
Received: by lynxeye.de (Postfix, from userid 501)
	id 8F7BFE74004; Wed,  7 Dec 2022 23:09:28 +0100 (CET)
Received: from astat.fritz.box (a89-183-231-163.net-htp.de [89.183.231.163])
	by lynxeye.de (Postfix) with ESMTPA id 9BE42E74004
	for <barebox@lists.infradead.org>; Wed,  7 Dec 2022 23:09:27 +0100 (CET)
From: Lucas Stach <l.stach@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed,  7 Dec 2022 23:09:21 +0100
Message-Id: <20221207220924.148327-1-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221207_141006_745979_909CF4CF 
X-CRM114-Status: GOOD (  10.34  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/4] ARM: imx8m: allow ddr_get_firmware to be called from other units
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 include/soc/imx8m/ddr.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/soc/imx8m/ddr.h b/include/soc/imx8m/ddr.h
index 2149ae432554..0b3c4d47e39d 100644
--- a/include/soc/imx8m/ddr.h
+++ b/include/soc/imx8m/ddr.h
@@ -389,7 +389,7 @@ extern struct dram_timing_info dram_timing;
 void ddr_get_firmware_lpddr4(void);
 void ddr_get_firmware_ddr(void);
 
-static void ddr_get_firmware(enum dram_type dram_type)
+static inline void ddr_get_firmware(enum dram_type dram_type)
 {
 	if (dram_type == DRAM_TYPE_LPDDR4)
 		ddr_get_firmware_lpddr4();
-- 
2.38.1



