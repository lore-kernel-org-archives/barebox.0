Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo2.mail-out.ovh.net ([87.98.165.38]
	helo=mo2.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1RCYHe-0001Ub-Gp
	for barebox@lists.infradead.org; Sat, 08 Oct 2011 14:53:51 +0000
Received: from mail180.ha.ovh.net (b6.ovh.net [213.186.33.56])
	by mo2.mail-out.ovh.net (Postfix) with SMTP id 777E8DD2E16
	for <barebox@lists.infradead.org>;
	Sat,  8 Oct 2011 16:55:40 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat,  8 Oct 2011 16:29:52 +0200
Message-Id: <1318084193-2648-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20111008141722.GG10459@game.jcrosoft.org>
References: <20111008141722.GG10459@game.jcrosoft.org>
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
Subject: [PATCH 4/5] arm/bootm: enable multi uimage support
To: barebox@lists.infradead.org

tested on imx53 loco board with a Multi uImage file

generate like this

mkimage -A arm -O linux -T multi -C none -a 0x70008000 -e 0x70008000 -n Linux-2.6.35.3-00745-gce4c61a-dirty -d zImage:rootfs.cpio.lzma uImage.Multi

and boot via bootm

bootm -r @1 -L 0x72000000 /dev/ram0.kernel

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/lib/bootm.c |    5 -----
 1 files changed, 0 insertions(+), 5 deletions(-)

diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
index 7156eea..87bf3b3 100644
--- a/arch/arm/lib/bootm.c
+++ b/arch/arm/lib/bootm.c
@@ -24,11 +24,6 @@ static int do_bootm_linux(struct image_data *data)
 	void (*theKernel)(int zero, int arch, void *params);
 	image_header_t *os_header = &data->os->header;
 
-	if (image_get_type(os_header) == IH_TYPE_MULTI) {
-		printf("Multifile images not handled at the moment\n");
-		return -1;
-	}
-
 	theKernel = (void *)image_get_ep(os_header);
 
 	debug("## Transferring control to Linux (at address 0x%p) ...\n",
-- 
1.7.6.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
