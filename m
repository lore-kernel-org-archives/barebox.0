Delivery-date: Mon, 21 Jun 2021 12:29:04 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvHAu-00017Y-El
	for lore@lore.pengutronix.de; Mon, 21 Jun 2021 12:29:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvHAt-0008PL-Li
	for lore@pengutronix.de; Mon, 21 Jun 2021 12:29:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jjiQqE9EbTZWI+P6UXRWs153InvTS3aeUs4N2O1K+OI=; b=NXXLNlDP6LJn/0
	TyJC64/t4ZrpiDRr+a2gKO/IS9GR/1TmxSWRQKPYVltfo7QszU92jrmUwtLE382Wn8trtfgCg/HjL
	2dDkQN4kcEyuqjWsAMhvThojVSS2MOOhRBVn3cxiwmjt/c3p2oyeqY/3yxfRe0EBPGJIsy9p2SRtQ
	tneut9u0bQTwQBNeKYbcB+h2sfPUE7Z6rlcnU91qQGXHe9wpeM84ImR34diJcHaDc9pFQ7cMjsKg+
	gCF3Et+iq3QYOwU2BvpBU5ZoWXz+X5/wFN5N5/N5XHdSdjTMPPHZ8LkX8u6APSYvQ9TylEAgxL9Jw
	mKD+M96FnmfjtGfmQx6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvH9P-0035uD-5R; Mon, 21 Jun 2021 10:27:31 +0000
Received: from magratgarlick.emantor.de ([78.46.208.201])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvH9J-0035tY-EA
 for barebox@lists.infradead.org; Mon, 21 Jun 2021 10:27:27 +0000
Received: by magratgarlick.emantor.de (Postfix, from userid 114)
 id 89220867D3; Mon, 21 Jun 2021 12:27:20 +0200 (CEST)
Received: from localhost (unknown
 [IPv6:2001:9e8:2176:4102:c0d3:dbff:fefe:ff70])
 by magratgarlick.emantor.de (Postfix) with ESMTPSA id CA2AD867C9;
 Mon, 21 Jun 2021 12:27:19 +0200 (CEST)
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Mon, 21 Jun 2021 12:27:07 +0200
Message-Id: <20210621102706.586345-1-r.czerwinski@pengutronix.de>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210621_032725_670797_CDC1E98B 
X-CRM114-Status: UNSURE (   7.88  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] image-sparse: remove unused define
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

CONFIG_FASTBOOT_FLASH_FILLBUF_SIZE is present since the very first
addition of sparse image support. However its not used anywhere in the
code, so remove it.

Fixes: 13f649a4f960 ("Add support for fastboot sparse images")

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 lib/image-sparse.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/lib/image-sparse.c b/lib/image-sparse.c
index c375c78d63..eb5242e25a 100644
--- a/lib/image-sparse.c
+++ b/lib/image-sparse.c
@@ -46,10 +46,6 @@
 
 #include <linux/math64.h>
 
-#ifndef CONFIG_FASTBOOT_FLASH_FILLBUF_SIZE
-#define CONFIG_FASTBOOT_FLASH_FILLBUF_SIZE (1024 * 512)
-#endif
-
 struct sparse_image_ctx {
 	int fd;
 	struct sparse_header sparse;
-- 
2.31.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

