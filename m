Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from moutng.kundenserver.de ([212.227.17.9])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TYwCY-00053R-39
 for barebox@lists.infradead.org; Thu, 15 Nov 2012 09:57:39 +0000
From: Christian Kapeller <christian.kapeller@cmotion.eu>
Date: Thu, 15 Nov 2012 10:57:13 +0100
Message-Id: <1352973435-11618-1-git-send-email-christian.kapeller@cmotion.eu>
In-Reply-To: <alpine.LSU.2.00.1211121220380.14365@redbean.intranet.gw-instruments.de>
References: <alpine.LSU.2.00.1211121220380.14365@redbean.intranet.gw-instruments.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [TX53: boot fixes 0/2] Make TX53 bootable again
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?G=C3=BCnter=20Gebhardt?= <guenter.gebhardt@freenet.de>, g@pengutronix.de, Peter Wippich <pewi@gw-instruments.de>

Currently KaRo TX53-8030 soc module support is present in next branch, but
compiling the default config tx53stk5_defconfig results in an unbootable image.

This series 
 * makes the TX53-8030 board boot again [1/2]
 * fixes compilation of the TX53 board with PBL_IMAGE=n and DO_LOWLEVEL_RESET=n [2/2]

Christian Kapeller (2):
  tx53: Fix unbootable TX53-8030.
  tx53: remove reset() when not doing lowlevel init.

 arch/arm/boards/karo-tx53/dcd-data-xx30.h |    1 -
 arch/arm/boards/karo-tx53/lowlevel.c      |    3 +++
 2 files changed, 3 insertions(+), 1 deletions(-)

-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
