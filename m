Delivery-date: Sat, 19 Jun 2021 05:28:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luRf4-0003J3-KL
	for lore@lore.pengutronix.de; Sat, 19 Jun 2021 05:28:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1luRf3-0000BR-OJ
	for lore@pengutronix.de; Sat, 19 Jun 2021 05:28:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5P1fPEQbque6YcPRUVu3ArwsA4Wy1NUUWdKLttxfrSY=; b=sDKb4ww+eeFaXk
	0ZRghqmnck8abukQsrLEwBnYVPvcoOGwjaiWb27NZjMMYZi6E6ULLIWDi+maJLGqgJx6lV/hiPcL4
	JO3J0yo6GeLKmNXFu+uIJVHkYQ1sCpFBaHJrzaa5B6nBZVA46Mf40tUt4FTglO9d53W7Ikk6rLjU/
	V03acGVxxx1RDAl04c8pzv1pPXbFIUoRKDwVRhTiZSfzsMeh8MQpoTOxHVQZoSA8EozTFLnXjteqz
	zFPoxiwEucOt7KGflY0YESYN7EGFXQLAgEhsiyafnkRk3M/jKplvn4kwBPK6CFH4NdGp7zJky32aC
	+sqnCZVYn5Y26NdVZhQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1luRda-00G7pB-Iy; Sat, 19 Jun 2021 03:27:14 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1luRdT-00G7nX-Ja
 for barebox@lists.infradead.org; Sat, 19 Jun 2021 03:27:09 +0000
Received: (Authenticated sender: ahmad@a3f.at)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 1A8FBC0004;
 Sat, 19 Jun 2021 03:27:01 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Sat, 19 Jun 2021 05:26:53 +0200
Message-Id: <20210619032654.455801-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.32.0.rc0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210618_202707_817798_5603D0B4 
X-CRM114-Status: GOOD (  11.41  )
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
Subject: [PATCH 1/2] string: implement strchrnul
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We have at least two places opencoding strchrnul, one of them needlessly
iterating twice instead of once over the string. Replace both by calling
a single pass implementation.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 commands/hwclock.c     |  8 --------
 drivers/of/base.c      |  5 +----
 include/linux/string.h |  4 ++++
 lib/string.c           | 18 ++++++++++++++++++
 4 files changed, 23 insertions(+), 12 deletions(-)

diff --git a/commands/hwclock.c b/commands/hwclock.c
index 1b5c2cd100ca..7a5600c456c9 100644
--- a/commands/hwclock.c
+++ b/commands/hwclock.c
@@ -9,14 +9,6 @@
 #include <string.h>
 #include <environment.h>
 
-static char *strchrnul(const char *s, int c)
-{
-	while (*s != '\0' && *s != c)
-		s++;
-
-	return (char *)s;
-}
-
 static int sscanf_two_digits(char *s, int *res)
 {
 	char buf[3];
diff --git a/drivers/of/base.c b/drivers/of/base.c
index 6e716fcdcf27..f375fcd67572 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2479,10 +2479,7 @@ struct device_node *of_get_stdoutpath(void)
 	if (!name)
 		return 0;
 
-	/* This could make use of strchrnul if it were available */
-	p = strchr(name, ':');
-	if (!p)
-		p = name + strlen(name);
+	p = strchrnul(name, ':');
 
 	q = xstrndup(name, p - name);
 
diff --git a/include/linux/string.h b/include/linux/string.h
index 55bc905c0e6b..47a27a391f0b 100644
--- a/include/linux/string.h
+++ b/include/linux/string.h
@@ -25,6 +25,10 @@ extern __kernel_size_t strspn(const char *,const char *);
 	(typeof(&(s1)[0]))(_strstr((s1), (s2))); \
 	})
 
+#ifndef __HAVE_ARCH_STRCHRNUL
+extern char * strchrnul(const char *,int);
+#endif
+
 /*
  * Include machine specific inline routines
  */
diff --git a/lib/string.c b/lib/string.c
index bad186586fac..9aeb1d883022 100644
--- a/lib/string.c
+++ b/lib/string.c
@@ -274,6 +274,24 @@ char * _strchr(const char * s, int c)
 #endif
 EXPORT_SYMBOL(_strchr);
 
+#ifndef __HAVE_ARCH_STRCHRNUL
+/**
+ * strchrnul - Find and return a character in a string, or end of string
+ * @s: The string to be searched
+ * @c: The character to search for
+ *
+ * Returns pointer to first occurrence of 'c' in s. If c is not found, then
+ * return a pointer to the null byte at the end of s.
+ */
+char *strchrnul(const char *s, int c)
+{
+	while (*s && *s != (char)c)
+		s++;
+	return (char *)s;
+}
+EXPORT_SYMBOL(strchrnul);
+#endif
+
 #ifndef __HAVE_ARCH_STRRCHR
 /**
  * strrchr - Find the last occurrence of a character in a string
-- 
2.32.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

