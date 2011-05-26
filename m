Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QPgQh-0001ig-Px
	for barebox@lists.infradead.org; Thu, 26 May 2011 19:41:15 +0000
Received: from gallifrey.ext.pengutronix.de
	([2001:6f8:1178:4:5054:ff:fe8d:eefb] helo=localhost)
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <jbe@pengutronix.de>) id 1QPgQB-0004V6-Ig
	for barebox@lists.infradead.org; Thu, 26 May 2011 21:40:39 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Thu, 26 May 2011 21:39:12 +0200
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201105262139.12927.jbe@pengutronix.de>
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
Subject: [Patch/master] pr_warn() must be pr_warning() instead
To: barebox@lists.infradead.org

Fixing the following warning and error message:
[...]
drivers/mci/mci-core.c: In function 'mci_card_probe':
drivers/mci/mci-core.c:1195:3: warning: implicit declaration of function 'pr_warn'
[...]
drivers/built-in.o: In function `mci_card_probe':
/home/jb/work/Pengutronix/barebox-development/barebox-git/drivers/mci/mci-core.c:1195: undefined reference to `pr_warn'

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index a06c997..79c5e82 100644
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
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | Phone: +49-5121-206917-5128 |
Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
