Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pb9nm-00026P-4Q
	for barebox@lists.infradead.org; Fri, 07 Jan 2011 10:44:19 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  7 Jan 2011 11:43:49 +0100
Message-Id: <1294397044-5008-10-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1294397044-5008-1-git-send-email-s.hauer@pengutronix.de>
References: <1294397044-5008-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/24] blackfin: fix printf compiler warnings
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/blackfin/lib/blackfin_linux.c |    2 +-
 arch/blackfin/lib/traps.c          |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/blackfin/lib/blackfin_linux.c b/arch/blackfin/lib/blackfin_linux.c
index eda3f4c..a20cf55 100644
--- a/arch/blackfin/lib/blackfin_linux.c
+++ b/arch/blackfin/lib/blackfin_linux.c
@@ -48,7 +48,7 @@ static int do_bootm_linux(struct image_data *idata)
 	image_header_t *os_header = &os_handle->header;
 
 	appl = (int (*)(char *))image_get_ep(os_header);
-	printf("Starting Kernel at 0x%08x\n", appl);
+	printf("Starting Kernel at 0x%p\n", appl);
 
 	if (relocate_image(os_handle, (void *)image_get_load(os_header)))
 		return -1;
diff --git a/arch/blackfin/lib/traps.c b/arch/blackfin/lib/traps.c
index ce479b9..14f1da9 100644
--- a/arch/blackfin/lib/traps.c
+++ b/arch/blackfin/lib/traps.c
@@ -81,7 +81,7 @@ static const char *trap_to_string(int trapnr)
 
 void trap_c (struct pt_regs *regs)
 {
-	unsigned long trapnr = (regs->seqstat) & SEQSTAT_EXCAUSE;
+	uint32_t trapnr = (regs->seqstat) & SEQSTAT_EXCAUSE;
 	const char *str;
 
 	printf("Exception occured!\n\n");
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
