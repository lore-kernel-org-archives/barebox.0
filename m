Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY1s4-0002XX-U6
 for barebox@lists.infradead.org; Tue, 04 Jun 2019 05:20:30 +0000
Received: by mail-pl1-x643.google.com with SMTP id i2so3519628plt.1
 for <barebox@lists.infradead.org>; Mon, 03 Jun 2019 22:20:27 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  3 Jun 2019 22:19:59 -0700
Message-Id: <20190604052003.3189-4-andrew.smirnov@gmail.com>
In-Reply-To: <20190604052003.3189-1-andrew.smirnov@gmail.com>
References: <20190604052003.3189-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 3/7] drivers: Introduce late_platform_driver()
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
