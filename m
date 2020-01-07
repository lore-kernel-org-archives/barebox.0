Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iow4v-0006PJ-0E
 for barebox@lists.infradead.org; Tue, 07 Jan 2020 21:07:54 +0000
Received: by mail-lj1-x244.google.com with SMTP id j26so995778ljc.12
 for <barebox@lists.infradead.org>; Tue, 07 Jan 2020 13:07:51 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed,  8 Jan 2020 00:07:46 +0300
Message-Id: <20200107210746.32371-1-antonynpavlov@gmail.com>
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
Subject: [PATCH] include/linux/amba/bus.h: drop unused declarations
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 include/linux/amba/bus.h | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/include/linux/amba/bus.h b/include/linux/amba/bus.h
index 2ecef35a40..7b3e603322 100644
--- a/include/linux/amba/bus.h
+++ b/include/linux/amba/bus.h
@@ -90,12 +90,6 @@ amba_ahb_device_add(struct device_d *parent, const char *name, int id,
 				    periphid);
 }
 
-
-void amba_device_unregister(struct amba_device *);
-struct amba_device *amba_find_device(const char *, struct device_d *, unsigned int, unsigned int);
-int amba_request_regions(struct amba_device *, const char *);
-void amba_release_regions(struct amba_device *);
-
 static inline void __iomem *amba_get_mem_region(struct amba_device *dev)
 {
 	return dev->base;
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
