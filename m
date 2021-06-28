Delivery-date: Mon, 28 Jun 2021 07:24:43 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lxjlD-0008HV-52
	for lore@lore.pengutronix.de; Mon, 28 Jun 2021 07:24:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lxjlB-0002pY-PW
	for lore@pengutronix.de; Mon, 28 Jun 2021 07:24:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aY5ULftD73hqLmL581al/DsptHbnPK6ZdHGHs/NzjZI=; b=c0t+CznGnDbHtb
	67ilHalM1poDSa1+7MAszFvf9w1lZ59NdunPYhaNLgyi565r7velk7jlG6JfUQ31wBtdonCs/UMgB
	Sig7qDKMS4rVcpyG37jLLac4Fpbj549iH9/0KXB1qL8zIEF8d3B9VHXKZg38Mb8RVjCqLoJdcrCYd
	9Ld3u4maTWyJ+5a0qYaMA3pGwfUPTsp6wo2mWImqpI0syqEoUsE+aL0Ddqcg439/lWixw7E8JtnTd
	AWtek90AToaJZ35apSIM4lYzdGAADIwhfJ84ue8/0GVg4BODuvCr7tCW6JvN8vW5gd8HUdd6fUKT0
	K4TVgbGTVZhHZSFuJBFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lxjjO-006o5W-3G; Mon, 28 Jun 2021 05:22:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lxjgK-006nZy-57
 for barebox@lists.infradead.org; Mon, 28 Jun 2021 05:19:41 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lxjgF-0002Mu-IE; Mon, 28 Jun 2021 07:19:35 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lxjgF-0002Vm-9h; Mon, 28 Jun 2021 07:19:35 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 28 Jun 2021 07:19:33 +0200
Message-Id: <20210628051934.9604-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210627_221940_295560_AEEA128F 
X-CRM114-Status: GOOD (  13.68  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/2] string: implement strchrnul
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We have at least two places opencoding strchrnul, one of them needlessly
iterating twice instead of once over the string. Replace both by calling
a common single pass implementation.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  no change
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
index f962159597df..1a1265bdd689 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2497,10 +2497,7 @@ struct device_node *of_get_stdoutpath(void)
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
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

