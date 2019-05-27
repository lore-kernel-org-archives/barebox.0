Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVCO5-0001n3-Mk
 for barebox@lists.infradead.org; Mon, 27 May 2019 09:57:55 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <afa@pengutronix.de>) id 1hVCO3-00021y-Ka
 for barebox@lists.infradead.org; Mon, 27 May 2019 11:57:47 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hVCO2-0003Cq-QT
 for barebox@lists.infradead.org; Mon, 27 May 2019 11:57:46 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 27 May 2019 11:57:30 +0200
Message-Id: <20190527095744.5923-5-a.fatoum@pengutronix.de>
In-Reply-To: <20190527095744.5923-1-a.fatoum@pengutronix.de>
References: <20190527095744.5923-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 04/18] scripts: includes: restrict strlcpy prototype to glibc
To: barebox@lists.infradead.org

Defining strlcpy here clashes on macOS, which has some compiler magic
around their strlcpy declaration. Fix this by inverting the check
to declare the prototype only if we are on __GLIBC__. As uClibc may
define __GLIBC__ as well, check for absence of its __UCLIBC__.

This is in-line with what Linux has been doing since 0215d59b15
("tools lib: Reinstate strlcpy() header guard with __UCLIBC__").

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/include/linux/string.h | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/scripts/include/linux/string.h b/scripts/include/linux/string.h
index e26223f1f287..649287b80a8c 100644
--- a/scripts/include/linux/string.h
+++ b/scripts/include/linux/string.h
@@ -8,7 +8,11 @@ void *memdup(const void *src, size_t len);
 
 int strtobool(const char *s, bool *res);
 
-#ifndef __UCLIBC__
+/*
+ * glibc based builds needs the extern while uClibc doesn't.
+ * However uClibc headers also define __GLIBC__ hence the hack below
+ */
+#if defined(__GLIBC) && !defined(__UCLIBC__)
 extern size_t strlcpy(char *dest, const char *src, size_t size);
 #endif
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
