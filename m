Delivery-date: Mon, 05 Sep 2022 17:38:53 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oVEBY-007etT-5X
	for lore@lore.pengutronix.de; Mon, 05 Sep 2022 17:38:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oVEBX-0002vu-6z
	for lore@pengutronix.de; Mon, 05 Sep 2022 17:38:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=W3h42qv+AnB1gpwIPea0CHRyRRQPwxCsBGDAtasmCZo=; b=AtAYb06l3SPn9L1leSCR9C0CZa
	UWCry3+mWiQy06/PNYRTJm9fg782zfLy8HDNMAuTJKIL8aoOn81iuNlccAeFPAknR6GFt4QSClee6
	11eZNRvZGTfKzhrjkFfj8wtBc1eWfj3ZCej66D08CxgxlbqGiPtcBBPcbfrQszKIXX/q7EXeTpFQX
	QnoGNd5NFwIZVdzXvT5GO459DldixWI7XRLy90UDH2Rx0ZeXj6BtaNyUTzzv0NOGf2+hebNYvpGx5
	Q5r4G+71aNc77mDGwaXzmTT/u8by7CyUOo4RIdy1X7SYLUKDk1hv9Xs/fMRXYIwxcpp/6EjBvww8z
	seaHSeaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVE9i-0064Bn-U1; Mon, 05 Sep 2022 15:36:59 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV8q8-00H4D0-7n
	for barebox@bombadil.infradead.org; Mon, 05 Sep 2022 09:56:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=W3h42qv+AnB1gpwIPea0CHRyRRQPwxCsBGDAtasmCZo=; b=H/YRQW82xDHXAGiApDsP5RrvwG
	SMn8ANzEtTC+L5sbY24aRp+FZLqcUTu3V20wngH0OmUYS7x7shCbNScDkXURjgIRWVP8320s536rE
	1jjyxu9lULvZABcpBC+pXJmqixdwmTPxpH3JajHDiX4uUjlJ80TZU6EFyzsD7H5ALKNpc9VqeKgKu
	xpTK8v2mttPaLaYaX+jHd6MDPIO9eDct7zZjzK/cj7n6jlY2y9zab3wFE/vFPB/G/snnp3M7y7rkU
	oiKdlKE7gHGChEJIP2uuHeU1IE2DO3ZnXTBAF+2T6ZUa5JjCNhIij4Snvo5fbTSjKCTpEI7lqsoVv
	6Sg3nQSw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV8q0-009UjR-8F
	for barebox@lists.infradead.org; Mon, 05 Sep 2022 09:56:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8ps-0008I5-7X; Mon, 05 Sep 2022 11:56:08 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8pp-0042H9-IV; Mon, 05 Sep 2022 11:56:07 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8pm-002Wev-3w; Mon, 05 Sep 2022 11:56:02 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Sep 2022 11:55:52 +0200
Message-Id: <20220905095557.596891-28-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220905095557.596891-1-a.fatoum@pengutronix.de>
References: <20220905095557.596891-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220905_105616_726589_53671E8B 
X-CRM114-Status: GOOD (  11.02  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 27/32] fs: ext4: ext_barebox: handle ext_get_inode() errors
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Static analyzer laments ext_get_inode, which can fail not having its
failure condition checked. Fix this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/ext4/ext_barebox.c | 18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)

diff --git a/fs/ext4/ext_barebox.c b/fs/ext4/ext_barebox.c
index 8f318a49c008..6c7c9885c48f 100644
--- a/fs/ext4/ext_barebox.c
+++ b/fs/ext4/ext_barebox.c
@@ -127,8 +127,8 @@ static struct dentry *ext_lookup(struct inode *dir, struct dentry *dentry,
 
 	if (ino) {
 		inode = ext_get_inode(dir->i_sb, ino);
-
-		d_add(dentry, inode);
+		if (inode)
+			d_add(dentry, inode);
 	}
 
 	return NULL;
@@ -218,6 +218,8 @@ struct inode *ext_get_inode(struct super_block *sb, int ino)
 	node = container_of(inode, struct ext2fs_node, i);
 
 	ret = ext4fs_read_inode(fs->data, ino, &node->inode);
+	if (ret)
+		return NULL;
 
 	inode->i_ino = ino;
 	inode->i_mode = le16_to_cpu(node->inode.mode);
@@ -262,23 +264,27 @@ static int ext_probe(struct device_d *dev)
 
 	ret = fsdev_open_cdev(fsdev);
 	if (ret)
-		goto err_open;
+		goto err;
 
 	fs->cdev = fsdev->cdev;
 
 	ret = ext4fs_mount(fs);
 	if (ret)
-		goto err_mount;
+		goto err;
 
 	sb->s_op = &ext_ops;
 
 	inode = ext_get_inode(sb, 2);
+	if (!inode) {
+		ret = -EINVAL;
+		goto err;
+	}
+
 	sb->s_root = d_make_root(inode);
 
 	return 0;
 
-err_mount:
-err_open:
+err:
 	free(fs);
 
 	return ret;
-- 
2.30.2



