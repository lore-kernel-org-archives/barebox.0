Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YdLHq-0007q0-Iv
 for barebox@lists.infradead.org; Wed, 01 Apr 2015 16:14:39 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Wed,  1 Apr 2015 18:14:08 +0200
Message-Id: <1427904855-32548-4-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 03/10] imx-image: replace 0x400 by FLASH_HEADER_OFFSET
To: barebox@lists.infradead.org
Cc: sha@pengutronix.de

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 scripts/imx/imx-image.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index 3d8b604b7cb4..45f97504054e 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -711,8 +711,9 @@ int main(int argc, char *argv[])
 		exit(1);
 
 	if (!image_dcd_offset) {
-		fprintf(stderr, "no dcd offset given ('dcdofs'). Defaulting to 0x400\n");
-		image_dcd_offset = 0x400;
+		fprintf(stderr, "no dcd offset given ('dcdofs'). Defaulting to 0x%08x\n",
+			FLASH_HEADER_OFFSET);
+		image_dcd_offset = FLASH_HEADER_OFFSET;
 	}
 
 	if (!header_version) {
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
