Delivery-date: Wed, 26 Oct 2022 08:43:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ona8c-002guw-An
	for lore@lore.pengutronix.de; Wed, 26 Oct 2022 08:43:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ona8Z-0000Kr-Rk
	for lore@pengutronix.de; Wed, 26 Oct 2022 08:43:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mx/QY/tIfkMmGmM+GjNyXBlyo6IqiuOC7i8kLDZ+tO8=; b=EruUUcbswxNg11rqab5PYRXKE4
	OMeajaXaNRl8ED9T4rZ3ml9DQDYtnxSIQjntE5T0yO3G93ImvmphuhXPbQ4TZByrdHHrai9jLGOFj
	1+UO3L/Tn8y+Rfi1SI5DwIwuXiUaBigr7eXKoZvxFt4j07y6H3ZTw4JXgW5U2clLusmsacQ/Sk/N/
	A8J2eIO2j5tzGuC1cNuYw2akYaXbohTMnPsKE8CTtt6VKXPGVSVnGldZhLv4tkLTledN1caqauQrN
	FFGpUzMZVfV8Gyg8ro0d+AEkUC9oGXVZSqL520vN/SO2pAclokUgvMFRg2fDuj4FeT4niiY00l2Ki
	ZoXeb2JQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ona7M-008ILa-3M; Wed, 26 Oct 2022 06:42:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ona76-008IFa-Jp
	for barebox@lists.infradead.org; Wed, 26 Oct 2022 06:42:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1ona75-0008W6-Dc; Wed, 26 Oct 2022 08:42:07 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ona75-000SHc-Lc; Wed, 26 Oct 2022 08:42:06 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ona73-009tyZ-Ny; Wed, 26 Oct 2022 08:42:05 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 26 Oct 2022 08:42:02 +0200
Message-Id: <20221026064205.2360041-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221026064205.2360041-1-a.fatoum@pengutronix.de>
References: <20221026064205.2360041-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221025_234208_666979_87118721 
X-CRM114-Status: GOOD (  12.81  )
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
Subject: [PATCH 3/6] string: reduce strjoin runtime, drop trailing separator
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The implementation of strjoin is a bit suboptimal. The destination
string is traversed from the beginning due to strcat and we have a
left-over separator at the end, while it should only be in-between.

Fix this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/string.h |  1 +
 lib/string.c     | 15 +++++++++++----
 2 files changed, 12 insertions(+), 4 deletions(-)

diff --git a/include/string.h b/include/string.h
index 2cc727fd1d7a..596440ca8164 100644
--- a/include/string.h
+++ b/include/string.h
@@ -4,6 +4,7 @@
 
 #include <linux/string.h>
 
+void *mempcpy(void *dest, const void *src, size_t count);
 int strtobool(const char *str, int *val);
 char *strsep_unescaped(char **, const char *);
 char *stpcpy(char *dest, const char *src);
diff --git a/lib/string.c b/lib/string.c
index a500e8a3d1ba..edd36da4d4f2 100644
--- a/lib/string.c
+++ b/lib/string.c
@@ -603,6 +603,11 @@ void *__memcpy(void * dest, const void *src, size_t count)
 	__alias(__default_memcpy);
 #endif
 
+void *mempcpy(void *dest, const void *src, size_t count)
+{
+	return memcpy(dest, src, count) + count;
+}
+EXPORT_SYMBOL(mempcpy);
 
 #ifndef __HAVE_ARCH_MEMMOVE
 /**
@@ -943,7 +948,7 @@ char *strjoin(const char *separator, char **arr, size_t arrlen)
 {
 	size_t separatorlen;
 	int len = 1; /* '\0' */
-	char *buf;
+	char *buf, *p;
 	int i;
 
 	separatorlen = strlen(separator);
@@ -951,12 +956,14 @@ char *strjoin(const char *separator, char **arr, size_t arrlen)
 	for (i = 0; i < arrlen; i++)
 		len += strlen(arr[i]) + separatorlen;
 
-	buf = xzalloc(len);
+	p = buf = xmalloc(len);
 
 	for (i = 0; i < arrlen; i++) {
-		strcat(buf, arr[i]);
-		strcat(buf, separator);
+		p = stpcpy(p, arr[i]);
+		p = mempcpy(p, separator, separatorlen);
 	}
 
+	p[-separatorlen] = '\0';
+
 	return buf;
 }
-- 
2.30.2



