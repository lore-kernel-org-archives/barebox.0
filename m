Delivery-date: Thu, 16 Mar 2023 08:38:36 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pciC2-002Urv-Vr
	for lore@lore.pengutronix.de; Thu, 16 Mar 2023 08:38:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pciC2-0000gv-RC
	for lore@pengutronix.de; Thu, 16 Mar 2023 08:38:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cFUnopejUiyJTQTrTk483hRktAXhymw+ZsQuweUw9Xk=; b=OCb9JUjuF1Vgzt
	lZ9hZfaBgTJfnhav5P1iCICJc8uuF7SyUsuEuXoFagfiVnXq/Fvo4QB5jUtaB6KxODMXxB6WCeWuk
	pj638MBy4Wj96r6y2daDgcLrttEq1P5CjmeSTXvzxkZ5D5GBBq6Cd9R1QBBiHEs/h/hZrVlYZEqs2
	3a+2IlwXE31ADBW35fqzu/YXcpvwrdVHntdX/OqegMkTknu+iPzlIdUkzExXGTRsrWIoBqSpCik/e
	FRs2o5aFNlSbntY4dXj5TNHFNWIU0vkJ3pIiKEj7Vrg8p0bAT6U66yw0QlHLBBmeXc6AnEM8pnnhR
	g1p0tJWne2+CdBXMo80w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pciAY-00FWh9-2J;
	Thu, 16 Mar 2023 07:37:02 +0000
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pciAU-00FWgT-2M
	for barebox@lists.infradead.org;
	Thu, 16 Mar 2023 07:37:00 +0000
Received: by mail-lj1-x235.google.com with SMTP id h9so692590ljq.2
        for <barebox@lists.infradead.org>; Thu, 16 Mar 2023 00:36:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678952214;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=cFUnopejUiyJTQTrTk483hRktAXhymw+ZsQuweUw9Xk=;
        b=ExGDucwI+LlvnseY40rK8RGTevjKQ+2WAFR6qg8kMILZuMLNKwk8FugbZb2ZAa3ikk
         b/iZgvgJpCdVp+v6upL34ucZh4cn7mAUMwtFnJ2DMWgQek8pHHy/bcMoCGKfSOV2gqcu
         hohg601B+F6aaxsamryJH6vSYrePSXz6ayTA6OTm7rcMrVFTWG28wz8wBNnQCgPxHhgz
         PcyGWzgyEc7VFFxcW4EKcKNddzCkz3YniQ2ehmkkKlUPnt+6JolMEORxFlVJz9dWT/Jf
         jv8ErM36MdHJgwgUkurZY6p18J1IHspiXqZV+O16htaSKiaG4VxVSRMGpRzCie+BxXTd
         t4xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678952214;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cFUnopejUiyJTQTrTk483hRktAXhymw+ZsQuweUw9Xk=;
        b=wu00nlAmK/SPHvjylZmn9xODtBsH9GxqKKu9HJcO2+ix+ibWRtYtL44G3M/dB68lzO
         TlDmRwjEjBEs41ZlC5laReukE/Dl1zkLprJikvae7CXBNT7S4EG7lqfWr/dHR6BNILCD
         LzR0vHcxuIMHxIUAZrCUF/C/uC308JLihCrTG1wyIKHW3jhb1vxgeWAYmlZ/hFnYEGdi
         CDQu71OPdkXfl0SB8MQpAajqGZYGcQwuDU138A0uM7bGhKjyy6gYzJIA4xYOLOd9I4Tl
         w/jIRRz9XAwbkK44ddg7fkNR8/4gVSMygju9sy25N8mtaUaIIFVQkn38cxJyE00chx0u
         mAHw==
X-Gm-Message-State: AO0yUKW6Zv0TLy5mn5kZQTwWK2e4i4+ABHA6ExNmHxP5EFw66ns/4nqT
	7zOKfM4ZlX+V4hehqhctUcTfeu/p2F9HPqTS
X-Google-Smtp-Source: AK7set/ZI3rTASSctN5gY9C55WYH6KD9ROOXK5KTJpdkY0U36LgDQH11e3VOtKmHEcAIXBhdqegpzw==
X-Received: by 2002:a2e:bea6:0:b0:298:591b:e998 with SMTP id a38-20020a2ebea6000000b00298591be998mr2351054ljr.34.1678952214571;
        Thu, 16 Mar 2023 00:36:54 -0700 (PDT)
Received: from localhost.localdomain ([193.232.173.109])
        by smtp.gmail.com with ESMTPSA id k2-20020a2ea282000000b00295b588d21dsm1125321lja.49.2023.03.16.00.36.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Mar 2023 00:36:54 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Thu, 16 Mar 2023 10:36:50 +0300
Message-Id: <20230316073650.4170874-1-denorl2009@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230316_003658_788738_24A27EEE 
X-CRM114-Status: GOOD (  12.51  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, Denis Orlov <denorl2009@gmail.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] lib: string: remove duplicated function
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We have two functions that are doing the same thing: 'strncasecmp' and
'strnicmp'. The only difference between them is that the latter is
correctly handling the len argument of 0. So rename it into the former
one ('strncasecmp', as it is the POSIX name for this function), deleting
the other implementation. As no one is actually using 'strnicmp', no
other code requires any fixes.

This change is effectively forwarded from the Linux commits
'lib/string.c: remove duplicated function'
(hash cd514e727b18ff4d189b8e268db13729a4175091) and
'lib/string.c: remove strnicmp()'
(hash af3cd13501eb04ca61d017ff4406f1cbffafdc04).

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 include/linux/string.h |  3 ---
 lib/string.c           | 48 +++++++++++++++---------------------------
 2 files changed, 17 insertions(+), 34 deletions(-)

diff --git a/include/linux/string.h b/include/linux/string.h
index 0c79d3e5cf..cd81ab1396 100644
--- a/include/linux/string.h
+++ b/include/linux/string.h
@@ -58,9 +58,6 @@ extern int strcmp(const char *,const char *);
 #ifndef __HAVE_ARCH_STRNCMP
 extern int strncmp(const char *,const char *,__kernel_size_t);
 #endif
-#ifndef __HAVE_ARCH_STRNICMP
-extern int strnicmp(const char *, const char *, __kernel_size_t);
-#endif
 #ifndef __HAVE_ARCH_STRCASECMP
 extern int strcasecmp(const char *s1, const char *s2);
 #endif
diff --git a/lib/string.c b/lib/string.c
index 005f4532bb..8ea68044cc 100644
--- a/lib/string.c
+++ b/lib/string.c
@@ -24,14 +24,28 @@
 #include <linux/ctype.h>
 #include <malloc.h>
 
-#ifndef __HAVE_ARCH_STRNICMP
+#ifndef __HAVE_ARCH_STRCASECMP
+int strcasecmp(const char *s1, const char *s2)
+{
+	int c1, c2;
+
+	do {
+		c1 = tolower(*s1++);
+		c2 = tolower(*s2++);
+	} while (c1 == c2 && c1 != 0);
+	return c1 - c2;
+}
+EXPORT_SYMBOL(strcasecmp);
+#endif
+
+#ifndef __HAVE_ARCH_STRNCASECMP
 /**
- * strnicmp - Case insensitive, length-limited string comparison
+ * strncasecmp - Case insensitive, length-limited string comparison
  * @s1: One string
  * @s2: The other string
  * @len: the maximum number of characters to compare
  */
-int strnicmp(const char *s1, const char *s2, size_t len)
+int strncasecmp(const char *s1, const char *s2, size_t len)
 {
 	/* Yes, Virginia, it had better be unsigned */
 	unsigned char c1, c2;
@@ -53,34 +67,6 @@ int strnicmp(const char *s1, const char *s2, size_t len)
 	} while (--len);
 	return (int)c1 - (int)c2;
 }
-EXPORT_SYMBOL(strnicmp);
-#endif
-
-#ifndef __HAVE_ARCH_STRCASECMP
-int strcasecmp(const char *s1, const char *s2)
-{
-	int c1, c2;
-
-	do {
-		c1 = tolower(*s1++);
-		c2 = tolower(*s2++);
-	} while (c1 == c2 && c1 != 0);
-	return c1 - c2;
-}
-EXPORT_SYMBOL(strcasecmp);
-#endif
-
-#ifndef __HAVE_ARCH_STRNCASECMP
-int strncasecmp(const char *s1, const char *s2, size_t n)
-{
-	int c1, c2;
-
-	do {
-		c1 = tolower(*s1++);
-		c2 = tolower(*s2++);
-	} while ((--n > 0) && c1 == c2 && c1 != 0);
-	return c1 - c2;
-}
 EXPORT_SYMBOL(strncasecmp);
 #endif
 
-- 
2.30.2



