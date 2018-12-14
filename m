Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXpJL-0006H9-Bl
 for barebox@lists.infradead.org; Fri, 14 Dec 2018 15:23:32 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <afa@pengutronix.de>) id 1gXpJ6-0002Wi-VS
 for barebox@lists.infradead.org; Fri, 14 Dec 2018 16:23:16 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.91)
 (envelope-from <afa@pengutronix.de>) id 1gXpJ6-0001v4-NM
 for barebox@lists.infradead.org; Fri, 14 Dec 2018 16:23:16 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 14 Dec 2018 16:23:05 +0100
Message-Id: <20181214152305.30412-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 1/2] include/linux/time.h: define USEC_PER_SEC and friends
To: barebox@lists.infradead.org

Linux has them in include/linux/time64.h and they are useful for
making (especially microsecond) use readable such as in read*_poll_timeout.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/time.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/include/linux/time.h b/include/linux/time.h
index 3a1bb50020fd..7903139a65b2 100644
--- a/include/linux/time.h
+++ b/include/linux/time.h
@@ -3,7 +3,13 @@
 
 #include <linux/types.h>
 
+#define MSEC_PER_SEC	1000L
+#define USEC_PER_MSEC	1000L
+#define NSEC_PER_USEC	1000L
+#define NSEC_PER_MSEC	1000000L
+#define USEC_PER_SEC	1000000L
 #define NSEC_PER_SEC	1000000000L
+#define FSEC_PER_SEC	1000000000000000LL
 
 struct timespec {
 	time_t	tv_sec;		/* seconds */
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
