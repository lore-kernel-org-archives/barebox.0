Delivery-date: Tue, 11 Feb 2025 10:36:27 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1thmgu-000xI1-1N
	for lore@lore.pengutronix.de;
	Tue, 11 Feb 2025 10:36:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1thmgt-0005Xn-5G
	for lore@pengutronix.de; Tue, 11 Feb 2025 10:36:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=7rPEIeiDYCsPQKr4UKPlOkCr3zd5g1CPyso0wc13CKo=; b=1FUTK9pDM1zrPQZVZUfgQib4aD
	kH/gXSFXY0bUZ8FzOjSzDuy+ngY1EwrD+DH3MHNdogT7JaBfq3qyUm5AOB6rxsdKSizNfcR0KkPJv
	FKEUZvWBcN51cEMTrjz7GZOyn3HSevtZxIbUSFV8GfyhfHh6tM0McJ3yiW8KLQKexrZziUScrocFS
	3Rz5/gYq23US/jAaV4GDgPAb4nCz7LpJ9IcWdIExnA6gN7EDLyVLbZP2AJnxhJo4uRDLvGqJFT5K8
	+ev/nLHvcaydC9ggDAhqdRPow2EDuw0oJOgTnDDjoz8by6SZKjB9OqHBKbqZwstKW3hvjPUoPaAql
	8ClmfIbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1thmgJ-00000003C6C-26C4;
	Tue, 11 Feb 2025 09:35:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thmfO-00000003Bt1-0A0C
	for barebox@lists.infradead.org;
	Tue, 11 Feb 2025 09:34:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <uol@pengutronix.de>)
	id 1thmfL-0005IQ-Hx; Tue, 11 Feb 2025 10:34:51 +0100
Received: from dude03.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::39])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <uol@pengutronix.de>)
	id 1thmfL-000OVq-1B;
	Tue, 11 Feb 2025 10:34:51 +0100
Received: from uol by dude03.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <uol@pengutronix.de>)
	id 1thmfL-009LIK-0l;
	Tue, 11 Feb 2025 10:34:51 +0100
From: =?UTF-8?q?Ulrich=20=C3=96lmann?= <u.oelmann@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 11 Feb 2025 10:34:49 +0100
Message-Id: <20250211093449.2226799-1-u.oelmann@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250211_013454_103577_A08E3D25 
X-CRM114-Status: UNSURE (   9.66  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] partitions: efi: fix error message in mkpart
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Provided the condition in the if-clause is correct fix the off-by-one in
calculating the maximum. Additionally print end_lba instead of start_lba.

Signed-off-by: Ulrich Ölmann <u.oelmann@pengutronix.de>
---
 common/partitions/efi.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/partitions/efi.c b/common/partitions/efi.c
index 6caa3919832c..b5b4d378e69b 100644
--- a/common/partitions/efi.c
+++ b/common/partitions/efi.c
@@ -651,8 +651,8 @@ static __maybe_unused int efi_partition_mkpart(struct partition_desc *pd,
 	}
 
 	if (end_lba >= last_lba(pd->blk) - 33) {
-		pr_err("invalid end LBA %lld, maximum is %lld\n", start_lba,
-		       last_lba(pd->blk) - 33);
+		pr_err("invalid end LBA %lld, maximum is %lld\n", end_lba,
+		       last_lba(pd->blk) - 34);
 		return -EINVAL;
 	}
 
-- 
2.39.5



