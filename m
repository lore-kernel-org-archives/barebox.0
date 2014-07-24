Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XACpR-00055J-1y
 for barebox@lists.infradead.org; Thu, 24 Jul 2014 06:48:38 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:a236:9fff:fe00:814])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1XACp4-0006ms-Ex
 for barebox@lists.infradead.org; Thu, 24 Jul 2014 08:48:14 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim
 4.82_1-5b7a7c0-XX) (envelope-from <sha@pengutronix.de>)
 id 1XACp4-0007o6-DX
 for barebox@lists.infradead.org; Thu, 24 Jul 2014 08:48:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 24 Jul 2014 08:48:09 +0200
Message-Id: <1406184493-29225-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] i.MX5 internal NAND update fixes/cleanup
To: barebox@lists.infradead.org

The internal NAND update handler for i.MX5 is broken since:

| commit 15ee30138f59eac95379a4b94c538c1fcc338ed5
| Author: Sascha Hauer <s.hauer@pengutronix.de>
| Date:   Fri Jul 26 10:52:25 2013 +0200
| 
|     ARM: i.MX: bbu-internal: optionally use DCD data from image
|     
|     We used to pass the DCD data from the boards. This patch allows
|     to optionally skip passing DCD data. In this case the DCD data
|     from the flash image is used if present.
|     
|     Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

This fixes it and also cleans up the code a bit.

Sascha

----------------------------------------------------------------
Sascha Hauer (4):
      ARM: i.MX5: internal NAND update: Use variable for pre_image_size
      ARM: i.MX5: internal NAND update: Fix firmware start page for internal nand boot
      ARM: i.MX5: internal NAND update: Use variables for some constants
      ARM: i.MX5: internal NAND update: simplify code

 arch/arm/mach-imx/imx-bbu-internal.c | 63 +++++++++++++++++-------------------
 1 file changed, 29 insertions(+), 34 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
