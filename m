Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDn2c-0005dI-M4
 for barebox@lists.infradead.org; Fri, 27 Sep 2019 10:00:01 +0000
From: Bastian Krause <bst@pengutronix.de>
Date: Fri, 27 Sep 2019 11:59:54 +0200
Message-Id: <20190927095954.13168-5-bst@pengutronix.de>
In-Reply-To: <20190927095954.13168-1-bst@pengutronix.de>
References: <20190927095954.13168-1-bst@pengutronix.de>
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
Subject: [PATCH v4 4/4] bootm: allow providing machine id to Kernel
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Bastian Krause <bst@pengutronix.de>

By default systemd generates a machine id on first boot and tries to
persist it (see `man machine-id`). When the root file system is read-only
systemd cannot persist the machine id. In case multiple redundant slots
are used the machine id will vary. When not handled explicitly the
machine id will also change during system updates.

It is possible to pass a machine id to the kernel which will be used by
systemd (systemd.machine_id=).

If global.bootm.provide_machine_id (or nv.bootm.provide_machine_id) is
true then provide the machine id from global.machine_id as
systemd.machine_id= parameter to the Kernel.

Note that global.machine_id must be set, either by the
machine_id_set_bootarg late init call or by setting it manually with
nv.machine_id if necessary.

Signed-off-by: Bastian Krause <bst@pengutronix.de>
---
 common/bootm.c  | 19 +++++++++++++++++++
 include/bootm.h |  5 +++++
 2 files changed, 24 insertions(+)

diff --git a/common/bootm.c b/common/bootm.c
index b50b76ed6f..366f314555 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -51,6 +51,7 @@ static struct image_handler *bootm_find_handler(enum filetype filetype,
 }
 
 static int bootm_appendroot;
+static int bootm_provide_machine_id;
 static int bootm_verbosity;
 
 void bootm_data_init_defaults(struct bootm_data *data)
@@ -65,6 +66,7 @@ void bootm_data_init_defaults(struct bootm_data *data)
 	data->initrd_file = getenv_nonempty("global.bootm.initrd");
 	data->verify = bootm_get_verify_mode();
 	data->appendroot = bootm_appendroot;
+	data->provide_machine_id = bootm_provide_machine_id;
 	data->verbose = bootm_verbosity;
 }
 
@@ -646,6 +648,21 @@ int bootm_boot(struct bootm_data *bootm_data)
 		}
 	}
 
+	if (bootm_data->provide_machine_id) {
+		const char *machine_id = getenv_nonempty("global.machine_id");
+		char *machine_id_bootarg;
+
+		if (!machine_id) {
+			printf("Providing machine id is enabled but no machine id set\n");
+			ret = -EINVAL;
+			goto err_out;
+		}
+
+		machine_id_bootarg = basprintf("systemd.machine_id=%s", machine_id);
+		globalvar_add_simple("linux.bootargs.machine_id", machine_id_bootarg);
+		free(machine_id_bootarg);
+	}
+
 	printf("\nLoading %s '%s'", file_type_to_string(os_type),
 			data->os_file);
 	if (os_type == filetype_uimage &&
@@ -711,6 +728,7 @@ static int bootm_init(void)
 	globalvar_add_simple("bootm.oftree", NULL);
 	globalvar_add_simple("bootm.tee", NULL);
 	globalvar_add_simple_bool("bootm.appendroot", &bootm_appendroot);
+	globalvar_add_simple_bool("bootm.provide_machine_id", &bootm_provide_machine_id);
 	if (IS_ENABLED(CONFIG_BOOTM_INITRD)) {
 		globalvar_add_simple("bootm.initrd", NULL);
 		globalvar_add_simple("bootm.initrd.loadaddr", NULL);
@@ -738,3 +756,4 @@ BAREBOX_MAGICVAR_NAMED(global_bootm_tee, global.bootm.tee, "bootm default tee im
 BAREBOX_MAGICVAR_NAMED(global_bootm_verify, global.bootm.verify, "bootm default verify level");
 BAREBOX_MAGICVAR_NAMED(global_bootm_verbose, global.bootm.verbose, "bootm default verbosity level (0=quiet)");
 BAREBOX_MAGICVAR_NAMED(global_bootm_appendroot, global.bootm.appendroot, "Add root= option to Kernel to mount rootfs from the device the Kernel comes from");
+BAREBOX_MAGICVAR_NAMED(global_bootm_provide_machine_id, global.bootm.provide_machine_id, "If true, add systemd.machine_id= with value of global.machine_id to Kernel");
diff --git a/include/bootm.h b/include/bootm.h
index 5ce3318ecc..a041aa35b9 100644
--- a/include/bootm.h
+++ b/include/bootm.h
@@ -26,6 +26,11 @@ struct bootm_data {
 	 * mount the rootfs from the same device as the Kernel comes from.
 	 */
 	bool appendroot;
+	/*
+	 * provide_machine_id - if true, try to add systemd.machine_id= with
+	 * value of global.machine_id to Kernel.
+	 */
+	bool provide_machine_id;
 	unsigned long initrd_address;
 	unsigned long os_address;
 	unsigned long os_entry;
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
