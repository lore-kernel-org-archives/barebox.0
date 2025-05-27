Delivery-date: Tue, 27 May 2025 22:14:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uK0h0-000xKY-0G
	for lore@lore.pengutronix.de;
	Tue, 27 May 2025 22:14:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uK0gz-0002wP-I6
	for lore@pengutronix.de; Tue, 27 May 2025 22:14:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KBzcdoSfguFi7Tq/1/3IMicCBRHifgWxLbGW9cKdXrQ=; b=sCYgefzTdD5XLa6Fn/zkA9vaOT
	liIxUePqc9rbIdp36d31kxgJfT9nFPkCqCGw5ZytxygKIrVnAZmAx6XIPz8P2I1fapQcnJ+urZ2L4
	gfzYTaTdklvCyYqjJAH6Qgx80vz3Sh9kukGAEupn923ZRU0Ia4dLY8aie2OeONUKUDJMAVjuGYa6i
	5Uhrv2wWOK+Ppn7j9M21xP9zfFVps0JV7sR5u43BlWGHNjCHwGHRQPBqpiLqMiWqrJyKSnWozQche
	MfOy8LIa3jS6PiFvRi1LOWkCGFXaXGSRBrdSQ+dBxQLnmiscsBk/YE346PfN6AAnvXEsdHLf86wXw
	F9iwnqaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK0gY-0000000BUQk-2Hd3;
	Tue, 27 May 2025 20:14:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK0gT-0000000BUMl-3GPu
	for barebox@lists.infradead.org;
	Tue, 27 May 2025 20:14:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uK0gS-0002Hl-GN; Tue, 27 May 2025 22:14:00 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uK0gS-000TVI-10;
	Tue, 27 May 2025 22:14:00 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uK0gS-003jQO-0i;
	Tue, 27 May 2025 22:14:00 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 27 May 2025 22:13:52 +0200
Message-Id: <20250527201359.889550-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250527201359.889550-1-a.fatoum@pengutronix.de>
References: <20250527201359.889550-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250527_131401_812860_2B4396CB 
X-CRM114-Status: GOOD (  10.67  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/9] fastboot: use correct format specifier for size_t
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When we start checking for format specifier to be correct in a follow-up
commit, we will get warnings that we are printing a size_t as if it were
an int. Fix this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/fastboot.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/common/fastboot.c b/common/fastboot.c
index 56bc4e82c4fe..de50797f31d8 100644
--- a/common/fastboot.c
+++ b/common/fastboot.c
@@ -398,7 +398,7 @@ void fastboot_download_finished(struct fastboot *fb)
 
 	printf("\n");
 
-	fastboot_tx_print(fb, FASTBOOT_MSG_INFO, "Downloading %d bytes finished",
+	fastboot_tx_print(fb, FASTBOOT_MSG_INFO, "Downloading %zu bytes finished",
 			  fb->download_bytes);
 
 	fastboot_tx_print(fb, FASTBOOT_MSG_OKAY, "");
@@ -421,7 +421,7 @@ static void cb_download(struct fastboot *fb, const char *cmd)
 	fb->download_size = simple_strtoul(cmd, NULL, 16);
 	fb->download_bytes = 0;
 
-	fastboot_tx_print(fb, FASTBOOT_MSG_INFO, "Downloading %d bytes...",
+	fastboot_tx_print(fb, FASTBOOT_MSG_INFO, "Downloading %zu bytes...",
 			  fb->download_size);
 
 	init_progression_bar(fb->download_size);
@@ -446,7 +446,7 @@ static void cb_download(struct fastboot *fb, const char *cmd)
 
 void fastboot_start_download_generic(struct fastboot *fb)
 {
-	fastboot_tx_print(fb, FASTBOOT_MSG_DATA, "%08x", fb->download_size);
+	fastboot_tx_print(fb, FASTBOOT_MSG_DATA, "%08zx", fb->download_size);
 }
 
 static void __maybe_unused cb_boot(struct fastboot *fb, const char *opt)
-- 
2.39.5



