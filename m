Delivery-date: Mon, 25 Nov 2024 16:32:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFb4r-000G1J-1e
	for lore@lore.pengutronix.de;
	Mon, 25 Nov 2024 16:32:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFb4q-0003wL-TA
	for lore@pengutronix.de; Mon, 25 Nov 2024 16:32:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GIchWp2ntprXVQ3bBoHjuJ9HSHW3M4Qk1XsQRnXWMIA=; b=YIWQ+gpw5u5KenD0vkiREDVEWy
	/NZ8J3HrZQ9umw6zyHJKc2ZLS3pvZ/jdxW1widAQyD5KyzJJU8HVVb6y9ZFy+qB0uab8GVBu42bHV
	W2RV2YqsiElfe58yKldTeg0enFwcsYY3r7k/jQC3JmrHJg1yhjMsSFakvy7LgXB+KdZjRjmZR3T8E
	YqGATTIKH80bn5C6W1w855ZGugMkg6nWGTHj8Z01H5JDgf/nmLASjhejwWx+54r83Ky+/0R642dr+
	xH1icsd/vo/0B7GDdxG3LF0yY0ejbXK5/uHCefkQE3QQNaWU15Ckp3ZkHXzv6dZo5wNJOhjhHFbwM
	DIXgUjQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFb4Q-00000008Uvn-3eKk;
	Mon, 25 Nov 2024 15:32:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFb1m-00000008UGb-2JCu
	for barebox@lists.infradead.org;
	Mon, 25 Nov 2024 15:29:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFb1l-00036K-9V; Mon, 25 Nov 2024 16:29:29 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFb1k-0006QO-0y;
	Mon, 25 Nov 2024 16:29:29 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFb1k-002dWd-19;
	Mon, 25 Nov 2024 16:29:29 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 25 Nov 2024 16:29:23 +0100
Message-Id: <20241125152927.546493-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241125152927.546493-1-a.fatoum@pengutronix.de>
References: <20241125152927.546493-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241125_072930_588160_BE494832 
X-CRM114-Status: GOOD (  16.41  )
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
Subject: [PATCH 3/7] string: implement proper strdup_const/free_const
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We currently implement strdup_const as strdup, which is correct, but
leaves the benefits of a proper implementation on the table:
Reducing allocations for .rodata strings, which have static storage
duration anyway.

Let's implement it properly using the newly added is_barebox_rodata
and add free_const, dma_free_const and kfree_const that go along with
it.

There will be a slight difference to Linux in our API though: In Linux
devm_kfree can be used with devm_kstrdup_const, but kfree can't be used
with kstrdup_const and instead kfree_const needs to be used.

In barebox, we kfree and kfree_const is identical. This is because Linux
gives kfree a const void * parameter and we have existing code that uses
const pointers to the heap and passes them to kfree and it's not worth
risking memory corruption in this case.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/dma.h          |  5 +++++
 include/linux/slab.h   |  7 ++++---
 include/linux/string.h |  5 +++++
 lib/string.c           | 28 ++++++++++++++++++++++++++++
 4 files changed, 42 insertions(+), 3 deletions(-)

diff --git a/include/dma.h b/include/dma.h
index 1f650aecb950..5877f4b13c0d 100644
--- a/include/dma.h
+++ b/include/dma.h
@@ -46,6 +46,11 @@ static inline void dma_free(void *mem)
 	free(mem);
 }
 
+static inline void dma_free_const(const void *mem)
+{
+	free_const(mem);
+}
+
 static inline void dma_free_sensitive(void *mem)
 {
 	free_sensitive(mem);
diff --git a/include/linux/slab.h b/include/linux/slab.h
index 5e08c7697daf..93ce25a58299 100644
--- a/include/linux/slab.h
+++ b/include/linux/slab.h
@@ -59,9 +59,11 @@ static inline void kmem_cache_destroy(struct kmem_cache *cache)
 
 static inline void kfree(const void *mem)
 {
-	dma_free((void *)mem);
+	dma_free_const(mem);
 }
 
+#define kfree_const(ptr) dma_free_const(ptr)
+
 static inline void kfree_sensitive(const void *objp)
 {
 	dma_free_sensitive((void *)objp);
@@ -112,7 +114,6 @@ static inline char *kstrdup(const char *str, gfp_t flags)
 	return strdup(str);
 }
 
-#define kstrdup_const(str, flags) strdup(str)
-#define kfree_const(ptr) kfree((void *)ptr)
+#define kstrdup_const(str, flags) strdup_const(str)
 
 #endif /* _LINUX_SLAB_H */
diff --git a/include/linux/string.h b/include/linux/string.h
index 5d5824b61bf0..0fa84f095e02 100644
--- a/include/linux/string.h
+++ b/include/linux/string.h
@@ -93,6 +93,11 @@ extern __kernel_size_t strnlen(const char *,__kernel_size_t);
 #ifndef __HAVE_ARCH_STRDUP
 extern char * strdup(const char *);
 #endif
+
+extern void free_const(const void *x);
+extern const char *strdup_const(const char *s);
+const char *xstrdup_const(const char *s);
+
 #ifndef __HAVE_ARCH_STRNDUP
 extern char *strndup(const char *, size_t);
 #endif
diff --git a/lib/string.c b/lib/string.c
index cab543baf38d..f2272be37e76 100644
--- a/lib/string.c
+++ b/lib/string.c
@@ -24,6 +24,7 @@
 #include <linux/ctype.h>
 #include <asm/word-at-a-time.h>
 #include <malloc.h>
+#include <asm-generic/sections.h>
 
 #ifndef __HAVE_ARCH_STRCASECMP
 int strcasecmp(const char *s1, const char *s2)
@@ -1055,6 +1056,33 @@ char *strjoin(const char *separator, char **arr, size_t arrlen)
 }
 EXPORT_SYMBOL(strjoin);
 
+const char *xstrdup_const(const char *str)
+{
+	if (is_barebox_rodata((ulong)str))
+		return str;
+
+	return xstrdup(str);
+}
+EXPORT_SYMBOL(xstrdup_const);
+
+const char *strdup_const(const char *str)
+{
+	if (is_barebox_rodata((ulong)str))
+		return str;
+
+	return strdup(str);
+}
+EXPORT_SYMBOL(strdup_const);
+
+void free_const(const void *str)
+{
+	if (is_barebox_rodata((ulong)str))
+		return;
+
+	free((void *)str);
+}
+EXPORT_SYMBOL(free_const);
+
 /**
  * strreplace - Replace all occurrences of character in string.
  * @str: The string to operate on.
-- 
2.39.5



