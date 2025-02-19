Delivery-date: Wed, 19 Feb 2025 17:41:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tkn8p-004Nek-0P
	for lore@lore.pengutronix.de;
	Wed, 19 Feb 2025 17:41:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tkn8n-0004PB-TR
	for lore@pengutronix.de; Wed, 19 Feb 2025 17:41:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AoifssusXPVABCCC108TEwed+y6XgZO96vEjTLzagQA=; b=LDOV1ZuvttUPdz
	pWQnkKqgkxuIHyVMQKL9lnblToao59MAai5hDFsWEWiAOnkYMqAQtdQYU20NxRWNC1F7/HOGAp2c1
	V/5zEyCbHuKJ6rNGYbFiTMNA9m/b/CJojgB8yoyhjEQdKwWXN7UGkpNGF1IiTZPxqf55IwUmzeZGt
	EHs6cp+Tfx0vx80vAqX6Vd/Xw1k8MoJmJSNLPSQKRh7qDBWXSyndloPHPK+9Ip9vd3JCjf6f/nwye
	7aHv6O7qwudOMbftomw9o5dw7r+KRrFiSbvPNEm1B1u7MfCDlkJeYGn7wynIalBBAx9KiAvzxi7jj
	cjaOh2vEJWoaaU+wVfRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tkn8N-0000000DsNl-2cTZ;
	Wed, 19 Feb 2025 16:41:15 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tkkug-0000000DFC3-45Ja
	for barebox@bombadil.infradead.org;
	Wed, 19 Feb 2025 14:18:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=AoifssusXPVABCCC108TEwed+y6XgZO96vEjTLzagQA=; b=TdO+QScK6cu4orxuZwxBh8p4Mc
	R/Cg2m7mt5iNaz9aaVprn03JxWrGZCE3WohUm7ajkZ1xWGOsTCchne2VyUMy/PYCK3Gv/uIimIkBL
	XdjesNC/2LOlxDLnd4Z7Vvtn97heZjRZnhvRpS4SL5FTLBpS3ZQ6QPTt1GMrCwZsLI9khD++TeRb6
	g5S6r88cvD6XUBzmv5s3IFSV7sN7717lrnTqxbx2qcleN7pifPWkHvRAGIx/E7uZTnqK5oCYOHarq
	zzouoFbQS+iurPIXeOIU5Qinh81DxAit4Yb+D0444weyPcZb0JHm036TH48biRFNVb3+jegDrxVu5
	1cE3TYBg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tkkuc-00000002BES-381Z
	for barebox@lists.infradead.org;
	Wed, 19 Feb 2025 14:18:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tkkuZ-0005Qp-Cu; Wed, 19 Feb 2025 15:18:51 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tkkuZ-001mW1-0Y;
	Wed, 19 Feb 2025 15:18:51 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tkkuZ-0081Wd-09;
	Wed, 19 Feb 2025 15:18:51 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 19 Feb 2025 15:18:44 +0100
Message-Id: <20250219141844.1912413-6-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250219141844.1912413-1-s.hauer@pengutronix.de>
References: <20250219141844.1912413-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250219_141855_001619_D7B36E41 
X-CRM114-Status: GOOD (  11.84  )
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
Cc: Jonathan Bar Or <jonathanbaror@gmail.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/5] CVE-2025-26721: fs: pstore: fix malloc(size + constant) buffer overflow issues
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The pattern malloc(size + constant) is dangerous when size can be
manipulated by an attacker. In that case 'size' can be manipulated
in a way that 'size + constant' is 0 due to integer overflow. The
result is a zero sized buffer to which is then data written to.

Avoid this by using struct_size() instead.

Reported-by: Jonathan Bar Or <jonathanbaror@gmail.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/pstore/fs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/pstore/fs.c b/fs/pstore/fs.c
index 24b0fa5c9d..706c2d4684 100644
--- a/fs/pstore/fs.c
+++ b/fs/pstore/fs.c
@@ -62,7 +62,7 @@ int pstore_mkfile(struct pstore_record *record)
 			return -EEXIST;
 	}
 
-	private = xzalloc(sizeof(*private) + size);
+	private = xzalloc(struct_size(private, data, size));
 	private->type = record->type;
 	private->id = record->id;
 	private->count = record->count;
-- 
2.39.5



