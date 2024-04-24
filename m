Delivery-date: Wed, 24 Apr 2024 09:09:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzWkm-00ER7L-0w
	for lore@lore.pengutronix.de;
	Wed, 24 Apr 2024 09:09:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzWkg-0006Sv-Re
	for lore@pengutronix.de; Wed, 24 Apr 2024 09:09:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=w0jXPA6TKqeHFhxTZ9dcApQtmvoPqIwOa+yX1urVzQ8=; b=ECoBLWELkWzQCpKoXK7fOxkSrL
	oG9VmbUZF3Lz23Rjq/WFtuCOkezkY1SqDW7PPqntAUTrX1K5BeR020GD5AymaQKegjsHwlMgGaRww
	kJJRt7/qsdsDIAD28pRiTvBkuFtbndg9iFfey9jFJI8eFkZPf76f/3EUGWHH06e/XoTH/nQwk+WQF
	SOZqKj0zX5o+Oc4muuE+6ZWgKDkb1EJwlQWV3SPl+ChUtNE5copM3FzplgbWiI0iYVOzSKHq1fMzb
	PGMQXI/53j8lswv+R8VTwmqqDD8m7ijk1w+3+PQIMFD6fAYSv0h7rUUHt0UsePrGE8K9Eg+zr++05
	i0pQgXJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzWk9-0000000322i-37td;
	Wed, 24 Apr 2024 07:08:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzWjx-000000031tC-34y2
	for barebox@lists.infradead.org;
	Wed, 24 Apr 2024 07:08:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rzWjw-0005da-24; Wed, 24 Apr 2024 09:08:24 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rzWjv-00E24s-LZ; Wed, 24 Apr 2024 09:08:23 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rzWJT-00F8kt-1d;
	Wed, 24 Apr 2024 08:41:03 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 24 Apr 2024 08:40:47 +0200
Message-Id: <20240424064058.3608016-13-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240424064058.3608016-1-a.fatoum@pengutronix.de>
References: <20240424064058.3608016-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240424_000825_859570_47E6925B 
X-CRM114-Status: GOOD (  10.54  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 12/23] include: linux/slab: retire krealloc
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We have no users of this function in-tree, so it doesn't make sense to
invest the work to make it DMA compatible at the present.

Therefore, let's just remove it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/device.h | 2 --
 include/linux/slab.h   | 5 -----
 lib/kasan/test_kasan.c | 4 ++--
 3 files changed, 2 insertions(+), 9 deletions(-)

diff --git a/include/linux/device.h b/include/linux/device.h
index d892a9cb0ef5..66294910abb3 100644
--- a/include/linux/device.h
+++ b/include/linux/device.h
@@ -12,13 +12,11 @@
 #define __devm_wrapper(fn, dev, ...) ({ BUG_ON(!dev); fn(__VA_ARGS__); })
 
 #define devm_kmalloc(...)		__devm_wrapper(kmalloc, __VA_ARGS__)
-#define devm_krealloc(...)		__devm_wrapper(krealloc, __VA_ARGS__)
 #define devm_kvasprintf(...)		__devm_wrapper(kvasprintf, __VA_ARGS__)
 #define devm_kasprintf(...)		__devm_wrapper(kasprintf, __VA_ARGS__)
 #define devm_kzalloc(...)		__devm_wrapper(kzalloc, __VA_ARGS__)
 #define devm_kmalloc_array(...)		__devm_wrapper(kmalloc_array, __VA_ARGS__)
 #define devm_kcalloc(...)		__devm_wrapper(kcalloc, __VA_ARGS__)
-#define devm_krealloc_array(...)	__devm_wrapper(krealloc_array, __VA_ARGS__)
 #define devm_kfree(...)			__devm_wrapper(kfree, __VA_ARGS__)
 #define devm_kstrdup(...)		__devm_wrapper(kstrdup, __VA_ARGS__)
 #define devm_kstrdup_const(...)		__devm_wrapper(kstrdup_const, __VA_ARGS__)
diff --git a/include/linux/slab.h b/include/linux/slab.h
index 47b0aec7e3b8..eba3593d758a 100644
--- a/include/linux/slab.h
+++ b/include/linux/slab.h
@@ -107,11 +107,6 @@ static inline void *kcalloc(size_t n, size_t size, gfp_t flags)
 	return dma_zalloc(size_mul(n, size));
 }
 
-static inline void *krealloc(void *ptr, size_t size, gfp_t flags)
-{
-	return realloc(ptr, size);
-}
-
 static inline char *kstrdup(const char *str, gfp_t flags)
 {
 	return strdup(str);
diff --git a/lib/kasan/test_kasan.c b/lib/kasan/test_kasan.c
index a74251a6d9ad..bacc02b56e98 100644
--- a/lib/kasan/test_kasan.c
+++ b/lib/kasan/test_kasan.c
@@ -69,7 +69,7 @@ static noinline void malloc_oob_realloc_more(void)
 	size_t size1 = 17;
 	size_t size2 = 19;
 
-	pr_info("out-of-bounds after krealloc more\n");
+	pr_info("out-of-bounds after realloc more\n");
 	ptr1 = malloc(size1);
 	ptr2 = realloc(ptr1, size2);
 	if (!ptr1 || !ptr2) {
@@ -92,7 +92,7 @@ static noinline void malloc_oob_realloc_less(void)
 	size_t size1 = 17;
 	size_t size2 = 15;
 
-	pr_info("out-of-bounds after krealloc less\n");
+	pr_info("out-of-bounds after realloc less\n");
 	ptr1 = malloc(size1);
 	ptr2 = realloc(ptr1, size2);
 	if (!ptr1 || !ptr2) {
-- 
2.39.2



