Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TG6TA-0000eO-UT
 for barebox@lists.infradead.org; Mon, 24 Sep 2012 11:04:57 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 24 Sep 2012 13:04:30 +0200
Message-Id: <1348484692-24993-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1348484692-24993-1-git-send-email-s.hauer@pengutronix.de>
References: <1348484692-24993-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 01/23] err.h: introduce IS_ERR_OR_NULL
To: barebox@lists.infradead.org

Copied from Linux.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/linux/err.h |    5 +++++
 1 file changed, 5 insertions(+)

diff --git a/include/linux/err.h b/include/linux/err.h
index e0d8d2d..19fb70d 100644
--- a/include/linux/err.h
+++ b/include/linux/err.h
@@ -34,6 +34,11 @@ static inline long IS_ERR(const void *ptr)
 	return IS_ERR_VALUE((unsigned long)ptr);
 }
 
+static inline long __must_check IS_ERR_OR_NULL(const void *ptr)
+{
+	return !ptr || IS_ERR_VALUE((unsigned long)ptr);
+}
+
 /**
  * ERR_CAST - Explicitly cast an error-valued pointer to another pointer type
  * @ptr: The pointer to cast.
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
