Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UiJXk-0001BM-IS
 for barebox@lists.infradead.org; Fri, 31 May 2013 07:14:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 31 May 2013 09:14:00 +0200
Message-Id: <1369984443-8790-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1369984443-8790-1-git-send-email-s.hauer@pengutronix.de>
References: <1369984443-8790-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/6] mci: rename trans_speed field to csd_max_dtr
To: barebox@lists.infradead.org
Cc: Juergen Beisert <jbe@pengutronix.de>

tran_speed is confusing since the name doesn't tell us if this
is the maximum speed, the current speed or whatever else. Rename
it to csd_max_dtr since this variable holds the maximum data transfer
rate we extracted from csd.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/mci-core.c | 4 ++--
 include/mci.h          | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 895108f..d7b8fc9 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -779,8 +779,8 @@ static void mci_extract_max_tran_speed_from_csd(struct mci *mci)
 		return;
 	}
 
-	mci->tran_speed = time * unit;
-	dev_dbg(&mci->dev, "Transfer speed: %u\n", mci->tran_speed);
+	mci->csd_max_dtr = time * unit;
+	dev_dbg(&mci->dev, "Transfer speed: %u\n", mci->csd_max_dtr);
 }
 
 /**
diff --git a/include/mci.h b/include/mci.h
index 1eb967d..2b87691 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -340,7 +340,7 @@ struct mci {
 	unsigned csd[4];	/**< card's "card specific data register" */
 	unsigned cid[4];	/**< card's "card identification register" */
 	unsigned short rca;	/* FIXME */
-	unsigned tran_speed;	/**< not yet used */
+	unsigned csd_max_dtr;	/**< max data transfer rate as decoded from csd */
 	/** currently used data block length for read accesses */
 	unsigned read_bl_len;
 	/** currently used data block length for write accesses */
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
