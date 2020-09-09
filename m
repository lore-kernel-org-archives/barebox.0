Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kFxrJ-0002vE-Hv
 for barebox@lists.infradead.org; Wed, 09 Sep 2020 11:01:50 +0000
From: Juergen Borleis <jbe@pengutronix.de>
Date: Wed,  9 Sep 2020 13:01:16 +0200
Message-Id: <20200909110118.19923-3-jbe@pengutronix.de>
In-Reply-To: <20200909110118.19923-1-jbe@pengutronix.de>
References: <20200909110118.19923-1-jbe@pengutronix.de>
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
Subject: [PATCH 3/5] mci: mci-core: fix long lasting FIXMEs
To: barebox@lists.infradead.org
Cc: Juergen Borleis <jbe@pengutronix.de>

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 drivers/mci/mci-core.c | 22 +++++++++++++---------
 1 file changed, 13 insertions(+), 9 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index a58dedc1cd..d93be6d33f 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -361,9 +361,9 @@ static int mmc_send_op_cond(struct mci *mci)
 }
 
 /**
- * FIXME
- * @param mci MCI instance
- * @param ext_csd Buffer for a 512 byte sized extended CSD
+ * Read-in the card's whole extended CSD configuration area
+ * @param[in] mci MCI instance
+ * @param[out] ext_csd Buffer for an #EXT_CSD_BLOCKSIZE byte sized extended CSD
  * @return Transaction status (0 on success)
  *
  * Note: Only cards newer than Version 1.1 (Physical Layer Spec) support
@@ -379,19 +379,23 @@ int mci_send_ext_csd(struct mci *mci, char *ext_csd)
 
 	data.dest = ext_csd;
 	data.blocks = 1;
-	data.blocksize = 512;
+	data.blocksize = EXT_CSD_BLOCKSIZE;
 	data.flags = MMC_DATA_READ;
 
 	return mci_send_cmd(mci, &cmd, &data);
 }
 
 /**
- * FIXME
- * @param mci MCI instance
- * @param set FIXME
- * @param index FIXME
- * @param value FIXME
+ * Write a byte into the card's extended CSD configuration area
+ * @param[in] mci MCI instance
+ * @param[in] index Byte index in the extended CSD configuration area
+ * @param[in] value Byte to write at index into the extended CSD configuration area
  * @return Transaction status (0 on success)
+ *
+ * This sends a CMD6 (aka SWITCH) to the card and writes @b value at extended CSD @b index.
+ *
+ * @note It always writes a full byte, the alternatives 'bit set' and
+ *      'bit clear' aren't supported.
  */
 int mci_switch(struct mci *mci, unsigned index, unsigned value)
 {
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
