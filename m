Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YdLHq-0007py-Iz
 for barebox@lists.infradead.org; Wed, 01 Apr 2015 16:14:42 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Wed,  1 Apr 2015 18:14:07 +0200
Message-Id: <1427904855-32548-3-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1427904855-32548-1-git-send-email-mkl@pengutronix.de>
References: <1427904855-32548-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 02/10] imx-image: add_header_v2(): replace hardcoded 0x400 by
 offset parameter
To: barebox@lists.infradead.org
Cc: sha@pengutronix.de

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 scripts/imx/imx-image.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index 2fa84b1a1d53..3d8b604b7cb4 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -186,9 +186,9 @@ static int add_header_v2(void *buf, int offset, uint32_t loadaddr, uint32_t imag
 	hdr->header.version	= IVT_VERSION;
 
 	hdr->entry		= loadaddr + 0x1000;
-	hdr->dcd_ptr		= loadaddr + 0x400 + offsetof(struct imx_flash_header_v2, dcd_header);
-	hdr->boot_data_ptr	= loadaddr + 0x400 + offsetof(struct imx_flash_header_v2, boot_data);
-	hdr->self		= loadaddr + 0x400;
+	hdr->dcd_ptr		= loadaddr + offset + offsetof(struct imx_flash_header_v2, dcd_header);
+	hdr->boot_data_ptr	= loadaddr + offset + offsetof(struct imx_flash_header_v2, boot_data);
+	hdr->self		= loadaddr + offset;
 
 	hdr->boot_data.start	= loadaddr;
 	hdr->boot_data.size	= imagesize;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
