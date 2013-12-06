Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VorwX-0000Md-2w
 for barebox@lists.infradead.org; Fri, 06 Dec 2013 09:43:30 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  6 Dec 2013 10:43:01 +0100
Message-Id: <1386322981-30721-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1386322981-30721-1-git-send-email-s.hauer@pengutronix.de>
References: <1386322981-30721-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] ARM: boot barebox with kernel calling convention
To: barebox@lists.infradead.org

Start a 2nd stage barebox with the Linux Kernel calling convention.
Right now barebox does not interpret ATAGs or devicetree passed
to it, but it doesn't hurt to pass parameters so that future bareboxes
can use them.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib/armlinux.c |  2 +-
 arch/arm/lib/bootm.c    | 19 ++++++++++++++++---
 2 files changed, 17 insertions(+), 4 deletions(-)

diff --git a/arch/arm/lib/armlinux.c b/arch/arm/lib/armlinux.c
index d83c6a2..bc28620 100644
--- a/arch/arm/lib/armlinux.c
+++ b/arch/arm/lib/armlinux.c
@@ -261,7 +261,7 @@ void start_linux(void *adr, int swap, unsigned long initrd_address,
 	int architecture;
 
 	if (oftree) {
-		printf("booting Linux kernel with devicetree\n");
+		printf("booting kernel with devicetree\n");
 		params = oftree;
 	} else {
 		setup_tags(initrd_address, initrd_size, swap);
diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
index 599b09a..c0e4e15 100644
--- a/arch/arm/lib/bootm.c
+++ b/arch/arm/lib/bootm.c
@@ -296,15 +296,28 @@ static struct image_handler zimage_handler = {
 
 static int do_bootm_barebox(struct image_data *data)
 {
-	void (*barebox)(void);
+	void *barebox;
 
 	barebox = read_file(data->os_file, NULL);
 	if (!barebox)
 		return -EINVAL;
 
-	shutdown_barebox();
+	if (IS_ENABLED(CONFIG_OFTREE) && data->of_root_node) {
+		data->oftree = of_get_fixed_tree(data->of_root_node);
+		fdt_add_reserve_map(data->oftree);
+		of_print_cmdline(data->of_root_node);
+		if (bootm_verbose(data) > 1)
+			of_print_nodes(data->of_root_node, 0);
+	}
+
+	if (bootm_verbose(data)) {
+		printf("\nStarting barebox at 0x%p", barebox);
+		if (data->oftree)
+			printf(", oftree at 0x%p", data->oftree);
+		printf("...\n");
+	}
 
-	barebox();
+	start_linux(barebox, 0, 0, 0, data->oftree);
 
 	reset_cpu(0);
 }
-- 
1.8.4.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
