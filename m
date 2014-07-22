Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x22b.google.com ([2a00:1450:400c:c00::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X9UxM-0006LD-1g
 for barebox@lists.infradead.org; Tue, 22 Jul 2014 07:57:52 +0000
Received: by mail-wg0-f43.google.com with SMTP id l18so7462765wgh.26
 for <barebox@lists.infradead.org>; Tue, 22 Jul 2014 00:57:34 -0700 (PDT)
From: Holger Schurig <holgerschurig@gmail.com>
Date: Tue, 22 Jul 2014 09:57:22 +0200
Message-Id: <1406015842-20754-4-git-send-email-holgerschurig@gmail.de>
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
Subject: [PATCH 3/3] sandbox: work around missing of_add_memory_bank()
To: barebox@lists.infradead.org

From: Holger Schurig <holgerschurig@gmail.com>

The goal of "make ARCH=sandbox allyesconfig && make all" is not to
generate a sensible barebox that you'd use. The goal is to create
as much code coverage as possible, so that you see compiler warnings
are can send barebox throught a static checker.

Therefore this simple band-aid to compile drivers/of/base.c wouldn't
create a working device tree implementation, but it will compile.

Signed-off-by: Holger Schurig <holgerschurig@gmail.com>
---
 drivers/of/base.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index c440a69..69d9b09 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -1713,8 +1713,10 @@ int of_add_memory(struct device_node *node, bool dump)
 			continue;
 		}
 
+#ifndef CONFIG_SANDBOX
 		of_add_memory_bank(node, dump, n,
 				res.start, resource_size(&res));
+#endif
 		n++;
 	}
 
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
