Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SiZeV-00060X-UB
 for barebox@lists.infradead.org; Sat, 23 Jun 2012 23:22:04 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jlu@pengutronix.de>) id 1SiZeR-0001gO-3B
 for barebox@lists.infradead.org; Sun, 24 Jun 2012 01:21:59 +0200
Received: from jlu by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <jlu@pengutronix.de>) id 1SiZeR-0008CP-27
 for barebox@lists.infradead.org; Sun, 24 Jun 2012 01:21:59 +0200
Date: Sun, 24 Jun 2012 01:21:59 +0200
From: Jan Luebbe <jlu@pengutronix.de>
Message-ID: <20120623232159.GA30515@pengutronix.de>
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
Subject: Regression for the Beagle Board
To: barebox@lists.infradead.org

Hi,

I tried to run master on the beagle board and discovered it fails to
bring up USB EHCI. I bisected it to 08845e41fba2b16dd3050b6b910c615e1bb8e57c.

commit 08845e41fba2b16dd3050b6b910c615e1bb8e57c
Author: Sascha Hauer <s.hauer@pengutronix.de>
Date:   Wed May 23 12:54:24 2012 +0200

    usb ehci: Add resource sizes
    
    add_usb_ehci_device registers resources with size 0. Fix this.
    
    Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

diff --git a/drivers/base/resource.c b/drivers/base/resource.c
index b31c7d7..347b2f0 100644
--- a/drivers/base/resource.c
+++ b/drivers/base/resource.c
@@ -113,8 +113,10 @@ struct device_d *add_usb_ehci_device(int id, resource_size_t hccr,
 
        res = xzalloc(sizeof(struct resource) * 2);
        res[0].start = hccr;
+       res[0].size = 0x40;
        res[0].flags = IORESOURCE_MEM;
        res[1].start = hcor;
+       res[1].size = 0xc0;
        res[1].flags = IORESOURCE_MEM;
 
        return add_generic_device_res("ehci", id, res, 2, pdata);

On the beagle board we have the following resources for EHCI:
/ devinfo ehci0
resources:
num   : 0
start : 0x48064800
size  : 0x00000000
num   : 1
start : 0x48064810
size  : 0x00000000
driver: ehci

This causes conflicting regions (#define DEBUG in common/resource.c):
request_region: 0x48064810:0x000000c0 conflicts with 0x48064800:0x00000040

What would be the best way to solve this? Pass the resource sizes from the
board file along with the start addresses?

Best regards,
Jan

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
