Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo4.mail-out.ovh.net ([188.165.54.143]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1Qn0KI-0001kV-7R
	for barebox@lists.infradead.org; Sat, 30 Jul 2011 03:35:02 +0000
Received: from mail182.ha.ovh.net (b6.ovh.net [213.186.33.56])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id 6CA63FF9FF4
	for <barebox@lists.infradead.org>;
	Sat, 30 Jul 2011 05:35:46 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 30 Jul 2011 05:17:07 +0200
Message-Id: <1311995831-25350-6-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20110729155356.GF25658@game.jcrosoft.org>
References: <20110729155356.GF25658@game.jcrosoft.org>
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
Subject: [PATCH 19/23] sandbox: switch to resource
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/sandbox/board/hostfile.c                     |   14 ++------------
 arch/sandbox/mach-sandbox/include/mach/hostfile.h |    2 +-
 arch/sandbox/os/common.c                          |    4 ++--
 3 files changed, 5 insertions(+), 15 deletions(-)
 create mode 100644 arch/sandbox/include/asm/io.h

diff --git a/arch/sandbox/board/hostfile.c b/arch/sandbox/board/hostfile.c
index b049baa..f5452af 100644
--- a/arch/sandbox/board/hostfile.c
+++ b/arch/sandbox/board/hostfile.c
@@ -102,17 +102,7 @@ device_initcall(hf_init);
 
 int barebox_register_filedev(struct hf_platform_data *hf)
 {
-	struct device_d *dev;
-
-	dev = xzalloc(sizeof(struct device_d));
-
-	dev->platform_data = hf;
-
-	strcpy(dev->name, "hostfile");
-	dev->size = hf->size;
-	dev->id = -1;
-	dev->map_base = hf->map_base;
-
-	return register_device(dev);
+	return !add_generic_device("hostfile", -1, NULL, hf->base, hf->size,
+			   IORESOURCE_MEM, hf);
 }
 
diff --git a/arch/sandbox/include/asm/io.h b/arch/sandbox/include/asm/io.h
new file mode 100644
index 0000000..e69de29
diff --git a/arch/sandbox/mach-sandbox/include/mach/hostfile.h b/arch/sandbox/mach-sandbox/include/mach/hostfile.h
index f7aca7c..7c4e67c 100644
--- a/arch/sandbox/mach-sandbox/include/mach/hostfile.h
+++ b/arch/sandbox/mach-sandbox/include/mach/hostfile.h
@@ -4,7 +4,7 @@
 struct hf_platform_data {
 	int fd;
 	size_t size;
-	unsigned long map_base;
+	unsigned long base;
 	char *filename;
 	char *name;
 };
diff --git a/arch/sandbox/os/common.c b/arch/sandbox/os/common.c
index dcaf0c8..5074a06 100644
--- a/arch/sandbox/os/common.c
+++ b/arch/sandbox/os/common.c
@@ -236,10 +236,10 @@ static int add_image(char *str, char *name)
 	hf->name = strdup(name);
 
 	if (map) {
-		hf->map_base = (unsigned long)mmap(NULL, hf->size,
+		hf->base = (unsigned long)mmap(NULL, hf->size,
 				PROT_READ | (readonly ? 0 : PROT_WRITE),
 				MAP_SHARED, fd, 0);
-		if ((void *)hf->map_base == MAP_FAILED)
+		if ((void *)hf->base == MAP_FAILED)
 			printf("warning: mmapping %s failed\n", file);
 	}
 
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
