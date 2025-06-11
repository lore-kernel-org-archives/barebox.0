Delivery-date: Wed, 11 Jun 2025 17:20:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPNFG-006ByS-2F
	for lore@lore.pengutronix.de;
	Wed, 11 Jun 2025 17:20:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPNFG-000609-72
	for lore@pengutronix.de; Wed, 11 Jun 2025 17:20:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pnEiYSAFej21y3ficCwgpVZvTGKsmxhYkbeGcmkavSY=; b=HOy6QwrBUDMfCE3fg9ruZxycFi
	v6eu3eawyVCZNDH8k5kVQa4zlk+l0uzZ8m6+xtVw+vbB6/jYJhvCOgVefe7bhOEjVCxQO3UaUdOuv
	QL0urKWOAE7QFWXTAZ5mFiz0F2WUtzISscZA7diQQaL12FIKd8XRMNBsqMDm38RpcwhGIBESz0g+q
	tDThZCRWlYgNzj2VS6fv6IrpS9vFtZbRjPjUbmukgSOr6+L8jjg3pKIYk65HhpIkKzlHoVwaQxc6m
	fTxZeiEVu8P9CHwnodVnDX8XDsD3N+YigOztQnQwNvyz+DpbJKB8jGALR2haS55Dm/LQZNWt8itRz
	4cd+pGgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPNEo-0000000AMeG-0U2m;
	Wed, 11 Jun 2025 15:19:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPK4Q-00000009nbf-3Ced
	for barebox@lists.infradead.org;
	Wed, 11 Jun 2025 11:56:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uPK4M-0004H9-PN; Wed, 11 Jun 2025 13:56:38 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uPK4M-002wNS-1w;
	Wed, 11 Jun 2025 13:56:38 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uPK4M-00E1Mv-1b;
	Wed, 11 Jun 2025 13:56:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 11 Jun 2025 13:56:35 +0200
Message-Id: <20250611115635.3341350-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250611115635.3341350-1-s.hauer@pengutronix.de>
References: <20250611115635.3341350-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250611_045642_802150_EB469804 
X-CRM114-Status: UNSURE (   9.30  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] fs: unreference path in canonicalize_path()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

canonicalize_path() missed to unreference the path after usage, so the
filesystem containing *pathname can't be unmounted anymore. This happens
for example on a 'findmnt /mnt/mmc2.1' after which /mnt/mmc2.1 cannot be
unmounted.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fs.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/fs/fs.c b/fs/fs.c
index 18343552a7..8689e14e68 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -2996,6 +2996,8 @@ char *canonicalize_path(int dirfd, const char *pathname)
 		goto out;
 
 	res = dpath(path.dentry, d_root);
+
+	path_put(&path);
 out:
 	errno_set(ret);
 	return res;
-- 
2.39.5



