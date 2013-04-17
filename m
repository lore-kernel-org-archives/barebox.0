Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1USQhk-0002KQ-1l
 for barebox@lists.infradead.org; Wed, 17 Apr 2013 11:39:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 17 Apr 2013 13:39:05 +0200
Message-Id: <1366198748-22717-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1366198748-22717-1-git-send-email-s.hauer@pengutronix.de>
References: <1366198748-22717-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/7] memory commands: cleanup initialization
To: barebox@lists.infradead.org

- return -ENOMEM instead of -1
- return the result of platform_driver_register

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/mem.c | 11 +++--------
 1 file changed, 3 insertions(+), 8 deletions(-)

diff --git a/commands/mem.c b/commands/mem.c
index d48f92e..5bef3f7 100644
--- a/commands/mem.c
+++ b/commands/mem.c
@@ -567,15 +567,10 @@ static struct driver_d mem_drv = {
 static int mem_init(void)
 {
 	rw_buf = malloc(RW_BUF_SIZE);
-	if(!rw_buf) {
-		printf("%s: Out of memory\n", __FUNCTION__);
-		return -1;
-	}
+	if(!rw_buf)
+		return -ENOMEM;
 
 	add_mem_device("mem", 0, ~0, IORESOURCE_MEM_WRITEABLE);
-	platform_driver_register(&mem_drv);
-
-	return 0;
+	return platform_driver_register(&mem_drv);
 }
-
 device_initcall(mem_init);
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
