Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVM5N-0000PM-On
 for barebox@lists.infradead.org; Mon, 27 May 2019 20:19:10 +0000
Received: by mail-pg1-x543.google.com with SMTP id h17so9611113pgv.0
 for <barebox@lists.infradead.org>; Mon, 27 May 2019 13:19:09 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 27 May 2019 13:18:49 -0700
Message-Id: <20190527201853.18853-4-andrew.smirnov@gmail.com>
In-Reply-To: <20190527201853.18853-1-andrew.smirnov@gmail.com>
References: <20190527201853.18853-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 3/7] drivers: Introduce late_platform_driver()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 include/driver.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/driver.h b/include/driver.h
index fe2d30ab5..300603fa3 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -420,6 +420,8 @@ int platform_driver_register(struct driver_d *drv);
 	register_driver_macro(device,platform,drv)
 #define console_platform_driver(drv)	\
 	register_driver_macro(console,platform,drv)
+#define late_platform_driver(drv)	\
+	register_driver_macro(late,platform,drv)
 
 int platform_device_register(struct device_d *new_device);
 
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
