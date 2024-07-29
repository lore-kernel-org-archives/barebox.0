Delivery-date: Mon, 29 Jul 2024 16:43:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYRb1-004A3p-12
	for lore@lore.pengutronix.de;
	Mon, 29 Jul 2024 16:43:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYRb0-000203-Kk
	for lore@pengutronix.de; Mon, 29 Jul 2024 16:43:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=7yi6iCHdff+1TGmdXPF8ZrMn/5YxVrbhvXnKzNia3hc=; b=WZvLIo9bh/zM8sGy4O8sYjrQVT
	3is809NgZI7ITo8zrctVUSPO+uPv0KsKZTgXTgnXUPJ4vop1mewcZVVVfJnmtVj3aA6vETK2QcxcA
	Eut09o3uOT/9tlcRqEFx3uh0is33+XOY8nIDlnMp448HbmU4+Is1LRAsnbaycIngZPex/yEkNgcpG
	bGgems+NcB+UFLb+ZxWwdxOTBB515wZs7GErkAM/uTLf1hFJbbOjC8urRh96F51ClELd3zpz9g9l0
	C6ltGvzfK2vvcjIzZSfqQrpV7lfkpP4Z47N3CJb6c5Uuc4FNTWBqSq6xyM0+MektGhxpisgndYHAF
	RbgLs9tQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYRaa-0000000BhUo-3MlK;
	Mon, 29 Jul 2024 14:43:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYRSU-0000000BdeH-3k84
	for barebox@lists.infradead.org;
	Mon, 29 Jul 2024 14:34:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sYRSS-0000lL-AV; Mon, 29 Jul 2024 16:34:40 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sYRSR-0034CT-Tw; Mon, 29 Jul 2024 16:34:39 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sYRSR-0011kQ-2d;
	Mon, 29 Jul 2024 16:34:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 29 Jul 2024 16:34:39 +0200
Message-Id: <20240729143439.245039-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240729_073442_979434_FF231F7C 
X-CRM114-Status: GOOD (  10.39  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] optee: ioctl takes unsigned int argument
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Fix incompatible pointer warning. the ioctl() op now takes a unsigned
int as command argument.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/tee/tee_core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/tee/tee_core.c b/drivers/tee/tee_core.c
index 45fa9b5670..e9b99c990d 100644
--- a/drivers/tee/tee_core.c
+++ b/drivers/tee/tee_core.c
@@ -448,7 +448,7 @@ tee_ioctl_close_session(struct tee_context *ctx,
 	return ctx->teedev->desc->ops->close_session(ctx, arg.session);
 }
 
-static int tee_ioctl(struct cdev *cdev, int cmd, void *arg)
+static int tee_ioctl(struct cdev *cdev, unsigned int cmd, void *arg)
 {
 	struct tee_context *ctx = cdev->priv;
 	void __user *uarg = (void __user *)arg;
-- 
2.39.2



