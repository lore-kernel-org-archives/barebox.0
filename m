Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0gRu-0005Zp-4N
 for barebox@lists.infradead.org; Thu, 22 Aug 2019 06:19:56 +0000
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Thu, 22 Aug 2019 08:19:37 +0200
Message-Id: <20190822061941.6093-2-ahmad@a3f.at>
In-Reply-To: <20190822061941.6093-1-ahmad@a3f.at>
References: <20190822061941.6093-1-ahmad@a3f.at>
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
Subject: [PATCH 1/5] sandbox: include header to provide missing prototype
To: barebox@lists.infradead.org
Cc: afa@pengutronix.de

sandbox_add_device lacks a prototype. Include the appropriate header to
fix this.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/sandbox/board/devices.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/sandbox/board/devices.c b/arch/sandbox/board/devices.c
index 242a0d718e91..72e62552a3b8 100644
--- a/arch/sandbox/board/devices.c
+++ b/arch/sandbox/board/devices.c
@@ -8,6 +8,7 @@
 #include <driver.h>
 #include <mach/linux.h>
 #include <init.h>
+#include <mach/linux.h>
 
 static LIST_HEAD(sandbox_device_list);
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
