Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jqGcn-0000ic-OJ
 for barebox@lists.infradead.org; Tue, 30 Jun 2020 13:48:38 +0000
From: Robert Karszniewicz <r.karszniewicz@phytec.de>
Date: Tue, 30 Jun 2020 15:48:31 +0200
Message-Id: <1593524914-228154-2-git-send-email-r.karszniewicz@phytec.de>
In-Reply-To: <1593524914-228154-1-git-send-email-r.karszniewicz@phytec.de>
References: <1593524914-228154-1-git-send-email-r.karszniewicz@phytec.de>
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
Subject: [RFC PATCH 1/4] bootm: add env var root_dev
To: barebox@lists.infradead.org

---
 common/bootm.c  | 4 +++-
 include/bootm.h | 2 ++
 2 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/common/bootm.c b/common/bootm.c
index 8fec1ee34dd8..af9f9b8f447d 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -64,6 +64,7 @@ void bootm_data_init_defaults(struct bootm_data *data)
 	getenv_ul("global.bootm.image.loadaddr", &data->os_address);
 	getenv_ul("global.bootm.initrd.loadaddr", &data->initrd_address);
 	data->initrd_file = getenv_nonempty("global.bootm.initrd");
+	data->root_dev = getenv_nonempty("global.bootm.root");
 	data->verify = bootm_get_verify_mode();
 	data->appendroot = bootm_appendroot;
 	data->provide_machine_id = bootm_provide_machine_id;
@@ -771,5 +772,6 @@ BAREBOX_MAGICVAR_NAMED(global_bootm_oftree, global.bootm.oftree, "bootm default
 BAREBOX_MAGICVAR_NAMED(global_bootm_tee, global.bootm.tee, "bootm default tee image");
 BAREBOX_MAGICVAR_NAMED(global_bootm_verify, global.bootm.verify, "bootm default verify level");
 BAREBOX_MAGICVAR_NAMED(global_bootm_verbose, global.bootm.verbose, "bootm default verbosity level (0=quiet)");
-BAREBOX_MAGICVAR_NAMED(global_bootm_appendroot, global.bootm.appendroot, "Add root= option to Kernel to mount rootfs from the device the Kernel comes from");
+BAREBOX_MAGICVAR_NAMED(global_bootm_appendroot, global.bootm.appendroot, "Add root= option to Kernel to mount rootfs from the device the Kernel comes from (default, device can be overridden via global.bootm.root)");
+BAREBOX_MAGICVAR_NAMED(global_bootm_root, global.bootm.root, "bootm default root device (overrides default device in global.bootm.appendroot)");
 BAREBOX_MAGICVAR_NAMED(global_bootm_provide_machine_id, global.bootm.provide_machine_id, "If true, add systemd.machine_id= with value of global.machine_id to Kernel");
diff --git a/include/bootm.h b/include/bootm.h
index 7782de7a476d..3628a7eea5b9 100644
--- a/include/bootm.h
+++ b/include/bootm.h
@@ -18,6 +18,7 @@ struct bootm_data {
 	const char *initrd_file;
 	const char *oftree_file;
 	const char *tee_file;
+	const char *root_dev;
 	int verbose;
 	enum bootm_verify verify;
 	bool force;
@@ -25,6 +26,7 @@ struct bootm_data {
 	/*
 	 * appendroot - if true, try to add a suitable root= Kernel option to
 	 * mount the rootfs from the same device as the Kernel comes from.
+	 * The default rootfs device can be overridden with root_dev.
 	 */
 	bool appendroot;
 	/*
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
