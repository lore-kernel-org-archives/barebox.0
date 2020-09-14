Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kHq1w-00088m-Os
 for barebox@lists.infradead.org; Mon, 14 Sep 2020 15:04:35 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Sep 2020 17:04:30 +0200
Message-Id: <20200914150430.23818-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH] fixup! mci: mci-core: add GPP support
To: barebox@lists.infradead.org
Cc: Juergen Borleis <jbe@pengutronix.de>, Ahmad Fatoum <a.fatoum@pengutronix.de>

1) use %zu for size_t argument, otherwise we read garbage on 64-bit CPUs
2) use xasprintf instead of risking null pointer deref on ENOMEM

Cc: Juergen Borleis <jbe@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/mci-core.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 21eff2f593d8..437ecc76c96f 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -496,8 +496,8 @@ static __maybe_unused void mmc_extract_gpp_partitions(struct mci *mci)
 		/* Convert to bytes */
 		part_size *= wpgs;
 
-		partname = basprintf("gpp%d", idx);
-		name = basprintf("%s.%s", mci->cdevname, partname);
+		partname = xasprintf("gpp%zu", idx);
+		name = xasprintf("%s.%s", mci->cdevname, partname);
 		/* TODO read-only flag */
 		mci_part_add(mci, part_size, EXT_CSD_PART_CONFIG_ACC_GPP0 + idx,
 			     name, partname, idx, false, MMC_BLK_DATA_AREA_GP);
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
