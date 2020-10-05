Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kPLrJ-00076S-Vy
 for barebox@lists.infradead.org; Mon, 05 Oct 2020 08:28:38 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Oct 2020 10:28:35 +0200
Message-Id: <20201005082835.11413-2-a.fatoum@pengutronix.de>
In-Reply-To: <20201005082835.11413-1-a.fatoum@pengutronix.de>
References: <20201005082835.11413-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 2/2] sandbox: compile in a fallback device tree
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The sandbox architecture is device tree only and so far when no --dtb
was passed, it created a basic one itself and used that.
Instead of creating the default device tree in C, just build the dtb
into barebox like we do on other platforms.

When --dtb is specified, that device tree will be used instead.
This results in functional change: Model and hostname are now more
accurate.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/sandbox/board/devices.c |  3 ---
 arch/sandbox/board/dtb.c     | 18 +++++-------------
 arch/sandbox/dts/Makefile    |  4 ++--
 arch/sandbox/dts/sandbox.dts |  3 ++-
 4 files changed, 9 insertions(+), 19 deletions(-)

diff --git a/arch/sandbox/board/devices.c b/arch/sandbox/board/devices.c
index 1fd1913ae60f..26152a8b90a0 100644
--- a/arch/sandbox/board/devices.c
+++ b/arch/sandbox/board/devices.c
@@ -26,9 +26,6 @@ static int sandbox_device_init(void)
 {
 	struct device_d *dev, *tmp;
 
-	barebox_set_model("barebox sandbox");
-	barebox_set_hostname("barebox");
-
 	list_for_each_entry_safe(dev, tmp, &sandbox_device_list, list) {
 		/* reset the list_head before registering for real */
 		dev->list.prev = NULL;
diff --git a/arch/sandbox/board/dtb.c b/arch/sandbox/board/dtb.c
index da2452199273..fc8793dbe038 100644
--- a/arch/sandbox/board/dtb.c
+++ b/arch/sandbox/board/dtb.c
@@ -32,24 +32,16 @@ int barebox_register_dtb(const void *new_dtb)
 	return 0;
 }
 
+extern char __dtb_sandbox_start[];
+
 static int of_sandbox_init(void)
 {
 	struct device_node *root;
-	int ret;
-
-	if (dtb) {
-		root = of_unflatten_dtb(dtb);
-	} else {
-		root = of_new_node(NULL, NULL);
 
-		ret = of_property_write_u32(root, "#address-cells", 2);
-		if (ret)
-			return ret;
+	if (!dtb)
+		dtb = __dtb_sandbox_start;
 
-		ret = of_property_write_u32(root, "#size-cells", 2);
-		if (ret)
-			return ret;
-	}
+	root = of_unflatten_dtb(dtb);
 
 	if (IS_ERR(root))
 		return PTR_ERR(root);
diff --git a/arch/sandbox/dts/Makefile b/arch/sandbox/dts/Makefile
index 6f4344da68b4..c8d83141ceab 100644
--- a/arch/sandbox/dts/Makefile
+++ b/arch/sandbox/dts/Makefile
@@ -1,5 +1,5 @@
-always-$(CONFIG_OFTREE) += \
-	sandbox.dtb
+obj-$(CONFIG_OFTREE) += \
+	sandbox.dtb.o
 
 # just to build a built-in.o. Otherwise compilation fails when no devicetree is
 # created.
diff --git a/arch/sandbox/dts/sandbox.dts b/arch/sandbox/dts/sandbox.dts
index 2595aa13fa62..4576e873d9cb 100644
--- a/arch/sandbox/dts/sandbox.dts
+++ b/arch/sandbox/dts/sandbox.dts
@@ -3,5 +3,6 @@
 #include "skeleton.dtsi"
 
 / {
-
+	model = "Sandbox";
+	compatible = "barebox,sandbox";
 };
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
