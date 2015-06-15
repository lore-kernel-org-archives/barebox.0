Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.rapiddevelopmentkit.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z4PnZ-0002qn-OX
 for barebox@lists.infradead.org; Mon, 15 Jun 2015 08:31:18 +0000
From: Wadim Egorov <w.egorov@phytec.de>
Date: Mon, 15 Jun 2015 10:29:33 +0200
Message-Id: <1434356973-16490-1-git-send-email-w.egorov@phytec.de>
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
Subject: [PATCH] scripts/omap_signGP: Fix image size in GP header
To: barebox@lists.infradead.org
Cc: p-stockmar@ti.com

The size field in the GP header has to include its own size.
This can be easily misread in the TRM.

Sometimes, when the gp_header size is not included, the ROM code
will not copy the complete MLO into the SRAM. This happens when the MLO file
size is 98823 bytes (and the value of GP header size field is 98303 bytes).

Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
---

This patch is the fix for the following reported issue:

  http://lists.infradead.org/pipermail/barebox/2015-March/023022.html

A 98823 bytes big lzo packed MLO will not be copied correctly to the SRAM.
This will cause a failure in the lzo code. The lzo code expects a correct MLO
and is not the real problem here!

We have discussed this problem with TI.

---
 scripts/omap_signGP.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/scripts/omap_signGP.c b/scripts/omap_signGP.c
index 482cfac..ac47fdf 100644
--- a/scripts/omap_signGP.c
+++ b/scripts/omap_signGP.c
@@ -317,8 +317,15 @@ int main(int argc, char *argv[])
 		if (fwrite(&config_header, 1, 512, ofile) <= 0)
 			pdie("fwrite");
 
+	/* The size field in the header needs to include the
+	 * size of the gp_header */
+	len += sizeof(struct gp_header);
+
 	if (fwrite(&len, 1, 4, ofile) <= 0)
 		pdie("fwrite");
+
+	len -= sizeof(struct gp_header);
+
 	if (fwrite(&loadaddr, 1, 4, ofile) <= 0)
 		pdie("fwrite");
 	for (i = 0; i < len; i++) {
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
