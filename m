Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ua3PY-0007yq-Ba
 for barebox@lists.infradead.org; Wed, 08 May 2013 12:24:01 +0000
Received: from isonoe.hi.pengutronix.de ([10.1.0.76])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1Ua3PB-0005JM-5F
 for barebox@lists.infradead.org; Wed, 08 May 2013 14:23:33 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Wed, 8 May 2013 14:21:11 +0200
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201305081421.11205.jbe@pengutronix.de>
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
Subject: [PATCH] MCI/MXS: fix signed/unsigned mismatch
To: barebox@lists.infradead.org

Using the MXS MCI driver with an eight bit capable eMMC results into the
'devinfo' message the interface uses '0' bits for data transfer:
    
 barebox:/ devinfo mxs_mci0
 resources:
 num   : 0
 start : 0x80034000
 size  : 0x00002000
 driver: mxs_mci
 bus: platform
    
  Interface
   Min. bus clock: 1476 Hz
   Max. bus clock: 48000000 Hz
   Current bus clock: 24000000 Hz
   Bus width: 0 bit
    
The eight bit interface width is stored internally as value '2'. And a two bit
'2' ends up into 0xfffffffe when used as an array index. Using an unsigned
field instead fixes this issue:
    
 barebox:/ devinfo mxs_mci0
 resources:
 num   : 0
 start : 0x80034000
 size  : 0x00002000
 driver: mxs_mci
 bus: platform
    
  Interface
   Min. bus clock: 1476 Hz
   Max. bus clock: 48000000 Hz
   Current bus clock: 24000000 Hz
   Bus width: 8 bit

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>

diff --git a/drivers/mci/mxs.c b/drivers/mci/mxs.c
index c15461c..9dee863 100644
--- a/drivers/mci/mxs.c
+++ b/drivers/mci/mxs.c
@@ -55,7 +55,7 @@ struct mxs_mci_host {
 	unsigned	f_min;
 	unsigned	f_max;
 #endif
-	int		bus_width:2; /* 0 = 1 bit, 1 = 4 bit, 2 = 8 bit */
+	unsigned	bus_width:2; /* 0 = 1 bit, 1 = 4 bit, 2 = 8 bit */
 };
 
 #define to_mxs_mci(mxs) container_of(mxs, struct mxs_mci_host, host)

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
