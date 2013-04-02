Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-f53.google.com ([74.125.83.53])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UN4Y5-0006RA-B0
 for barebox@lists.infradead.org; Tue, 02 Apr 2013 16:59:06 +0000
Received: by mail-ee0-f53.google.com with SMTP id c13so331532eek.12
 for <barebox@lists.infradead.org>; Tue, 02 Apr 2013 09:59:03 -0700 (PDT)
From: Hubert Feurstein <h.feurstein@gmail.com>
Date: Tue,  2 Apr 2013 18:58:07 +0200
Message-Id: <1364921887-6487-2-git-send-email-h.feurstein@gmail.com>
In-Reply-To: <1364921887-6487-1-git-send-email-h.feurstein@gmail.com>
References: <1364921887-6487-1-git-send-email-h.feurstein@gmail.com>
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
Subject: [PATCH 2/2] mci-core: fix coding style
To: barebox@lists.infradead.org

Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>
---
 drivers/mci/mci-core.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 49612de..c8598c2 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -894,8 +894,9 @@ static int mci_startup_mmc(struct mci *mci)
 			mci_set_clock(mci, 52000000);
 		else
 			mci_set_clock(mci, 26000000);
-	} else
+	} else {
 		mci_set_clock(mci, 20000000);
+	}
 
 	/*
 	 * Unlike SD, MMC cards dont have a configuration register to notify
-- 
1.8.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
