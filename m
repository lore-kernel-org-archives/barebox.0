Delivery-date: Fri, 24 Jun 2022 16:19:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o4k9o-00DHxp-7n
	for lore@lore.pengutronix.de; Fri, 24 Jun 2022 16:19:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o4k9o-0000cK-8B
	for lore@pengutronix.de; Fri, 24 Jun 2022 16:19:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=gSU6TB27RH5PtdRufZxyOh+oLcuGSj6VHmCjRAMMie4=; b=SkqBVz0zQ7V1ESjo8orwt8EUtG
	hD242rCeES7ceKaHrEn8QtXgysvO0kGbVvXwJxhUcTgPOX1o5LfpuqIs/jxV9Tsc/q1SYDwLxaFUY
	Mq1nN9mBUP2Xe0pzKKrSYSXqrY5hz9/+gk/e79Mvg/oa4GJ4WUfYVhdnvLS2HlrLhnvJFSWoRL1+H
	lhsx4shwD6mGnKpuWV8UATcz+M294ZxYiFfwWMaP98Q1FOS5SMbel8iXuCdJXRQsDLHR9TAcnR3R6
	Z5TyjI2PaxoJsZXKw0ERbqKWeFi+unXKOGwhSkGyZX5fvJzAq4UtCTKUTjWYJ51LXHVYNgwC+5ig/
	u76etVYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4k73-002ZA9-Rh; Fri, 24 Jun 2022 14:16:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4k6y-002Z8h-1H
	for barebox@lists.infradead.org; Fri, 24 Jun 2022 14:16:41 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <bst@pengutronix.de>)
	id 1o4k6t-0000ET-7c; Fri, 24 Jun 2022 16:16:35 +0200
From: Bastian Krause <bst@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Bastian Krause <bst@pengutronix.de>
Date: Fri, 24 Jun 2022 16:16:32 +0200
Message-Id: <20220624141632.380159-1-bst@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220624_071640_111155_C7A7DCC4 
X-CRM114-Status: UNSURE (   9.68  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] crypto: skip make dependency for CONFIG_CRYPTO_RSA_KEY=__ENV__*
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

CONFIG_CRYPTO_RSA_KEY allows referring to environment variables, e.g.
__ENV__FOO tells barebox' rsatoc to use the value of the environment
variable "FOO".

There is no point in creating a make dependency for such values.
Actually looking into the environment variable and deciding whether it is
a PKCS#11 URI or a file seems unnecessarily complex. Let's filter out
these special values and leave the error handling to rsatoc.

Fixes: a05ac5545c ("crypto: simplify $(srctree)/ handling and remove config_filename macro")
Signed-off-by: Bastian Krause <bst@pengutronix.de>
---
 crypto/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/crypto/Makefile b/crypto/Makefile
index 7e67f58bc7..762d7e543b 100644
--- a/crypto/Makefile
+++ b/crypto/Makefile
@@ -28,7 +28,7 @@ $(obj)/rsa.o: $(obj)/rsa-keys.h
 
 CONFIG_CRYPTO_RSA_KEY := $(CONFIG_CRYPTO_RSA_KEY:"%"=%)
 
-ifneq ($(filter-out pkcs11:%, $(CONFIG_CRYPTO_RSA_KEY)),)
+ifneq ($(filter-out pkcs11:% __ENV__%, $(CONFIG_CRYPTO_RSA_KEY)),)
 RSA_DEP := $(CONFIG_CRYPTO_RSA_KEY)
 endif
 
-- 
2.30.2



