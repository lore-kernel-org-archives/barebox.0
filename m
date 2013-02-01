Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f174.google.com ([209.85.217.174])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U1L41-0002SV-AP
 for barebox@lists.infradead.org; Fri, 01 Feb 2013 18:10:14 +0000
Received: by mail-lb0-f174.google.com with SMTP id l12so4737996lbo.5
 for <barebox@lists.infradead.org>; Fri, 01 Feb 2013 10:10:11 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri,  1 Feb 2013 22:22:18 +0400
Message-Id: <1359742941-30516-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1359742941-30516-1-git-send-email-antonynpavlov@gmail.com>
References: <1359742941-30516-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v3 1/4] gpiolib: fix whitespaces
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 include/gpio.h |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/gpio.h b/include/gpio.h
index eedb980..794d959 100644
--- a/include/gpio.h
+++ b/include/gpio.h
@@ -6,7 +6,7 @@
 #ifndef CONFIG_GPIOLIB
 static inline int gpio_request(unsigned gpio, const char *label)
 {
-       return 0;
+	return 0;
 }
 
 static inline void gpio_free(unsigned gpio)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
