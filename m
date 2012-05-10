Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SSPmL-0001Xm-Kj
 for barebox@lists.infradead.org; Thu, 10 May 2012 09:37:03 +0000
Received: by lbbgg6 with SMTP id gg6so1125330lbb.36
 for <barebox@lists.infradead.org>; Thu, 10 May 2012 02:35:19 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 10 May 2012 13:35:12 +0400
Message-Id: <1336642512-23885-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1336642512-23885-1-git-send-email-antonynpavlov@gmail.com>
References: <1336642512-23885-1-git-send-email-antonynpavlov@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [RFCv2 2/2] MIPS: bootm: add "MIPS barebox" handler
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/lib/Makefile |    1 +
 arch/mips/lib/bootm.c  |   43 +++++++++++++++++++++++++++++++++++++++++++
 common/filetype.c      |    2 ++
 include/filetype.h     |    1 +
 4 files changed, 47 insertions(+)
 create mode 100644 arch/mips/lib/bootm.c

diff --git a/arch/mips/lib/Makefile b/arch/mips/lib/Makefile
index 45fe920..85aa194 100644
--- a/arch/mips/lib/Makefile
+++ b/arch/mips/lib/Makefile
@@ -6,3 +6,4 @@ obj-y += ashrdi3.o
 obj-y += memory.o
 
 obj-$(CONFIG_CMD_MIPS_CPUINFO) += cpuinfo.o
+obj-$(CONFIG_CMD_BOOTM)	+= bootm.o
diff --git a/arch/mips/lib/bootm.c b/arch/mips/lib/bootm.c
new file mode 100644
index 0000000..3d6a4ce
--- /dev/null
+++ b/arch/mips/lib/bootm.c
@@ -0,0 +1,43 @@
+#include <boot.h>
+#include <common.h>
+#include <init.h>
+#include <fs.h>
+#include <errno.h>
+#include <binfmt.h>
+
+#include <asm/byteorder.h>
+
+static int do_bootm_barebox(struct image_data *data)
+{
+	void (*barebox)(void);
+
+	barebox = read_file(data->os_file, NULL);
+	if (!barebox)
+		return -EINVAL;
+
+	shutdown_barebox();
+
+	barebox();
+
+	reset_cpu(0);
+}
+
+static struct image_handler barebox_handler = {
+	.name = "MIPS barebox",
+	.bootm = do_bootm_barebox,
+	.filetype = filetype_mips_barebox,
+};
+
+static struct binfmt_hook binfmt_barebox_hook = {
+	.type = filetype_mips_barebox,
+	.exec = "bootm",
+};
+
+static int mips_register_image_handler(void)
+{
+	register_image_handler(&barebox_handler);
+	binfmt_register(&binfmt_barebox_hook);
+
+	return 0;
+}
+late_initcall(mips_register_image_handler);
diff --git a/common/filetype.c b/common/filetype.c
index 15a3732..39c2098 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -78,6 +78,8 @@ enum filetype file_detect_type(void *_buf)
 		return filetype_oftree;
 	if (strncmp(buf8, "ANDROID!", 8) == 0)
 		return filetype_aimage;
+	if (strncmp(buf8 + 0x10, "barebox", 7) == 0)
+		return filetype_mips_barebox;
 
 	return filetype_unknown;
 }
diff --git a/include/filetype.h b/include/filetype.h
index 9338793..f5de8ed 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -17,6 +17,7 @@ enum filetype {
 	filetype_oftree,
 	filetype_aimage,
 	filetype_sh,
+	filetype_mips_barebox,
 };
 
 const char *file_type_to_string(enum filetype f);
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
