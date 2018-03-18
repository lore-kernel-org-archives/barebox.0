Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs10.datenmanufaktur-hosting.net ([185.138.26.202]
 helo=vs81.iboxed.net)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1exfa4-0000Pn-Cn
 for barebox@lists.infradead.org; Sun, 18 Mar 2018 21:11:06 +0000
From: Alexander Kurz <akurz@blala.de>
Date: Sun, 18 Mar 2018 21:10:46 +0000
Message-Id: <20180318211046.14239-1-akurz@blala.de>
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
Subject: [PATCH] ARM: i.MX50: Amazon Kindle: fix setup of board specific
 environment
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Alexander Kurz <akurz@blala.de>

With patch 5b92cfceff38 ("startup: Load default environment earlier")
loading of the default environment moved from environment_initcall
four initcalls up to fs_initcall. At this time, most of the board specific
environment patches inserted via defaultenv_append_directory() have not
been processed yet (mostly done in device_initcall) and will not appear
in the environment.
Fix this problem for the mx50 kindles by moving defaultenv_append_directory()
one initcall in front of fs_initcall.
Similar patches may be necessary for all other board implementations and the
efi implementation using defaultenv_append_directory() in device_initcall.

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 arch/arm/boards/kindle-mx50/board.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/kindle-mx50/board.c b/arch/arm/boards/kindle-mx50/board.c
index 089dd8ebb..86cf54a46 100644
--- a/arch/arm/boards/kindle-mx50/board.c
+++ b/arch/arm/boards/kindle-mx50/board.c
@@ -127,6 +127,13 @@ static int is_mx50_kindle(void)
 		of_machine_is_compatible("amazon,kindle-ey21");
 }
 
+static int kindle_mx50_coredev_init(void)
+{
+	defaultenv_append_directory(defaultenv_kindle_mx50);
+	return 0;
+}
+coredevice_initcall(kindle_mx50_coredev_init);
+
 static int kindle_mx50_late_init(void)
 {
 	if (!is_mx50_kindle())
@@ -164,8 +171,6 @@ static int kindle_mx50_devices_init(void)
 	if (dev)
 		dev_set_param(dev, "probe", "1");
 
-	defaultenv_append_directory(defaultenv_kindle_mx50);
-
 	return 0;
 }
 device_initcall(kindle_mx50_devices_init);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
