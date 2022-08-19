Delivery-date: Fri, 19 Aug 2022 12:57:26 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oOzgt-0040yH-Hp
	for lore@lore.pengutronix.de; Fri, 19 Aug 2022 12:57:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oOzgr-0000ke-EY
	for lore@pengutronix.de; Fri, 19 Aug 2022 12:57:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=SOgwK6pc8HNK+U7eCND8NNZQPvIGUuz8y7IWuZOXchk=; b=NK2yWmEjemodxlaUj6Cx+4YOFj
	2izuD+le3sNUZH4ayDCMmRD9IlPTOIKtYQHFSiIAJkmiH2/VKcet7ZDFou8i9wUv+n7VcvfJEXFQY
	KFz+HlNvMo0maREabTnZe7sgsC52KKK9fxC6cf9vUIDE5VbAOVDvzVT+rxy+aWYn2iaRomrjEOBa7
	mu8U23f45e7bS9q8rcF2coLO1vDmDUFKUWKchGcfumzlEinOxxAtJ/ufXLrbwZgIBbmod6W1Cj/lH
	YWZZeyH7KePKt+co5MlDsf8Ovaw5a2kLxOkVPAw8pT9DIfh8cmlATrK5yCyKNjlxecU/fFdBLgwgO
	kYx0zmgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOzf4-006Axa-If; Fri, 19 Aug 2022 10:55:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOzez-006AeJ-JF
	for barebox@lists.infradead.org; Fri, 19 Aug 2022 10:55:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oOzet-0000Oy-UP; Fri, 19 Aug 2022 12:55:23 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oOzet-000h5x-8M; Fri, 19 Aug 2022 12:55:23 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oOzes-00G965-Hn; Fri, 19 Aug 2022 12:55:22 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 19 Aug 2022 12:55:21 +0200
Message-Id: <20220819105521.3848169-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220819_035529_652135_5E958778 
X-CRM114-Status: UNSURE (   8.68  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master] fs: ubootvarfs: fix double-free unlinking U-Boot variables
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We free the struct ubootvarfs_inode::var as part of destroy_inode. In
case we have unlinked the U-Boot variable beforehand, we will end up
double-freeing. Set the member to NULL, so it's skipped in
destory_inode. We keep the free in destroy_inode, because that's still
needed for all the other inodes that aren't unlinked.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/ubootvarfs.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/fs/ubootvarfs.c b/fs/ubootvarfs.c
index 475e4b7a79c4..147fee1ea631 100644
--- a/fs/ubootvarfs.c
+++ b/fs/ubootvarfs.c
@@ -259,6 +259,7 @@ static int ubootvarfs_unlink(struct inode *dir, struct dentry *dentry)
 
 		list_del(&var->list);
 		free(var);
+		node->var = NULL;
 	}
 
 	return simple_unlink(dir, dentry);
-- 
2.30.2



