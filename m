Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dUW1P-0005w9-JI
 for barebox@lists.infradead.org; Mon, 10 Jul 2017 10:34:37 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 10 Jul 2017 12:33:52 +0200
Message-Id: <20170710103355.15652-6-s.trumtrar@pengutronix.de>
In-Reply-To: <20170710103355.15652-1-s.trumtrar@pengutronix.de>
References: <20170710103355.15652-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH v2 6/9] efi: efi: load state from devicetree
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
Changes since v1:
  - add documentation

 Documentation/boards/efi.rst |  4 ++++
 common/efi/efi.c             | 56 ++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 60 insertions(+)

diff --git a/Documentation/boards/efi.rst b/Documentation/boards/efi.rst
index ecadb3ebba57..8f78a800ef74 100644
--- a/Documentation/boards/efi.rst
+++ b/Documentation/boards/efi.rst
@@ -42,6 +42,10 @@ architectures. Switching to USB boot in the BIOS should then be enough to
 start barebox via USB. Some BIOSes allow to specify a path to a binary to
 be executed, others have a "start UEFI shell" entry which executes
 EFI/Shellx64.efi on the :term:`ESP`. This can be a barebox binary aswell.
+To use the :ref:`state_framework`, the describing devicetree file ``state.dtb``
+has to be put into the ``EFI/barebox/`` directory.
+Supported backends for EFI are raw partitions that can be discovered via a
+partition UUID.
 
 Running EFI barebox on qemu
 ^^^^^^^^^^^^^^^^^^^^^^^^^^^
diff --git a/common/efi/efi.c b/common/efi/efi.c
index f924385958e1..cc3051dedae9 100644
--- a/common/efi/efi.c
+++ b/common/efi/efi.c
@@ -40,6 +40,8 @@
 #include <efi.h>
 #include <efi/efi.h>
 #include <efi/efi-device.h>
+#include <libfile.h>
+#include <state.h>
 
 efi_runtime_services_t *RT;
 efi_boot_services_t *BS;
@@ -384,6 +386,60 @@ static int efi_postcore_init(void)
 }
 postcore_initcall(efi_postcore_init);
 
+static int efi_late_init(void)
+{
+	char *state_desc;
+	int ret;
+
+	state_desc = xasprintf("/boot/EFI/barebox/state.dtb");
+
+	if (state_desc) {
+		void *fdt;
+		size_t size;
+		struct device_node *root = NULL;
+		struct device_node *np = NULL;
+		struct state *state;
+
+		fdt = read_file(state_desc, &size);
+		if (!fdt) {
+			pr_err("unable to read %s: %s\n", state_desc,
+			       strerror(errno));
+			return -errno;
+		}
+
+		if (file_detect_type(fdt, size) != filetype_oftree) {
+			pr_err("%s is not an oftree file.\n", state_desc);
+			free(fdt);
+			return -EINVAL;
+		}
+
+		root = of_unflatten_dtb(fdt);
+
+		free(fdt);
+
+		if (IS_ERR(root))
+			return PTR_ERR(root);
+
+		of_set_root_node(root);
+
+		np = of_find_node_by_alias(root, "state");
+
+		state = state_new_from_node(np, NULL, 0, 0, false);
+		if (IS_ERR(state))
+			return PTR_ERR(state);
+
+		ret = state_load(state);
+		if (ret)
+			pr_warn("Failed to load persistent state, continuing with defaults, %d\n",
+				ret);
+
+		return 0;
+	}
+
+	return 0;
+}
+late_initcall(efi_late_init);
+
 static int do_efiexit(int argc, char *argv[])
 {
 	return BS->exit(efi_parent_image, EFI_SUCCESS, 0, NULL);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
