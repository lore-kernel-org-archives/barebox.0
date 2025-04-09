Delivery-date: Wed, 09 Apr 2025 16:40:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u2Wbd-00ARna-1g
	for lore@lore.pengutronix.de;
	Wed, 09 Apr 2025 16:40:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u2Wbc-0003HL-Vm
	for lore@pengutronix.de; Wed, 09 Apr 2025 16:40:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=20+7R1Bo4W/xi3HLD1MiNG1OI5FkuaJ3K9ZhnQ35IVs=; b=gk1u2dXnIYAgfKbPNtspoETRLW
	jq5I302rXeN7vRPnzhK7T4HD8KyRa62qftpahFOE9jtDjaRbWZaTflwgQ4NNX4jcf1op7C/e6uKyM
	8WeTpx7Y1O5YHP3DB3rnVuUSDiJK9GFm93ayblR0cfIVNogwEaZwL6Frzq02TtzEUQhEe6tIQT8ws
	ogmonBrzwif7fC6kOhMfy0JAzawDNj3uGrQ4Y6A7P/lANC1XtKTWcSH/XjeztfffoqLNUSZq0g/vO
	FtGcotx8iFUqd6j8W3zBlhXvndLeU6xeAgScwm8qOHAsTzH5iqeYBqhPXkrpMBDwjSTHKA0f2IdUj
	2qmhh+Ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2WbB-00000007Uq6-1krq;
	Wed, 09 Apr 2025 14:40:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2Vzo-00000007NXj-01Zk
	for barebox@lists.infradead.org;
	Wed, 09 Apr 2025 14:01:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u2Vzm-0004qB-NA; Wed, 09 Apr 2025 16:01:38 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u2Vzm-004708-1Z;
	Wed, 09 Apr 2025 16:01:38 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u2Vzm-008jBv-1F;
	Wed, 09 Apr 2025 16:01:38 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  9 Apr 2025 16:01:31 +0200
Message-Id: <20250409140134.2079552-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250409140134.2079552-1-a.fatoum@pengutronix.de>
References: <20250409140134.2079552-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250409_070140_039694_C9A9788E 
X-CRM114-Status: GOOD (  10.36  )
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
Subject: [PATCH 3/7] bootm: implement UIMAGE_IS_ADDRESS_VALID helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Instead of open-coding the comparison against the two magic UIMAGE_
constants, introduce a UIMAGE_IS_ADDRESS_VALID helper.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/booti.c  | 3 +--
 include/bootm.h | 3 +++
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/common/booti.c b/common/booti.c
index c8f6b5d4fc6d..40611b8f7228 100644
--- a/common/booti.c
+++ b/common/booti.c
@@ -15,8 +15,7 @@ static unsigned long get_kernel_address(unsigned long os_address,
 	resource_size_t start, end;
 	int ret;
 
-	if (os_address == UIMAGE_SOME_ADDRESS ||
-	    os_address == UIMAGE_INVALID_ADDRESS) {
+	if (!UIMAGE_IS_ADDRESS_VALID(os_address)) {
 		ret = memory_bank_first_find_space(&start, &end);
 		if (ret)
 			return UIMAGE_INVALID_ADDRESS;
diff --git a/include/bootm.h b/include/bootm.h
index bc6c69e8134d..b35deb25bf8f 100644
--- a/include/bootm.h
+++ b/include/bootm.h
@@ -154,6 +154,9 @@ bool bootm_signed_images_are_forced(void);
 void bootm_force_signed_images(void);
 
 #define UIMAGE_SOME_ADDRESS (UIMAGE_INVALID_ADDRESS - 1)
+#define UIMAGE_IS_ADDRESS_VALID(addr) \
+	((addr) != UIMAGE_INVALID_ADDRESS && \
+	 (addr) != UIMAGE_SOME_ADDRESS)
 
 void *booti_load_image(struct image_data *data, phys_addr_t *oftree);
 
-- 
2.39.5



