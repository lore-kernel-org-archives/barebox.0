Delivery-date: Fri, 18 Oct 2024 13:47:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t1lRy-005s1F-0M
	for lore@lore.pengutronix.de;
	Fri, 18 Oct 2024 13:47:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t1lRx-0004IP-Km
	for lore@pengutronix.de; Fri, 18 Oct 2024 13:47:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4Tc+orPWQLDR3jsjBrmqD4+iPTCCHBqqURvo53z4meQ=; b=Q461Wz+fwmQ2pQhJ7WWgRmTx3s
	mNi36NqWUZsoWUT3wQJU+MrCf+7+/DMfdVtLcMKtQujwWoPg2+Hm9T6m5+o8QO1QwYSpgBpTHeDsk
	kHoVD0rUAO7txxQ8VX0vfPx+DDrsuP4g95M5tXiQHxOXUgqHHf7szj4fLeBFzM8aonlSp3a0umEZ8
	vDA1aW3CDgbrVkS+05gafCPJvn4ld677zWDNbPP8qVTNucQtgpcPEAQE/T13Ht3ItiiVigq8Osj9L
	zY0nHkow1UmJu7pLBMI0rVht9WeKlUpXqjrWN5OS9HWDtLYjucHx4EZE1yp5aGF1JW7xU++o0d4cC
	6RN5IydQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1lRH-00000000e6A-0HDk;
	Fri, 18 Oct 2024 11:46:39 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1lRD-00000000e4P-0J90
	for barebox@lists.infradead.org;
	Fri, 18 Oct 2024 11:46:36 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id C38BEA4361F;
	Fri, 18 Oct 2024 11:46:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FDD3C4CEDC;
	Fri, 18 Oct 2024 11:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729251993;
	bh=Hm9dbb/bP+YViGgBNt2ne3rp9td6+iR9ixHow8T46QE=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=CXrZQe5MIrl5Q6t12WfFeAICyNaUFAZ45QmGotCO6BZg4hCMXtiwKdWtER5XMBPj3
	 eKhqKxpuqO/Q5/kUgHpVgCmnbtiVK5eCoI4TZ1OSVMZR5s8RrwItWSnvflgnmYNmJY
	 GWO7TKOcUHPZ567gwqjGsdHi4TXXvxq3GkKww0JlHWoLZxATvD4bDzMATBMc4JapGs
	 jIthQKPkHzsLzCy9thf0Kp64bNdpq8QQhqlaeS706g0EgFdnOXd6P1Zq7a9KKYQUeN
	 ZJ+LbJ1WCeXLzauViYs3lakJpX0YvOjajDBLZhsnHgogG7QSuD/rYBdtEkbD0scl4L
	 frnlHOJFukbAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 730CAD2FFF7;
	Fri, 18 Oct 2024 11:46:33 +0000 (UTC)
From: Abdelrahman Youssef via B4 Relay <devnull+abdelrahmanyossef12.gmail.com@kernel.org>
Date: Fri, 18 Oct 2024 14:45:56 +0300
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241018-errors_fixes-v2-2-7f49d5a0087b@gmail.com>
References: <20241018-errors_fixes-v2-0-7f49d5a0087b@gmail.com>
In-Reply-To: <20241018-errors_fixes-v2-0-7f49d5a0087b@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1729251992; l=1246;
 i=abdelrahmanyossef12@gmail.com; s=20241017; h=from:subject:message-id;
 bh=ZQGlteveeYHhMUHGwjTXIUeYQOG4oblMLEUZ2E18yDo=;
 b=ZU+Uk/HSWvwitMEyW/8+oyd2HafLdUKHvIBaI8s/UWgdrbHTASe4MC/WrPbHNSxcUxpZgSG08
 gTY9m96DrQ1B3V+l7Xrn6uiOoFTGnCMHkUf6UUjErn9Ow9Uys0BOBG0
X-Developer-Key: i=abdelrahmanyossef12@gmail.com; a=ed25519;
 pk=ayjFVDSRo1qKm+PGih8rsNvcMQvJ4ROQWuZWrYU8ujc=
X-Endpoint-Received: by B4 Relay for abdelrahmanyossef12@gmail.com/20241017
 with auth_id=251
X-Original-From: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241018_044635_216405_967D6FAA 
X-CRM114-Status: GOOD (  10.46  )
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
Reply-To: abdelrahmanyossef12@gmail.com
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-104.8 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,FREEMAIL_REPLYTO_END_DIGIT,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE,USER_IN_WELCOMELIST,USER_IN_WHITELIST
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/2] common: buffer access out-of-bounds
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>

in file_detect_type() to detect file of type socfpga_xload you need at least
68 bytes bytes, so we need to check if we have enough bufsize.
So I moved it after checking if `bufsize >= 256`.

Signed-off-by: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>
---
 common/filetype.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/common/filetype.c b/common/filetype.c
index 3690d4ae07..3f74871d7f 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -374,9 +374,6 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
 	if (le32_to_cpu(buf[5]) == 0x504d5453)
 		return filetype_mxs_bootstream;
 
-	if (buf[16] == 0x31305341)
-		return filetype_socfpga_xload;
-
 	if (is_barebox_arm_head(_buf))
 		return filetype_arm_barebox;
 	if (buf[9] == 0x016f2818 || buf[9] == 0x18286f01)
@@ -388,7 +385,10 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
 	if (bufsize < 256)
 		return filetype_unknown;
 
-	if (strncmp(buf8, "STM\x32", 4) == 0) {
+	if (buf[16] == 0x31305341)
+		return filetype_socfpga_xload;
+
+    if (strncmp(buf8, "STM\x32", 4) == 0) {
 		if (buf8[74] == 0x01) {
 			switch(le32_to_cpu(buf[63])) {
 			case 0x00000000:

-- 
2.43.0




