Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f170.google.com ([209.85.217.170])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U0zdW-0001r6-Ct
 for barebox@lists.infradead.org; Thu, 31 Jan 2013 19:17:27 +0000
Received: by mail-lb0-f170.google.com with SMTP id ge1so3764972lbb.29
 for <barebox@lists.infradead.org>; Thu, 31 Jan 2013 11:17:23 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 31 Jan 2013 23:29:24 +0400
Message-Id: <1359660567-12220-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1359660567-12220-1-git-send-email-antonynpavlov@gmail.com>
References: <1359660567-12220-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 1/4] gpiolib: fix whitespaces
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
