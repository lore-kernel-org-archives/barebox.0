Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RDM8M-0007mo-Fl
	for barebox@lists.infradead.org; Mon, 10 Oct 2011 20:07:35 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <rsc@pengutronix.de>) id 1RDM8L-00034v-2W
	for barebox@lists.infradead.org; Mon, 10 Oct 2011 22:07:33 +0200
Received: from rsc by octopus.hi.pengutronix.de with local (Exim 4.76)
	(envelope-from <rsc@pengutronix.de>) id 1RDM8L-0004qa-19
	for barebox@lists.infradead.org; Mon, 10 Oct 2011 22:07:33 +0200
Date: Mon, 10 Oct 2011 22:07:33 +0200
From: Robert Schwebel <r.schwebel@pengutronix.de>
Message-ID: <20111010200732.GB18273@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] mci-core: fix typo for pr_warn
To: barebox@lists.infradead.org

It is pr_warning(), not pr_warn().

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 drivers/mci/mci-core.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 681de0a..09f7e29 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1192,7 +1192,7 @@ static int mci_card_probe(struct device_d *mci_dev)
 	/* reset the card */
 	rc = mci_go_idle(mci_dev);
 	if (rc) {
-		pr_warn("Cannot reset the SD/MMC card\n");
+		pr_warning("Cannot reset the SD/MMC card\n");
 		goto on_error;
 	}
 
-- 
1.7.6.3

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
