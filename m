Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp31.i.mail.ru ([94.100.177.91])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UwoOw-00040f-7A
 for barebox@lists.infradead.org; Wed, 10 Jul 2013 07:01:24 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Wed, 10 Jul 2013 11:00:39 +0400
Message-Id: <1373439641-18852-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 1/3] ARM: Add "verbose" parameter for start_linux procedure
To: barebox@lists.infradead.org

This patch will make a normal booting more silent.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/include/asm/armlinux.h |  2 +-
 arch/arm/lib/armlinux.c         | 16 +++++++++-------
 arch/arm/lib/bootm.c            |  3 ++-
 arch/arm/lib/bootu.c            |  2 +-
 arch/arm/lib/bootz.c            |  2 +-
 5 files changed, 14 insertions(+), 11 deletions(-)

diff --git a/arch/arm/include/asm/armlinux.h b/arch/arm/include/asm/armlinux.h
index 07479fb..15cae14 100644
--- a/arch/arm/include/asm/armlinux.h
+++ b/arch/arm/include/asm/armlinux.h
@@ -38,6 +38,6 @@ static inline void armlinux_set_atag_appender(struct tag *(*func)(struct tag *))
 struct image_data;
 
 void start_linux(void *adr, int swap, unsigned long initrd_address,
-		unsigned long initrd_size, void *oftree);
+		unsigned long initrd_size, void *oftree, int verbose);
 
 #endif /* __ARCH_ARMLINUX_H */
diff --git a/arch/arm/lib/armlinux.c b/arch/arm/lib/armlinux.c
index 40a63ea..84372af 100644
--- a/arch/arm/lib/armlinux.c
+++ b/arch/arm/lib/armlinux.c
@@ -227,8 +227,8 @@ static void setup_end_tag (void)
 	params->hdr.size = 0;
 }
 
-static void setup_tags(unsigned long initrd_address,
-		unsigned long initrd_size, int swap)
+static void setup_tags(unsigned long initrd_address, unsigned long initrd_size,
+		       int swap, int verbose)
 {
 	const char *commandline = linux_bootargs_get();
 
@@ -247,8 +247,9 @@ static void setup_tags(unsigned long initrd_address,
 #endif
 	setup_end_tag();
 
-	printf("commandline: %s\n"
-	       "arch_number: %d\n", commandline, armlinux_get_architecture());
+	if (verbose)
+		printf("commandline: %s\narch_number: %d\n",
+		       commandline, armlinux_get_architecture());
 
 }
 
@@ -258,17 +259,18 @@ void armlinux_set_bootparams(void *params)
 }
 
 void start_linux(void *adr, int swap, unsigned long initrd_address,
-		unsigned long initrd_size, void *oftree)
+		unsigned long initrd_size, void *oftree, int verbose)
 {
 	void (*kernel)(int zero, int arch, void *params) = adr;
 	void *params = NULL;
 	int architecture;
 
 	if (oftree) {
-		printf("booting Linux kernel with devicetree\n");
+		if (verbose)
+			printf("booting Linux kernel with devicetree\n");
 		params = oftree;
 	} else {
-		setup_tags(initrd_address, initrd_size, swap);
+		setup_tags(initrd_address, initrd_size, swap, verbose);
 		params = armlinux_bootparams;
 	}
 	architecture = armlinux_get_architecture();
diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
index 0786e22..c5ac0d8 100644
--- a/arch/arm/lib/bootm.c
+++ b/arch/arm/lib/bootm.c
@@ -106,7 +106,8 @@ static int __do_bootm_linux(struct image_data *data, int swap)
 		printf("...\n");
 	}
 
-	start_linux((void *)kernel, swap, initrd_start, initrd_size, data->oftree);
+	start_linux((void *)kernel, swap, initrd_start, initrd_size,
+		    data->oftree, bootm_verbose(data));
 
 	reset_cpu(0);
 
diff --git a/arch/arm/lib/bootu.c b/arch/arm/lib/bootu.c
index fdb0362..c394f5e 100644
--- a/arch/arm/lib/bootu.c
+++ b/arch/arm/lib/bootu.c
@@ -26,7 +26,7 @@ static int do_bootu(int argc, char *argv[])
 	oftree = of_get_fixed_tree(NULL);
 #endif
 
-	start_linux(kernel, 0, 0, 0, oftree);
+	start_linux(kernel, 0, 0, 0, oftree, 1);
 
 	return 1;
 }
diff --git a/arch/arm/lib/bootz.c b/arch/arm/lib/bootz.c
index e32a77b..b402fce 100644
--- a/arch/arm/lib/bootz.c
+++ b/arch/arm/lib/bootz.c
@@ -112,7 +112,7 @@ static int do_bootz(int argc, char *argv[])
 	oftree = of_get_fixed_tree(NULL);
 #endif
 
-	start_linux(zimage, swap, 0, 0, oftree);
+	start_linux(zimage, swap, 0, 0, oftree, 1);
 
 	return 0;
 
-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
