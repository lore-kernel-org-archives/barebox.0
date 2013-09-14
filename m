Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo4.mail-out.ovh.net ([178.32.228.4])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VKovu-0002zm-OU
 for barebox@lists.infradead.org; Sat, 14 Sep 2013 12:26:39 +0000
Received: from mail408.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id B50121068DDC
 for <barebox@lists.infradead.org>; Sat, 14 Sep 2013 14:26:17 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 14 Sep 2013 14:27:18 +0200
Message-Id: <1379161639-27488-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20130914120725.GB21829@ns203013.ovh.net>
References: <20130914120725.GB21829@ns203013.ovh.net>
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
Subject: [PATCH 1/2] add fix size tools
To: barebox@lists.infradead.org

this will allow to write the size of barebox at an offset of the binary

this is needed for ARM when using relocated binary

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 scripts/Makefile   |  1 +
 scripts/fix_size.c | 81 ++++++++++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 82 insertions(+)
 create mode 100644 scripts/fix_size.c

diff --git a/scripts/Makefile b/scripts/Makefile
index 307dc3d..61f31db 100644
--- a/scripts/Makefile
+++ b/scripts/Makefile
@@ -7,6 +7,7 @@
 hostprogs-$(CONFIG_KALLSYMS)     += kallsyms
 hostprogs-y                      += bin2c
 hostprogs-y                      += mkimage
+hostprogs-y                      += fix_size
 hostprogs-y                      += bareboxenv
 hostprogs-$(CONFIG_ARCH_MVEBU)   += kwbimage kwboot
 hostprogs-$(CONFIG_ARCH_NETX)    += gen_netx_image
diff --git a/scripts/fix_size.c b/scripts/fix_size.c
new file mode 100644
index 0000000..869ae7e
--- /dev/null
+++ b/scripts/fix_size.c
@@ -0,0 +1,81 @@
+#include <stdlib.h>
+#include <stdio.h>
+#include <sys/types.h>
+#include <sys/stat.h>
+#include <unistd.h>
+#include <stdint.h>
+#include <fcntl.h>
+#ifndef _BSD_SOURCE
+#define _BSD_SOURCE             /* See feature_test_macros(7) */
+#endif
+#include <endian.h>
+
+int main(int argc, char**argv)
+{
+	struct stat s;
+	int c;
+	int fd;
+	uint64_t offset = 0;
+	uint32_t size = 0;
+	char *file = NULL;
+	int ret = 1;
+	int is_bigendian = 0;
+
+	while ((c = getopt (argc, argv, "hf:o:b")) != -1) {
+		switch (c) {
+		case 'f':
+			file = optarg;
+			break;
+		case 'o':
+			offset = strtoul(optarg, NULL, 16);
+			break;
+		case 'b':
+			is_bigendian = 1;
+			break;
+		}
+	}
+
+	if (!file) {
+		fprintf(stderr, "missing file\n");
+		return 1;
+	}
+
+	if (stat(file, &s)) {
+		perror("stat");
+		return 1;
+	}
+
+	fd = open(file, O_WRONLY);
+	if (fd < 0) {
+		perror("open");
+		return 1;
+	}
+
+	ret = lseek(fd, offset, SEEK_SET);
+	if (ret < 0) {
+		perror("lseek");
+		ret = 1;
+		goto err;
+	}
+
+	size = s.st_size;
+
+	if (is_bigendian)
+		size = htobe32(size);
+	else
+		size = htole32(size);
+
+	ret = write(fd, &size, 4);
+	if (ret != 4) {
+		perror("write");
+		ret = 1;
+		goto err;
+	}
+
+	ret = 0;
+err:
+
+	close(fd);
+
+	return ret;
+}
-- 
1.8.4.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
