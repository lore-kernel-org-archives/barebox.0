Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7MUW-0004LN-HO
 for barebox@lists.infradead.org; Thu, 27 Feb 2020 16:58:29 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 27 Feb 2020 17:58:24 +0100
Message-Id: <20200227165825.1624-2-a.fatoum@pengutronix.de>
In-Reply-To: <20200227165825.1624-1-a.fatoum@pengutronix.de>
References: <20200227165825.1624-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 1/2] usb: gadget: fastboot: call discard_range for sparse
 files as well
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

We can save some time by explicitly telling the block layer that a range
is unused before overwriting it. This brought time my sample write
from 445s to 376s.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/usb/gadget/f_fastboot.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/usb/gadget/f_fastboot.c b/drivers/usb/gadget/f_fastboot.c
index 35c4b8cf4c46..99c6a5c0cb83 100644
--- a/drivers/usb/gadget/f_fastboot.c
+++ b/drivers/usb/gadget/f_fastboot.c
@@ -941,6 +941,8 @@ static int fastboot_handle_sparse(struct f_fastboot *f_fb,
 				goto out;
 		}
 
+		discard_range(fd, retlen, pos);
+
 		if (fentry->flags & FILE_LIST_FLAG_UBI) {
 			if (!IS_ENABLED(CONFIG_UBIFORMAT)) {
 				ret = -ENOSYS;
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
