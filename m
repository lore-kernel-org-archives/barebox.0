Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo2.mail-out.ovh.net ([188.165.48.182])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YAv2o-0004Y9-D1
 for barebox@lists.infradead.org; Tue, 13 Jan 2015 06:33:40 +0000
Received: from mail94.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id A7DCD1008746
 for <barebox@lists.infradead.org>; Tue, 13 Jan 2015 07:33:16 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 13 Jan 2015 07:33:08 +0100
Message-Id: <1421130790-1164-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1421130790-1164-1-git-send-email-plagnioj@jcrosoft.com>
References: <20150113063128.GC30554@ns203013.ovh.net>
 <1421130790-1164-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 4/6] driver: add postcore_platform_driver
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 include/driver.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/driver.h b/include/driver.h
index 46aae4f..76fd4b1 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -409,6 +409,8 @@ int platform_driver_register(struct driver_d *drv);
 	}						\
 	level##_initcall(drv##_register)
 
+#define postcore_platform_driver(drv)	\
+	register_driver_macro(postcore,platform,drv)
 #define coredevice_platform_driver(drv)	\
 	register_driver_macro(coredevice,platform,drv)
 #define device_platform_driver(drv)	\
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
