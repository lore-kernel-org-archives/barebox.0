Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGllf-0005AA-L9
 for barebox@lists.infradead.org; Tue, 24 Mar 2020 15:47:05 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id E8E3E27E0C4F
 for <barebox@lists.infradead.org>; Tue, 24 Mar 2020 16:46:58 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
Date: Tue, 24 Mar 2020 16:46:47 +0100
Message-Id: <20200324154647.17341-4-jmaselbas@kalray.eu>
In-Reply-To: <20200324154647.17341-1-jmaselbas@kalray.eu>
References: <20200324154647.17341-1-jmaselbas@kalray.eu>
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
Subject: [PATCH 3/3] usb: gadget: dfu: Reset global variables on unbind
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>

Global variables must be reset to their default value before a new
dfu_bind is done. Otherwise things wont work and are likely to cause
a system crash due to a use after free: the global dfu_files was still
pointing deallocated structure after unbind.

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/usb/gadget/dfu.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/usb/gadget/dfu.c b/drivers/usb/gadget/dfu.c
index 592586db1..5504f4933 100644
--- a/drivers/usb/gadget/dfu.c
+++ b/drivers/usb/gadget/dfu.c
@@ -277,6 +277,15 @@ dfu_unbind(struct usb_configuration *c, struct usb_function *f)
 {
 	struct f_dfu		*dfu = func_to_dfu(f);
 
+	memset(&dfu_mtdinfo, 0, sizeof(dfu_mtdinfo));
+	dfu_files = NULL;
+	dfu_file_entry = NULL;
+	dfufd = -EINVAL;
+	dfudetach = 0;
+	dfu_written = 0;
+	dfu_erased = 0;
+	prog_erase = 0;
+
 	usb_free_all_descriptors(f);
 
 	dma_free(dfu->dnreq->buf);
-- 
2.21.0.196.g041f5ea


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
