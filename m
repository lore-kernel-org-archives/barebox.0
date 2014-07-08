Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X4R6m-0006VY-Uv
 for barebox@lists.infradead.org; Tue, 08 Jul 2014 08:50:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  8 Jul 2014 10:49:57 +0200
Message-Id: <1404809417-21477-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1404809417-21477-1-git-send-email-s.hauer@pengutronix.de>
References: <1404809417-21477-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/21] Make IPaddr_t a 32bit type
To: barebox@lists.infradead.org

unsigned long is 64bit wide on some architectures. Make IPaddr_t a
typedef to uint32_t to make sure it's 32bit wide.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/param.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/param.h b/include/param.h
index 24827c5..8f200df 100644
--- a/include/param.h
+++ b/include/param.h
@@ -7,7 +7,7 @@
 #define PARAM_FLAG_RO	(1 << 0)
 
 struct device_d;
-typedef unsigned long          IPaddr_t;
+typedef uint32_t          IPaddr_t;
 
 struct param_d {
 	const char* (*get)(struct device_d *, struct param_d *param);
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
