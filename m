Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VQtLt-0000SW-0q
 for barebox@lists.infradead.org; Tue, 01 Oct 2013 06:22:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  1 Oct 2013 08:22:07 +0200
Message-Id: <1380608528-26999-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1380608528-26999-1-git-send-email-s.hauer@pengutronix.de>
References: <1380608528-26999-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/6] ARM: vexpress: Fix compiler warning
To: barebox@lists.infradead.org

Fixes:

arch/arm/boards/vexpress/init.c: In function 'vexpress_core_init':
arch/arm/boards/vexpress/init.c:139:22: warning: 'hostname' may be used uninitialized in this function [-Wmaybe-uninitialized]

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/vexpress/init.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boards/vexpress/init.c b/arch/arm/boards/vexpress/init.c
index 48bc11e..5358be3 100644
--- a/arch/arm/boards/vexpress/init.c
+++ b/arch/arm/boards/vexpress/init.c
@@ -133,6 +133,8 @@ static int vexpress_core_init(void)
 			hostname = "vexpress-a9";
 		else if (cpu_is_cortex_a15())
 			hostname = "vexpress-a15";
+		else
+			hostname = "vexpress-unknown";
 	}
 
 	barebox_set_model("ARM Vexpress");
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
