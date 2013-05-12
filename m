Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-f44.google.com ([74.125.83.44])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UbW1x-0002tO-MS
 for barebox@lists.infradead.org; Sun, 12 May 2013 13:09:46 +0000
Received: by mail-ee0-f44.google.com with SMTP id b57so1059243eek.31
 for <barebox@lists.infradead.org>; Sun, 12 May 2013 06:09:14 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Sun, 12 May 2013 15:09:02 +0200
Message-Id: <1368364146-6024-2-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1368364146-6024-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1368364146-6024-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 1/5] scripts: kwbimage: add references to Marvell Dove SoC
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>

This adds some references to Marvell Dove as it is also supported by
kwbimage.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Acked-by: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
---
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Cc: barebox@lists.infradead.org
---
 scripts/kwbimage.c |    9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/scripts/kwbimage.c b/scripts/kwbimage.c
index 90714aa..14b35e7 100644
--- a/scripts/kwbimage.c
+++ b/scripts/kwbimage.c
@@ -1,5 +1,6 @@
 /*
- * Image manipulator for Kirkwood, Armada 370 and Armada XP platforms.
+ * Image manipulator for Marvell SoCs
+ *  supports Kirkwood, Dove, Armada 370, and Armada XP
  *
  * (C) Copyright 2013 Thomas Petazzoni
  * <thomas.petazzoni@free-electrons.com>
@@ -15,9 +16,9 @@
  * GNU General Public License for more details.
  *
  * This tool allows to extract and create bootable images for Marvell
- * Kirkwood, Marvell Armada 370 and Armada XP SoCs. It supports two
+ * Kirkwood, Dove, Armada 370, and Armada XP SoCs. It supports two
  * versions of the bootable image format: version 0 (used on Marvell
- * Kirkwood) and version 1 (used on Marvell Armada 370/XP).
+ * Kirkwood and Dove) and version 1 (used on Marvell Armada 370/XP).
  *
  * To extract an image, run:
  *  ./scripts/kwbimage -x -i <image-file> -o <some-directory>
@@ -53,7 +54,7 @@
 
 #define ALIGN_SUP(x, a) (((x) + (a - 1)) & ~(a - 1))
 
-/* Structure of the main header, version 0 (Kirkwood) */
+/* Structure of the main header, version 0 (Kirkwood, Dove) */
 struct main_hdr_v0 {
 	uint8_t  blockid;		/*0     */
 	uint8_t  nandeccmode;		/*1     */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
