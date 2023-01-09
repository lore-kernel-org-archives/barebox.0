Delivery-date: Mon, 09 Jan 2023 16:13:33 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pEtqA-006ldI-8j
	for lore@lore.pengutronix.de; Mon, 09 Jan 2023 16:13:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pEtq7-0003l4-N0
	for lore@pengutronix.de; Mon, 09 Jan 2023 16:13:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/uKDVjKxiv6iqk3m2jNEgW+5k9A5GQCrxNIhgoyMZA4=; b=SCBcOOs/yjGfteggiLiAajy18B
	HjyQOLYKx6+QU23gEr+xfkQB9CeDa1kT15r7o5qL0vpGqHeUx5pQ35I9ARxS+4mr9F1wkrEBIy/OK
	08MIoFWeERy+dyoNQtyQQedTk/DEnLRohbDNiyTilxb8r2BPH32fMXKtO8tVN+eiK55kJERLybQqM
	tAhXrp7uMufH3f/6+Ou1MZRJX4QhL+mTXcqRU4h0YgDDunaJIFmooQ/xd2D5OQ/mLClvhBsXkXJAN
	haBaf+rU9q1z/OnwoF3/fC5QvVSuYwMU9d31SjcDAKXfbIXME8Rzmz6UAGM/PCYwXC+YS1zyPAv1s
	KQLjSaeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEton-0028Fb-Sj; Mon, 09 Jan 2023 15:12:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEtoc-00289c-Oi
	for barebox@lists.infradead.org; Mon, 09 Jan 2023 15:12:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pEtob-0003Mh-IK; Mon, 09 Jan 2023 16:11:57 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pEtoa-004sbR-Vq; Mon, 09 Jan 2023 16:11:56 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pEtoZ-008by3-NW; Mon, 09 Jan 2023 16:11:55 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  9 Jan 2023 16:11:51 +0100
Message-Id: <20230109151152.2052493-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230109151152.2052493-1-a.fatoum@pengutronix.de>
References: <20230109151152.2052493-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230109_071158_821557_808F0CDA 
X-CRM114-Status: UNSURE (   9.41  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 6/7] include: linux/slab.h: define krealloc/kstrdup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We already have a number of stubs for other kmalloc* functions, so add
these two as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/slab.h | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/include/linux/slab.h b/include/linux/slab.h
index eb14c58e340f..dc80808938f4 100644
--- a/include/linux/slab.h
+++ b/include/linux/slab.h
@@ -3,6 +3,9 @@
 #ifndef _LINUX_SLAB_H
 #define _LINUX_SLAB_H
 
+#include <malloc.h>
+#include <linux/string.h>
+
 #define SLAB_CONSISTENCY_CHECKS	0
 #define SLAB_RED_ZONE		0
 #define SLAB_POISON		0
@@ -103,6 +106,16 @@ static inline void *kcalloc(size_t n, size_t size, gfp_t flags)
 	return calloc(n, size);
 }
 
+static inline void *krealloc(void *ptr, size_t size, gfp_t flags)
+{
+	return realloc(ptr, size);
+}
+
+static inline char *kstrdup(const char *str, gfp_t flags)
+{
+	return strdup(str);
+}
+
 #define kstrdup_const(str, flags) strdup(str)
 #define kfree_const(ptr) kfree((void *)ptr)
 
-- 
2.30.2



