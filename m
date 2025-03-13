Delivery-date: Thu, 13 Mar 2025 11:37:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsfwn-00DX1b-1r
	for lore@lore.pengutronix.de;
	Thu, 13 Mar 2025 11:37:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsfwm-0002Bh-7V
	for lore@pengutronix.de; Thu, 13 Mar 2025 11:37:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iC7SbKQl5WYmgvz9bOf1MaYFDE14kd3J8gQMH7z+Uf4=; b=nt/ipL+mmLWkVdZXgOwl0nrcZn
	Fn+DVjBw3ngtEHCsjNpDYY+gKUrV7tW2zqNy+h2ODoWKVLgz2v+tlFNxRSSfzs1Yr3Hf6eWU7mG0y
	i21xhMIeKDMP23GyUCS3s9fKPhEUcySkhbjlTzUfXTR+GOjq+IWCFDDopC4BpLZIGMDE9YqYiDFFJ
	0wr9hFu4FjZ4N/ggBHFImRaLWnZuHSKGlU1VCn3IfquKgGfSs2dpnfodqJB+SZpiEx3EGL0M6Gj4w
	KklIKOW+6LZySsTFaJdxE8FCacVYzVN/cOaSIXDCtAAq+FslzsvNbc/A/Mi2XBKqtFTj9d2+kpa+O
	173Hs45w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsfwJ-0000000AtYs-0s8s;
	Thu, 13 Mar 2025 10:37:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsfuw-0000000AtQo-3EUb
	for barebox@lists.infradead.org;
	Thu, 13 Mar 2025 10:35:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tsfus-0001kj-EF; Thu, 13 Mar 2025 11:35:54 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tsfus-005WJG-0o;
	Thu, 13 Mar 2025 11:35:54 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tsfd4-00Gch5-12;
	Thu, 13 Mar 2025 11:17:30 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Adrian Negreanu <adrian.negreanu@nxp.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 13 Mar 2025 11:17:28 +0100
Message-Id: <20250313101728.3546902-12-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250313101728.3546902-1-a.fatoum@pengutronix.de>
References: <20250313101728.3546902-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250313_033558_839364_3A921A2C 
X-CRM114-Status: GOOD (  18.66  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 11/11] fs: qemu_fw_cfg: support populating environment via QEMU fw_cfg
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

QEMU fw_cfg allows passing through user defined key/values, which is
more powerful than what we currently have with sandbox as it allows
passing arbitrary files without having to mess with block devices and
their alignment.

All the added files are already available in the QEMU fw_cfg file system,
but for added convenience, let's map all files under a opt/org.barebox.env
directory to the environment of the running barebox image, thereby
allowing configuring barebox easily from the outside, e.g.

pytest --env nv/boot.default=fit --env boot/fit=@boot.sh

Will boot, after coundown, whatever is in the boot.sh script in the
working directory of QEMU.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 conftest.py             | 22 ++++++++++++++++++++++
 defaultenv/defaultenv.c | 22 ++++++++++++++++++++++
 fs/qemu_fw_cfg.c        |  9 ++++++++-
 include/envfs.h         |  5 +++++
 4 files changed, 57 insertions(+), 1 deletion(-)

diff --git a/conftest.py b/conftest.py
index 941eddcb72dd..5dfefef24638 100644
--- a/conftest.py
+++ b/conftest.py
@@ -39,6 +39,9 @@ def pytest_configure(config):
         os.environ['LG_BUILDDIR'] = os.path.realpath(os.environ['LG_BUILDDIR'])
 
 def pytest_addoption(parser):
+    def assignment(arg):
+            return arg.split('=', 1)
+
     parser.addoption('--interactive', action='store_const', const='qemu_interactive',
         dest='lg_initial_state',
         help=('(for debugging) skip tests and just start Qemu interactively'))
@@ -55,6 +58,9 @@ def pytest_addoption(parser):
     parser.addoption('--blk', action='append', dest='qemu_block',
         default=[], metavar="FILE",
         help=('Pass block device to emulated barebox. Can be specified more than once'))
+    parser.addoption('--env', action='append', dest='qemu_fw_cfg',
+        default=[], metavar="[envpath=]content | [envpath=]@filepath", type=assignment,
+        help=('Pass barebox environment files to barebox. Can be specified more than once'))
     parser.addoption('--qemu', dest='qemu_arg', nargs=argparse.REMAINDER, default=[],
         help=('Pass all remaining options to QEMU as is'))
 
@@ -109,6 +115,22 @@ def strategy(request, target, pytestconfig):
         else:
             pytest.exit("--blk unsupported for target\n", 1)
 
+    for i, fw_cfg in enumerate(pytestconfig.option.qemu_fw_cfg):
+        if virtio:
+            value = fw_cfg.pop()
+            envpath = fw_cfg.pop() if fw_cfg else f"data/fw_cfg{i}"
+
+            if value.startswith('@'):
+                source = f"file='{value[1:]}'"
+            else:
+                source = f"string='{value}'"
+
+            strategy.append_qemu_args(
+                '-fw_cfg', f'name=opt/org.barebox.env/{envpath},{source}'
+            )
+        else:
+            pytest.exit("--env unsupported for target\n", 1)
+
     for arg in pytestconfig.option.qemu_arg:
         strategy.append_qemu_args(arg)
 
diff --git a/defaultenv/defaultenv.c b/defaultenv/defaultenv.c
index 055475eb4756..3585660fbc09 100644
--- a/defaultenv/defaultenv.c
+++ b/defaultenv/defaultenv.c
@@ -18,6 +18,7 @@
 #include <uncompress.h>
 #include <malloc.h>
 #include <init.h>
+#include <libfile.h>
 #include <asm/unaligned.h>
 #include "barebox_default_env.h"
 
@@ -25,6 +26,7 @@ static LIST_HEAD(defaultenv_list);
 
 struct defaultenv {
 	struct list_head list;
+	const char *srcdir;
 	const char *name;
 	void *buf;
 	size_t size;
@@ -93,6 +95,19 @@ void defaultenv_append(void *buf, unsigned int size, const char *name)
 	list_add_tail(&df->list, &defaultenv_list);
 }
 
+void defaultenv_append_runtime_directory(const char *srcdir)
+{
+	struct defaultenv *df;
+
+	defaultenv_add_base();
+
+	df = xzalloc(sizeof(*df));
+	df->srcdir = srcdir;
+	df->name = srcdir;
+
+	list_add_tail(&df->list, &defaultenv_list);
+}
+
 static int defaultenv_load_one(struct defaultenv *df, const char *dir,
 		unsigned flags)
 {
@@ -104,6 +119,13 @@ static int defaultenv_load_one(struct defaultenv *df, const char *dir,
 
 	pr_debug("loading %s\n", df->name);
 
+	if (df->srcdir) {
+		int cpflags = 0;
+		if (flags & ENV_FLAG_NO_OVERWRITE)
+			cpflags |= COPY_FILE_NO_OVERWRITE;
+		return copy_recursive(df->srcdir, dir, cpflags);
+	}
+
 	if (!IS_ENABLED(CONFIG_DEFAULT_COMPRESSION_NONE) &&
 			ft != filetype_barebox_env) {
 		size = get_unaligned_le32(df->buf + df->size - 4);
diff --git a/fs/qemu_fw_cfg.c b/fs/qemu_fw_cfg.c
index 7f7350e67e64..ef2a1008ee5d 100644
--- a/fs/qemu_fw_cfg.c
+++ b/fs/qemu_fw_cfg.c
@@ -13,6 +13,7 @@
 #include <errno.h>
 #include <linux/stat.h>
 #include <xfuncs.h>
+#include <envfs.h>
 #include <fcntl.h>
 #include <linux/qemu_fw_cfg.h>
 #include <wchar.h>
@@ -363,7 +364,13 @@ static int fw_cfg_fs_probe(struct device *dev)
 	 */
 	fsdev->cdev = cdev_by_name(devpath_to_name(fsdev->backingstore));
 
-	return fw_cfg_fs_parse(sb);
+	ret = fw_cfg_fs_parse(sb);
+	if (ret)
+		goto free_data;
+
+	defaultenv_append_runtime_directory("/mnt/fw_cfg/by_name/opt/org.barebox.env");
+
+	return 0;
 free_data:
 	free(data);
 	return ret;
diff --git a/include/envfs.h b/include/envfs.h
index a6614c0a15ee..1a194c8bff2f 100644
--- a/include/envfs.h
+++ b/include/envfs.h
@@ -130,12 +130,17 @@ static inline const char *of_env_get_device_alias_by_path(const char *of_path)
 
 #ifdef CONFIG_DEFAULT_ENVIRONMENT
 void defaultenv_append(void *buf, unsigned int size, const char *name);
+void defaultenv_append_runtime_directory(const char *srcdir);
 int defaultenv_load(const char *dir, unsigned flags);
 #else
 static inline void defaultenv_append(void *buf, unsigned int size, const char *name)
 {
 }
 
+static inline void defaultenv_append_runtime_directory(const char *srcdir)
+{
+}
+
 static inline int defaultenv_load(const char *dir, unsigned flags)
 {
 	return -ENOSYS;
-- 
2.39.5



