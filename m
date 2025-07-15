Delivery-date: Tue, 15 Jul 2025 22:20:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ubm8Q-000FZO-2b
	for lore@lore.pengutronix.de;
	Tue, 15 Jul 2025 22:20:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ubm8Q-0001qe-7J
	for lore@pengutronix.de; Tue, 15 Jul 2025 22:20:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=8BvqWlBWBUVoA0xbfn9Nb1zD12jDN/IXh78aiO44wwM=; b=B4EloSl4tCDtGUgAtFBHp5FliP
	4JtcUh5U9wwkkuaRPdRxwEJL9beZPdfphJqkXjRZfjRbZPZc+4g2+3uOGD3+r5eEe+ENWWXsGS7kd
	XmvJ9EJmXMWPV4oyBypQfOT+ZQPvUUI9dBshgLazp/qJlxvjZAGNMlMS+B2Jsti0gzFNojImp+EVN
	XGywtZob3avokbb1LaIvJ7hREcc1YsjBMIBE4GX2K6vt33eVzTRnWUPzt4adOt8Rd0BQU7RVfgjoK
	tiw5vSCM4s5DYRm8+QXKfNRku3saUoyzOaKGPTjmgjt5kgEBnbkJx/LYrm4Xrhf4HqG8bbf72/5yR
	RrIyKNNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubm7q-00000006ALQ-0ILN;
	Tue, 15 Jul 2025 20:19:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubm7P-00000006AH7-1CXb
	for barebox@lists.infradead.org;
	Tue, 15 Jul 2025 20:19:16 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1ubm7L-0000sX-AB; Tue, 15 Jul 2025 22:19:11 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Renaud Barbier <Renaud.Barbier@ametek.com>,
	Ahmad Fatoum <a.fatoum@barebox.org>
Date: Tue, 15 Jul 2025 22:19:08 +0200
Message-Id: <20250715201908.2515578-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250715_131915_327414_CD19B503 
X-CRM114-Status: GOOD (  11.37  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] drivers: fix buggy comparisons of casted device_get_match_data to zero
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

device_get_match_data returns NULL when no match data is available,
which a cast to uintptr_t turns into a zero.

Most drivers either put valid pointers into the match data or they
reserve a literal value of zero to be "unknown".

Three drivers don't do that though and use 0 as valid value for the
match data and thus the check against zero breaks probing drivers with
the corresponding match data.

As device_get_match_data() would only fail anyway when manually
allocating platform devices that match by name or when adding new matches
without match data, it's perfectly fine to just skip the check and
assume the match data to be zero in that case to fix the breakage.

Fixes: 20d87123a638 ("treewide: replace dev_get_drvdata with device_get_match_data")
Reported-by: Renaud Barbier <Renaud.Barbier@ametek.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/eeprom/at24.c    | 2 --
 drivers/net/fsl-fman.c   | 2 --
 drivers/rtc/rtc-ds1307.c | 2 --
 3 files changed, 6 deletions(-)

diff --git a/drivers/eeprom/at24.c b/drivers/eeprom/at24.c
index 3054709ec055..ffd3376a1566 100644
--- a/drivers/eeprom/at24.c
+++ b/drivers/eeprom/at24.c
@@ -381,8 +381,6 @@ static int at24_probe(struct device *dev)
 		u32 page_size;
 
 		magic = (uintptr_t)device_get_match_data(dev);
-		if (!magic)
-			return -ENODEV;
 
 		chip.byte_len = BIT(magic & AT24_BITMASK(AT24_SIZE_BYTELEN));
 		magic >>= AT24_SIZE_BYTELEN;
diff --git a/drivers/net/fsl-fman.c b/drivers/net/fsl-fman.c
index 84e7f2033037..bde054d7513f 100644
--- a/drivers/net/fsl-fman.c
+++ b/drivers/net/fsl-fman.c
@@ -1091,8 +1091,6 @@ static int fsl_fman_port_probe(struct device *dev)
 	dev_dbg(dev, "probe\n");
 
 	type = (uintptr_t)device_get_match_data(dev);
-	if (!type)
-		return -ENODEV;
 
 	iores = dev_request_mem_resource(dev, 0);
 	if (IS_ERR(iores))
diff --git a/drivers/rtc/rtc-ds1307.c b/drivers/rtc/rtc-ds1307.c
index 86b0709dc217..0fee67961a9a 100644
--- a/drivers/rtc/rtc-ds1307.c
+++ b/drivers/rtc/rtc-ds1307.c
@@ -291,8 +291,6 @@ static int ds1307_probe(struct device *dev)
 	const struct device_node *np = dev->of_node;
 
 	driver_data = (uintptr_t)device_get_match_data(dev);
-	if (!driver_data)
-		return -ENODEV;
 
 	ds1307 = xzalloc(sizeof(struct ds1307));
 
-- 
2.39.5



