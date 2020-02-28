Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7cPq-000115-PC
 for barebox@lists.infradead.org; Fri, 28 Feb 2020 09:58:44 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 28 Feb 2020 10:58:18 +0100
Message-Id: <20200228095817.13332-1-a.fatoum@pengutronix.de>
In-Reply-To: <20200227165825.1624-2-a.fatoum@pengutronix.de>
References: <20200227165825.1624-2-a.fatoum@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] fixup! usb: gadget: fastboot: call discard_range for sparse
 files as well
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

I've not tested it with ubi formatted partitions and if we want it
there, it's more effecient to do it once in the ubi_format probably.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/usb/gadget/f_fastboot.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/gadget/f_fastboot.c b/drivers/usb/gadget/f_fastboot.c
index 99c6a5c0cb83..96aecacc27e5 100644
--- a/drivers/usb/gadget/f_fastboot.c
+++ b/drivers/usb/gadget/f_fastboot.c
@@ -941,8 +941,6 @@ static int fastboot_handle_sparse(struct f_fastboot *f_fb,
 				goto out;
 		}
 
-		discard_range(fd, retlen, pos);
-
 		if (fentry->flags & FILE_LIST_FLAG_UBI) {
 			if (!IS_ENABLED(CONFIG_UBIFORMAT)) {
 				ret = -ENOSYS;
@@ -959,6 +957,8 @@ static int fastboot_handle_sparse(struct f_fastboot *f_fb,
 			if (ret)
 				goto out;
 		} else {
+			discard_range(fd, retlen, pos);
+
 			pos = lseek(fd, pos, SEEK_SET);
 			if (pos == -1) {
 				ret = -errno;
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
