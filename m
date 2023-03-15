Delivery-date: Wed, 15 Mar 2023 10:54:19 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pcNpq-001N5q-HF
	for lore@lore.pengutronix.de; Wed, 15 Mar 2023 10:54:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pcNpq-0001rL-4d
	for lore@pengutronix.de; Wed, 15 Mar 2023 10:54:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=0blFhKP/NLTNGRwmCZaMR2O5JBu5dwR9K68GnsSvVtQ=; b=0NkjjDU1LwkTg5gjZpi6iFqAKV
	u0Ds4JM9jwc/a9Wk9mum25bl45GP50GbKveIlplCxWg04SH9k5ly9TikH6rTjZAagoKLkPorjQ0um
	kL5g8ChY02DyDqF4MsN/s4WqdCdpD8GZmupY4xMVHWm7sYSejnnAFHWxkkDd4BVjkiKLipBk/l+Sg
	2dKPjuQLjAKM+WLZL14xaOS2G0xfD4CLjdMKUNKGlLpZtzcQVQEiTrBO44T+CLeFgJSmeHmBG/5qq
	OeO5lTvd42n50w/90ChPYXB3slNwnTBJdZ1XpkRKEPF7Bub+BqKwXOctym0ONJDJaypalBI5reOTL
	QmpPZYxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcNok-00CzeN-1J;
	Wed, 15 Mar 2023 09:53:10 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcNog-00Czcx-2H
	for barebox@lists.infradead.org;
	Wed, 15 Mar 2023 09:53:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pcNoc-0001kv-Sa; Wed, 15 Mar 2023 10:53:02 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pcNoc-004GxZ-7s; Wed, 15 Mar 2023 10:53:02 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pcNob-00CEkJ-63; Wed, 15 Mar 2023 10:53:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 15 Mar 2023 10:53:00 +0100
Message-Id: <20230315095300.2914980-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230315_025306_742628_61338A1F 
X-CRM114-Status: GOOD (  11.35  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fs: tftp: Fix NULL pointer deref in file upload
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

With TFTP upload the window cache is unused, but still freed in
tftp_do_close(). To avoid iterating on the uninitialized list,
initialize it unconditionally and not only for the download case.

Fixes: 3f1ea0ffcf8b ("tftp: implement UDP reorder cache using lists")
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/tftp.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/fs/tftp.c b/fs/tftp.c
index a63b133caa..c6edc9969f 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -384,10 +384,10 @@ static int tftp_allocate_transfer(struct file_priv *priv)
 			priv->fifo = NULL;
 			goto err;
 		}
-	} else {
-		INIT_LIST_HEAD(&priv->cache.blocks);
 	}
 
+	INIT_LIST_HEAD(&priv->cache.blocks);
+
 	return 0;
 
 err:
-- 
2.30.2



