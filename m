Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TTtHF-0001Z5-CQ
 for barebox@lists.infradead.org; Thu, 01 Nov 2012 11:49:38 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  1 Nov 2012 12:49:33 +0100
Message-Id: <1351770573-30009-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1351770573-30009-1-git-send-email-s.hauer@pengutronix.de>
References: <1351770573-30009-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] bootm: Do not cross 1MiB sections for the devicetree
To: barebox@lists.infradead.org

ARM Linux only maps a single 1MiB section for the devicetree. This has
a 1Mib alignment, so we are not allowed to cross such a boundary. Align
the devicetree to the next power of two so that this never happens.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/bootm.c |   10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/commands/bootm.c b/commands/bootm.c
index d14ec2b..98d2e4f 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -141,6 +141,7 @@ static int bootm_open_oftree(struct image_data *data, const char *oftree, int nu
 	struct fdt_header *fdt, *fixfdt;
 	int ret;
 	size_t size;
+	unsigned int align;
 
 	if (bootm_verbose(data))
 		printf("Loading oftree from '%s'\n", oftree);
@@ -189,7 +190,14 @@ static int bootm_open_oftree(struct image_data *data, const char *oftree, int nu
 				file_type_to_string(ft));
 	}
 
-	fixfdt = xmemalign(4096, size + OFTREE_SIZE_INCREASE);
+	/*
+	 * ARM Linux uses a single 1MiB section (with 1MiB alignment)
+	 * for mapping the devicetree, so we are not allowed to cross
+	 * 1MiB boundaries.
+	 */
+	align = 1 << fls(size + OFTREE_SIZE_INCREASE - 1);
+
+	fixfdt = xmemalign(align, size + OFTREE_SIZE_INCREASE);
 	memcpy(fixfdt, fdt, size);
 
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
