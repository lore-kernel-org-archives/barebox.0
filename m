Delivery-date: Thu, 23 Jan 2025 14:12:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tax0Q-003STE-0L
	for lore@lore.pengutronix.de;
	Thu, 23 Jan 2025 14:12:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tax0Q-0000Ha-7u
	for lore@pengutronix.de; Thu, 23 Jan 2025 14:12:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=27BLEWLk2VxSAHqQy0hX+M8E9vzNriL8Sl+gWcGHrDY=; b=yw8k7Adb0hUhC+43bzBsZg6cix
	RG+26Us5l6NvnxPBhFpf1A7/fGVb0AtE/PDy6zadQh17aawzOgzClNZwPvGHxsgevMfSMG4RWHA5S
	TAd3iIpr5dvyAzVam8hE8M1JHU03avL4hdBP52GohwRwvyXDq7VnBs0+er85LJIPMGciRJubCpQpc
	fH42NUR8YyKn9lmxIZyhiGOaFB/f43eUv5G10aOY1/hWpwSu98qHt4wsO+g2Gr+w1E4QEOW3WWLzq
	loUIvC41+b4K9Db5GYR9T3AmBaz5W4tglFq6ab9780UD++pK5wJp+/BR09ew2rIVzKX8ekHbssPdE
	SpubIwFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tawzj-0000000CUjm-3aTb;
	Thu, 23 Jan 2025 13:11:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tawzg-0000000CUjR-2wF0
	for barebox@lists.infradead.org;
	Thu, 23 Jan 2025 13:11:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tawzc-00007i-Tm; Thu, 23 Jan 2025 14:11:32 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tawzc-001T1O-2K;
	Thu, 23 Jan 2025 14:11:32 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tawzc-00GwjJ-1w;
	Thu, 23 Jan 2025 14:11:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 23 Jan 2025 14:11:31 +0100
Message-Id: <20250123131131.4038998-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250123_051136_737304_64C8C32B 
X-CRM114-Status: GOOD (  11.18  )
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
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH] console: print countdown aborted message only once
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

console_countdown_abort() can be called multiple times. Print the
message only the first time it is called.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/console_countdown.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/console_countdown.c b/common/console_countdown.c
index 1e4a1d849d..5664556422 100644
--- a/common/console_countdown.c
+++ b/common/console_countdown.c
@@ -16,7 +16,7 @@ static bool console_countdown_timeout_abort;
 
 void console_countdown_abort(const char *reason)
 {
-	if (reason)
+	if (reason && !console_countdown_timeout_abort)
 		pr_info("\nCount down aborted by %s\n", reason);
 	console_countdown_timeout_abort = true;
 }
-- 
2.39.5



