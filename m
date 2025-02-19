Delivery-date: Wed, 19 Feb 2025 17:41:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tkn8q-004Nf6-16
	for lore@lore.pengutronix.de;
	Wed, 19 Feb 2025 17:41:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tkn8p-0004Qa-5m
	for lore@pengutronix.de; Wed, 19 Feb 2025 17:41:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EEiNh6j5j42/Z6AQWFjJCf1Ke7U1Hgc3jE5eGyVpoMo=; b=Cuayi10o02XA6u
	QvDRaBDpTWrDpzTmoLCgx18gquQYkkqPRp+6uQkUIROodq8YRPnusqY5rWaq+bfOXYpSEbnEvIF76
	mFysWMvhk4KVSu0/GG1wrcwl8Bt/Hx6SCa/4I+biADc9lPa8J4jzHO2AevngDjWAzHC+UPpJgxvsq
	XRgY2k1K4kaClvWwyGU1tD1TU+eOKmQ3nAoIxTcPXF/0hms0Z2pzjLu6VEq1p5khRBwaLVJAcum5/
	uHexYGW7pzlFzD+GIsDTA+hYkw4JerKsZJH6+E/c13KnUCMdktATx/x//IdG4Tnj2VTwORHfbWzPh
	Uy3KI7xV5N6H2pO6HZ4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tkn8O-0000000DsOl-44AX;
	Wed, 19 Feb 2025 16:41:16 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tkkug-0000000DFC6-43SI
	for barebox@bombadil.infradead.org;
	Wed, 19 Feb 2025 14:18:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=EEiNh6j5j42/Z6AQWFjJCf1Ke7U1Hgc3jE5eGyVpoMo=; b=UmlhRlCv/pnjY1e1Mwru12wPea
	/wEBGddE3WicXSUv6CQy8sXtSju2AQV02d7Rta4nRmg1HmOehzSOmHjIUcRuDhTNdcDUtUlnEi9Ds
	3yYicATOStXMCQxZjEAwJHF7ia4WGtyA9B5d2D9ftoIJeuCCHeBI51HShqyvzIC5uW70EROiW7+52
	lNwhZ9xGSiykA6mdZDqQHqpbJcJ46s3gUR1qo9MTTIZ6HOMM317RfjH/AYlpxrIvEFIzR19AxVqst
	z8OjgSbrUD2oXMMqlIo89xBWK+LZUhusmmHM6gg4fcOa9BLiZST4d+Zin7BbW/8v4ZPs+ev4L1I86
	g8OetMww==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tkkuc-00000002BEP-2fx1
	for barebox@lists.infradead.org;
	Wed, 19 Feb 2025 14:18:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tkkuZ-0005Q6-78; Wed, 19 Feb 2025 15:18:51 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tkkuZ-001mVs-00;
	Wed, 19 Feb 2025 15:18:51 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tkkuY-0081Wd-2s;
	Wed, 19 Feb 2025 15:18:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 19 Feb 2025 15:18:41 +0100
Message-Id: <20250219141844.1912413-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250219141844.1912413-1-s.hauer@pengutronix.de>
References: <20250219141844.1912413-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250219_141855_011216_EFC2EA36 
X-CRM114-Status: GOOD (  12.53  )
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
Subject: [PATCH 2/5] CVE-2025-26724: fs: cramfs: fix malloc(size + constant) buffer overflow issues
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The pattern malloc(size + constant) is dangerous when size can be
manipulated by an attacker. In that case 'size' can be manipulated
in a way that 'size + constant' is 0 due to integer overflow. The
result is a zero sized buffer to which is then data written to.

Avoid this by using size_add() instead.

Reported-by: Jonathan Bar Or <jonathanbaror@gmail.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/cramfs/cramfs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/cramfs/cramfs.c b/fs/cramfs/cramfs.c
index e554ebef6f..641a6d2b05 100644
--- a/fs/cramfs/cramfs.c
+++ b/fs/cramfs/cramfs.c
@@ -423,7 +423,7 @@ static const char *cramfs_get_link(struct dentry *dentry, struct inode *inode)
 {
 	int ret;
 
-	inode->i_link = xzalloc(inode->i_size + 1);
+	inode->i_link = xzalloc(size_add(inode->i_size, 1));
 
 	ret = cramfs_read_file(inode, 0, inode->i_link, inode->i_size);
 	if (ret < 0)
-- 
2.39.5



