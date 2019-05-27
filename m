Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVCO5-0001nA-Mv
 for barebox@lists.infradead.org; Mon, 27 May 2019 09:57:52 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <afa@pengutronix.de>) id 1hVCO3-000225-On
 for barebox@lists.infradead.org; Mon, 27 May 2019 11:57:47 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hVCO2-0003EB-Tz
 for barebox@lists.infradead.org; Mon, 27 May 2019 11:57:46 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 27 May 2019 11:57:37 +0200
Message-Id: <20190527095744.5923-12-a.fatoum@pengutronix.de>
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
Subject: [PATCH 11/18] scripts: mkimage: s/fdatasync/fsync/ on macOS & OpenBSD
To: barebox@lists.infradead.org

fdatasync is an optional part of POSIX and mkimage uses the more general
fsync on Sun and FreeBSD as an alternative. Add macOS[1] and OpenBSD to the
list as well.

This is in-line with what U-Boot does since 31cbe80c33
("mkimage: fix compilation issues on OpenBSD").

[1]: macOS >=10.7 does indeed define (but not declare anywhere) a seemingly
     working fdatasync, but we won't consider this here.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/mkimage.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/scripts/mkimage.c b/scripts/mkimage.c
index 891d7b6de71c..7d283c550930 100644
--- a/scripts/mkimage.c
+++ b/scripts/mkimage.c
@@ -572,7 +572,11 @@ NXTARG:		;
 	}
 
 	/* We're a bit of paranoid */
-#if defined(_POSIX_SYNCHRONIZED_IO) && !defined(__sun__) && !defined(__FreeBSD__)
+#if defined(_POSIX_SYNCHRONIZED_IO) && \
+   !defined(__sun__) && \
+   !defined(__FreeBSD__) && \
+   !defined(__OpenBSD__) && \
+   !defined(__APPLE__)
 	(void) fdatasync (ifd);
 #else
 	(void) fsync (ifd);
@@ -622,7 +626,11 @@ NXTARG:		;
 	(void) munmap((void *)ptr, sbuf.st_size);
 
 	/* We're a bit of paranoid */
-#if defined(_POSIX_SYNCHRONIZED_IO) && !defined(__sun__) && !defined(__FreeBSD__)
+#if defined(_POSIX_SYNCHRONIZED_IO) && \
+   !defined(__sun__) && \
+   !defined(__FreeBSD__) && \
+   !defined(__OpenBSD__) && \
+   !defined(__APPLE__)
 	(void) fdatasync (ifd);
 #else
 	(void) fsync (ifd);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
