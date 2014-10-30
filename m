Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22b.google.com ([2a00:1450:4010:c03::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Xjoro-0002XB-TW
 for barebox@lists.infradead.org; Thu, 30 Oct 2014 12:30:18 +0000
Received: by mail-la0-f43.google.com with SMTP id ge10so4288282lab.2
 for <barebox@lists.infradead.org>; Thu, 30 Oct 2014 05:29:54 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 30 Oct 2014 15:30:38 +0300
Message-Id: <1414672239-9998-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1414672239-9998-1-git-send-email-antonynpavlov@gmail.com>
References: <1414672239-9998-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 1/2] Typoes:  "whith" -> "with"
To: barebox@lists.infradead.org

This patch is based on linux kernel commit

    commit e1b8513d21845fbeb93d6d2c4973db874385059f
    Author: Robert P. J. Day <rpjday@crashcourse.ca>
    Date:   Sun Feb 3 15:14:02 2008 +0200

        Typoes:  "whith" -> "with"

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
Cc: Robert P. J. Day <rpjday@crashcourse.ca>
---
 Makefile          | 2 +-
 drivers/mci/mxs.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/Makefile b/Makefile
index d959f57..c5f965e 100644
--- a/Makefile
+++ b/Makefile
@@ -1137,7 +1137,7 @@ endif #ifeq ($(mixed-targets),1)
 # Single targets
 # ---------------------------------------------------------------------------
 # Single targets are compatible with:
-# - build whith mixed source and output
+# - build with mixed source and output
 # - build with separate output dir 'make O=...'
 # - external modules
 #
diff --git a/drivers/mci/mxs.c b/drivers/mci/mxs.c
index 6e02d46..738bde9 100644
--- a/drivers/mci/mxs.c
+++ b/drivers/mci/mxs.c
@@ -152,7 +152,7 @@ static void mxs_mci_setup_timeout(struct mxs_mci_host *mxs_mci, unsigned to)
  * @return 0 on success, negative values else
  *
  * @note This routine uses PIO to read in the data bytes from the FIFO. This
- * may fail whith high clock speeds. If you receive -EIO errors you can try
+ * may fail with high clock speeds. If you receive -EIO errors you can try
  * again with reduced clock speeds.
  */
 static int mxs_mci_read_data(struct mxs_mci_host *mxs_mci, void *buffer, unsigned length)
-- 
2.1.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
