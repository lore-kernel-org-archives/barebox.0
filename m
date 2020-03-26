Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHXJm-0000zF-Ly
 for barebox@lists.infradead.org; Thu, 26 Mar 2020 18:33:28 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 51E9B27E0BEB
 for <barebox@lists.infradead.org>; Thu, 26 Mar 2020 19:33:25 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
Date: Thu, 26 Mar 2020 19:33:01 +0100
Message-Id: <20200326183304.16531-2-jmaselbas@kalray.eu>
In-Reply-To: <20200326183304.16531-1-jmaselbas@kalray.eu>
References: <20200326183304.16531-1-jmaselbas@kalray.eu>
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
Subject: [PATCH v2 1/4] usb: gadget: dfu: Reset global variables on unbind
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>

Global variables must be reset to their default value before a new
dfu_bind is done. Otherwise things wont work and are likely to cause
a system crash due to a use after free: the global dfu_files was still
pointing deallocated structure after unbind.

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/usb/gadget/dfu.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/usb/gadget/dfu.c b/drivers/usb/gadget/dfu.c
index c2b3d481a..5bdcb68bf 100644
--- a/drivers/usb/gadget/dfu.c
+++ b/drivers/usb/gadget/dfu.c
@@ -271,6 +271,10 @@ dfu_unbind(struct usb_configuration *c, struct usb_function *f)
 {
 	struct f_dfu		*dfu = func_to_dfu(f);
 
+	dfu_files = NULL;
+	dfu_file_entry = NULL;
+	dfudetach = 0;
+
 	usb_free_all_descriptors(f);
 
 	dma_free(dfu->dnreq->buf);
-- 
2.21.0.196.g041f5ea


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
