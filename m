Delivery-date: Tue, 27 May 2025 23:31:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uK1tv-000yNq-0S
	for lore@lore.pengutronix.de;
	Tue, 27 May 2025 23:31:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uK1ts-0005nU-Dz
	for lore@pengutronix.de; Tue, 27 May 2025 23:31:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zjBRmaqHoKTGbacN3K89noPFDl1wFrHh8G5Q74vcC4Y=; b=hXXJ6SXQWI/qfFCObSF5Sq7I/b
	bDMxzo6MFEYXBDMT7ABK1t3jvhiamW8J0+rMBZZ+Ce7ePJnmkhr6nYuqGIzKYXb+EeA1XifFcwZpJ
	GOM2RvQoMAg8IuuZcgz1NGc6HR8CCnWqJpWPu30umrAbwkRFZGHsRzc6cZ+lqJyR8gfnFCGyKeqHs
	iJdvVr/Zqu4oAhLJMW4aKUHB0/m+u4imLikT8vaKKVihy/QACOMcONVlP8b+JdboRnVm6x3MjYGjD
	3iVGR4FQ9bL9sAscNalgEce5wU3X9M/dfL6s+nTh0lKvnMGePs6X5ZfpqNmQBnMlPQOtcCT5SwpwX
	jhASex+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK1tH-0000000BbkK-2TJi;
	Tue, 27 May 2025 21:31:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK1lN-0000000BaxA-0c49
	for barebox@lists.infradead.org;
	Tue, 27 May 2025 21:23:10 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uK1lL-00015n-Lc
	for barebox@lists.infradead.org; Tue, 27 May 2025 23:23:08 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Date: Tue, 27 May 2025 23:22:51 +0200
Message-Id: <20250527212300.575031-7-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250527212300.575031-1-a.fatoum@barebox.org>
References: <20250527212300.575031-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250527_142309_190743_C31B66FA 
X-CRM114-Status: GOOD (  10.69  )
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
X-Spam-Status: No, score=-7.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 06/15] string: implement kmemdup_nul
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@pengutronix.de>

Unlike memdup and strdup, memdup_nul ensures that the output is NUL
terminated, while not expecting the input to be so.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 include/linux/string.h |  6 ++++++
 lib/string.c           | 42 ++++++++++++++++++++++++++----------------
 2 files changed, 32 insertions(+), 16 deletions(-)

diff --git a/include/linux/string.h b/include/linux/string.h
index 0fa84f095e02..953484ebc9f6 100644
--- a/include/linux/string.h
+++ b/include/linux/string.h
@@ -175,6 +175,12 @@ static inline void *memdup(const void *buf, size_t size)
 }
 #endif
 
+extern char *memdup_nul(const char *s, size_t len);
+static inline char *kmemdup_nul(const char *s, size_t len, gfp_t gfp)
+{
+	return memdup_nul(s, len);
+}
+
 #define memdup_array(arr, count) memdup(arr, array_size(count, sizeof(*arr)));
 
 static inline void *kmemdup(const void *src, size_t len, gfp_t gfp)
diff --git a/lib/string.c b/lib/string.c
index f2272be37e76..33d61add8189 100644
--- a/lib/string.c
+++ b/lib/string.c
@@ -423,42 +423,52 @@ size_t strnlen(const char * s, size_t count)
 #endif
 EXPORT_SYMBOL(strnlen);
 
-#ifndef __HAVE_ARCH_STRDUP
-char * strdup(const char *s)
+static __always_inline char *__memdup_nul(const char *s, size_t len)
 {
 	char *new;
 
 	if ((s == NULL)	||
-	    ((new = malloc (strlen(s) + 1)) == NULL) ) {
+	    ((new = malloc (len + 1)) == NULL) ) {
 		return NULL;
 	}
 
-	strcpy (new, s);
+	memcpy (new, s, len);
+	/* Ensure the buf is always NUL-terminated, regardless of @s. */
+	new[len] = '\0';
 	return new;
 }
+
+#ifndef __HAVE_ARCH_STRDUP
+char * strdup(const char *s)
+{
+	return s ? __memdup_nul(s, strlen(s)) : NULL;
+}
 #endif
 EXPORT_SYMBOL(strdup);
 
 #ifndef __HAVE_ARCH_STRNDUP
 char *strndup(const char *s, size_t n)
 {
-	char *new;
-	size_t len = strnlen(s, n);
-
-	if ((s == NULL) ||
-	    ((new = malloc(len + 1)) == NULL)) {
-		return NULL;
-	}
-
-	memcpy(new, s, len);
-	new[len] = '\0';
-
-	return new;
+	return s ? __memdup_nul(s, strnlen(s, n)) : NULL;
 }
 
 #endif
 EXPORT_SYMBOL(strndup);
 
+/**
+ * memdup_nul - Create a NUL-terminated string from @s, which might be unterminated.
+ * @s: The data to copy
+ * @len: The size of the data, not including the NUL terminator
+ *
+ * Return: newly allocated copy of @s with NUL-termination or %NULL in
+ * case of error
+ */
+char *memdup_nul(const char *s, size_t n)
+{
+	return s ? __memdup_nul(s, n) : NULL;
+}
+EXPORT_SYMBOL(memdup_nul);
+
 #ifndef __HAVE_ARCH_STRSPN
 /**
  * strspn - Calculate the length of the initial substring of @s which only
-- 
2.39.5



