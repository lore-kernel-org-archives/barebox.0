Delivery-date: Mon, 09 Feb 2026 16:29:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpTCU-00Ab7Q-2K
	for lore@lore.pengutronix.de;
	Mon, 09 Feb 2026 16:29:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpTCT-00007v-Oc
	for lore@pengutronix.de; Mon, 09 Feb 2026 16:29:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=be8drmbbhs6vL6LxGqtfK5lWGuAbehNqV1SHqP8D/08=; b=WMiisT3qAgCbz8piKzr/xdbFRd
	ztqj3dodXmr0AiexPBYZUqCi4AtDp0bMIYE36H+MXOeNa9jSbiDzHaw/zOYbc1tZym/T1ZT2hrHOG
	frv/6TcX+VdRVe+B2xLAYjpuKOs4HAMQbOb+bpdMVwsXOpmpY8Q5FhmuZbVLPH9WdJinvk8ZT6rak
	o5S5Uc4nItHTYO+G9QN/zYkn972jb3ML4M337JbCcHd6Y80rqr0wwQZmiO+x0R2npBUoIk0Xs/Xfz
	yYVL8R1ABHF3I7Y73XH1En1UhFVc2KqxvnLFtSCN1vX3xDe4/bNryY2hmrCFpjYlfdXBzhwdBPHdv
	hgq4SA4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpTC0-0000000FboA-17hU;
	Mon, 09 Feb 2026 15:28:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpTBw-0000000Fbno-2swH
	for barebox@lists.infradead.org;
	Mon, 09 Feb 2026 15:28:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vpTBu-0008SZ-Kl; Mon, 09 Feb 2026 16:28:46 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vpTBv-004uYb-0P;
	Mon, 09 Feb 2026 16:28:46 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vpTBu-00000007jC0-1WKl;
	Mon, 09 Feb 2026 16:28:46 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  9 Feb 2026 16:28:42 +0100
Message-ID: <20260209152843.1841982-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260209_072848_726115_78A59A2B 
X-CRM114-Status: UNSURE (   8.66  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: [PATCH] ci: container: install isoinfo package into container
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

OS installation images are often distributed as ISOs, but barebox has no
ISO file system support. This is currently not needed as Grub has isofs
support and barebox just looks at the GPT parts of the hybrid image,
which references only grub.

However, this isn't enough when we need to reference the kernel boot
artifacts from ISO images in upcoming changes to the test suite, so prepare
for that by including genisoimage into the test suite

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/Containerfile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/test/Containerfile b/test/Containerfile
index 196000ce1c8e..8b0c37a6b20a 100644
--- a/test/Containerfile
+++ b/test/Containerfile
@@ -21,6 +21,7 @@ RUN apt-get update && apt-get upgrade && apt-get install -y --no-install-recomme
 	libc6-i386 \
 	libgit2-dev \
 	libguestfs-tools \
+	genisoimage \
 	lz4 \
 	librsvg2-bin \
 	libseccomp-dev \
-- 
2.47.3



