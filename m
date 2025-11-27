Delivery-date: Thu, 27 Nov 2025 09:03:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOWyG-005M91-0V
	for lore@lore.pengutronix.de;
	Thu, 27 Nov 2025 09:03:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOWyF-0004Nt-LC
	for lore@pengutronix.de; Thu, 27 Nov 2025 09:03:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ZAD9jRR1g5SBUtSpOVfkrkhRFjYfmEkVyW5KulCqcH0=; b=qmrKmjK+CC3XY6w8mLeGdJT/0R
	59z5/3orQEukO7YcBePkf6e1o4ksj2/42I2QcBkMnc3fdZTYkVSwIPDAJBHNaM+4wqX+59Nm1G3aa
	R/km7kCjmBoyntr8HRf7nDdA9CF0SJdPn1r0Am3S6NTQ3FZpX4mFl+i+ER3tEJXV8MwXmBaEhZhnj
	YrWIMQvCMU01A5JItOOx7zrwBZnOtcoUT+FK681nhrue22MD2xgbNoSKVTbvT0YCcLfwmocqEhKKk
	KQCuY3BGVRciVrI98iyOkggWjGP3clreLX6vTppDkbgIO8TdoPdsHECFPEB9TaX8fAH8lfH5l9q42
	62DXO7uQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOWxl-0000000GAtF-47vl;
	Thu, 27 Nov 2025 08:02:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOWxj-0000000GAsN-1X4g
	for barebox@lists.infradead.org;
	Thu, 27 Nov 2025 08:02:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vOWxh-0004IW-Pk; Thu, 27 Nov 2025 09:02:45 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vOWxh-002kdn-1w;
	Thu, 27 Nov 2025 09:02:45 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vOWxh-0000000BTaq-3uim;
	Thu, 27 Nov 2025 09:02:45 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 27 Nov 2025 09:02:44 +0100
Message-ID: <20251127080244.2735357-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251127_000247_401158_08315105 
X-CRM114-Status: UNSURE (   8.77  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] test: ramfs: close opened directory
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The directory opened with opendir() is never closed. Call closedir() to
avoid memory leaks.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 test/self/ramfs.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/test/self/ramfs.c b/test/self/ramfs.c
index 3fb3812cb6..f0535fe558 100644
--- a/test/self/ramfs.c
+++ b/test/self/ramfs.c
@@ -86,6 +86,8 @@ static void test_tree(const char *path, struct test_tree_ctx *ctx)
 
 	}
 
+	closedir(dir);
+
 	popd(oldwd);
 }
 
-- 
2.47.3



