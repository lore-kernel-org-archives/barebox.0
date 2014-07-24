Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XACpR-00055M-1x
 for barebox@lists.infradead.org; Thu, 24 Jul 2014 06:48:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 24 Jul 2014 08:48:11 +0200
Message-Id: <1406184493-29225-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1406184493-29225-1-git-send-email-s.hauer@pengutronix.de>
References: <1406184493-29225-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/4] ARM: i.MX5: internal NAND update: Fix firmware start page
 for internal nand boot
To: barebox@lists.infradead.org

Documentation clearly states that the FCB at offset 0x68 has
to contain the start page of the firmware. In our case this
was set to 0x0. I don't know how this could ever work, but it
did, at least until:

15ee301 ARM: i.MX: bbu-internal: optionally use DCD data from image

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/imx-bbu-internal.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
index ae981e8..a5cb7e7 100644
--- a/arch/arm/mach-imx/imx-bbu-internal.c
+++ b/arch/arm/mach-imx/imx-bbu-internal.c
@@ -202,6 +202,9 @@ static int imx_bbu_internal_v2_write_nand_dbbt(struct imx_internal_bbu_handler *
 	*ptr++ = FCB_MAGIC;	/* FCB */
 	*ptr++ = 1;		/* FCB version */
 
+	ptr = image + 0x68; /* Firmware start page */
+	*ptr = 12;
+
 	ptr = image + 0x78; /* DBBT start page */
 	*ptr = 4;
 
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
