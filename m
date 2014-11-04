Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Xladz-0003uS-5H
 for barebox@lists.infradead.org; Tue, 04 Nov 2014 09:43:20 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1Xladd-0002Wv-6s
 for barebox@lists.infradead.org; Tue, 04 Nov 2014 10:42:57 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue,  4 Nov 2014 10:42:52 +0100
Message-Id: <1415094176-26435-6-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1415094176-26435-1-git-send-email-l.stach@pengutronix.de>
References: <1415094176-26435-1-git-send-email-l.stach@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 06/10] lib: add wchar strdup
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 include/wchar.h |  2 ++
 lib/wchar.c     | 16 ++++++++++++++++
 2 files changed, 18 insertions(+)

diff --git a/include/wchar.h b/include/wchar.h
index 80dcd81bf442..702d8e239a7c 100644
--- a/include/wchar.h
+++ b/include/wchar.h
@@ -5,6 +5,8 @@
 
 typedef u16 wchar_t;
 
+wchar_t *strdup_wchar(const wchar_t *src);
+
 char *strcpy_wchar_to_char(char *dst, const wchar_t *src);
 
 wchar_t *strcpy_char_to_wchar(wchar_t *dst, const char *src);
diff --git a/lib/wchar.c b/lib/wchar.c
index 6368a019941e..b2e9e7545b1f 100644
--- a/lib/wchar.c
+++ b/lib/wchar.c
@@ -31,6 +31,22 @@ size_t wcslen(const wchar_t *s)
 	return len;
 }
 
+wchar_t *strdup_wchar(const wchar_t *src)
+{
+	int len = wcslen(src);
+	wchar_t *tmp, *dst;
+
+	if (!(dst = malloc((len + 1) * sizeof(wchar_t))))
+		return NULL;
+
+	tmp = dst;
+
+	while ((*dst++ = *src++))
+		/* nothing */;
+
+	return tmp;
+}
+
 char *strcpy_wchar_to_char(char *dst, const wchar_t *src)
 {
 	char *ret = dst;
-- 
2.1.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
