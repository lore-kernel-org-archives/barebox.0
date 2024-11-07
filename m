Delivery-date: Thu, 07 Nov 2024 09:46:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8yAF-005rCq-2S
	for lore@lore.pengutronix.de;
	Thu, 07 Nov 2024 09:46:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8yAG-0007BX-6s
	for lore@pengutronix.de; Thu, 07 Nov 2024 09:46:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fBTjgTTgTYWIIeaVre1Gvgt84L2K96uHwTmXksBtCgQ=; b=jjBxqaKtyXt1md3acgx54m4iii
	UeJlP1RbjYMeDoZ3n33mOyPIvHZgSWOm9dUpdqbk2YgDLMHQCzD5hbmVQ0xSgyz4guwpjnKZoaJbg
	wCA7c6h4YyVZspZInyK2OiJt5w+uAVABybq1eYB/9L+Vv7agw5acuPMA1j8Kb8FJNlpcbKMjPUnjv
	DO0jxrEFMMfJJzsJCy9gACamy+9TPKJA7rsIfTJszK9yDA8C90l5jLujl3vnaOpKzgvOmZJIfSwyR
	ZKzHKr1lm3eegQ00mEZYUrMr3i4O5fTawodZtjb2MH5HRQhPnRd1Tl+nAqXWXxqqxS80+H3PY9AMa
	Q1Wkbz5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t8yA5-00000006Azc-3vup;
	Thu, 07 Nov 2024 08:46:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t8wrt-00000005yca-3Gnl
	for barebox@lists.infradead.org;
	Thu, 07 Nov 2024 07:23:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t8wrc-0007zk-Fe; Thu, 07 Nov 2024 08:23:32 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t8wrc-002QOw-0u;
	Thu, 07 Nov 2024 08:23:32 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t8wrc-006rNQ-0i;
	Thu, 07 Nov 2024 08:23:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 07 Nov 2024 08:23:31 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241107-fs-tftp-v1-2-39d7e1cff418@pengutronix.de>
References: <20241107-fs-tftp-v1-0-39d7e1cff418@pengutronix.de>
In-Reply-To: <20241107-fs-tftp-v1-0-39d7e1cff418@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1730964212; l=2969;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=xvgGfRXp6gK15LZdumlrWSbHwjJnF3Our+NFWGi7IXY=;
 b=a71HBfiLgCYCgfq/dKEqDqhsOImPqgeC6FwMGHWqdv32jHTUb9oxZ/JcnUaMPq299QwwrH/qi
 b8JXtqbwxIkAH7Y5wXbjbjLE5UhhfeGAWV3ZK7iONxfXb7DBakLT6hz
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241106_232349_856279_00F9E7FF 
X-CRM114-Status: GOOD (  17.10  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/4] fs: tftp: cache dentries for some time
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For TFTP we always returned invalid in the d_revalidate op. This has
the effect that we always look on the server if a file still exists, but
has also the effect that we initiate multiple tftp connections when we
want to transfer a file.

This patch introduces a grace time of two seconds in which a dentry will
be valid before looking it up on the server again. Two seconds is long
enough for not initiating multiple TFTP connections when transferring a
file and also short enough that changes on the server will be recognized
by barebox.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/tftp.c | 58 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++--
 1 file changed, 56 insertions(+), 2 deletions(-)

diff --git a/fs/tftp.c b/fs/tftp.c
index c6edc9969f..cc9c4ab1f7 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -130,6 +130,16 @@ struct tftp_priv {
 	IPaddr_t server;
 };
 
+struct tftp_inode {
+	struct inode inode;
+	u64 time;
+};
+
+static struct tftp_inode *to_tftp_inode(struct inode *inode)
+{
+	return container_of(inode, struct tftp_inode, inode);
+}
+
 static inline bool is_block_before(uint16_t a, uint16_t b)
 {
 	return (int16_t)(b - a) > 0;
@@ -939,10 +949,14 @@ static struct inode *tftp_get_inode(struct super_block *sb, const struct inode *
                                      umode_t mode)
 {
 	struct inode *inode = new_inode(sb);
+	struct tftp_inode *node;
 
 	if (!inode)
 		return NULL;
 
+	node = to_tftp_inode(inode);
+	node->time = get_time_ns();
+
 	inode->i_ino = get_next_ino();
 	inode->i_mode = mode;
 
@@ -1015,7 +1029,47 @@ static const struct inode_operations tftp_dir_inode_operations =
 	.create = tftp_create,
 };
 
-static const struct super_operations tftp_ops;
+static struct inode *tftp_alloc_inode(struct super_block *sb)
+{
+	struct tftp_inode *node;
+
+	node = xzalloc(sizeof(*node));
+	if (!node)
+		return NULL;
+
+	return &node->inode;
+}
+
+static void tftp_destroy_inode(struct inode *inode)
+{
+	struct tftp_inode *node = to_tftp_inode(inode);
+
+	free(node);
+}
+
+static const struct super_operations tftp_ops = {
+	.alloc_inode = tftp_alloc_inode,
+	.destroy_inode = tftp_destroy_inode,
+};
+
+static int tftp_lookup_revalidate(struct dentry *dentry, unsigned int flags)
+{
+	struct tftp_inode *node;
+
+	if (!dentry->d_inode)
+		return 0;
+
+	node = to_tftp_inode(dentry->d_inode);
+
+	if (is_timeout(node->time, 2 * SECOND))
+		return 0;
+
+	return 1;
+}
+
+static const struct dentry_operations tftp_dentry_operations = {
+	.d_revalidate = tftp_lookup_revalidate,
+};
 
 static int tftp_probe(struct device *dev)
 {
@@ -1034,7 +1088,7 @@ static int tftp_probe(struct device *dev)
 	}
 
 	sb->s_op = &tftp_ops;
-	sb->s_d_op = &no_revalidate_d_ops;
+	sb->s_d_op = &tftp_dentry_operations;
 
 	inode = tftp_get_inode(sb, NULL, S_IFDIR);
 	sb->s_root = d_make_root(inode);

-- 
2.39.5



