Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XCNGn-0002qh-6E
 for barebox@lists.infradead.org; Wed, 30 Jul 2014 06:21:50 +0000
Date: Wed, 30 Jul 2014 08:21:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140730062124.GJ23235@pengutronix.de>
References: <1406107568-8440-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1406553970-18157-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <53D7FCD9.1010209@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <53D7FCD9.1010209@gmail.com>
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
Subject: Re: [PATCH v2 0/5] Marvell EBU PCIe driver
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

On Tue, Jul 29, 2014 at 09:58:17PM +0200, Sebastian Hesselbarth wrote:
> On 07/28/2014 03:26 PM, Sebastian Hesselbarth wrote:
> > Second round of the Marvell EBU PCIe driver patch set. Compared
> > to v1, I reworked pci_scan_bus to properly set IORESOURCE flags
> > for all resources, and added auto-incrementing pci bus numbering.
> > 
> > Patch 1 is unchanged and still fixes resource computation of mbus
> > driver. Patch 2 now properly sets IORESOURCE flags for I/O, 32b
> > MEM, and 64b MEM resources.
> > 
> > Patch 3 is a squashed and reworked patch dealing with pci host
> > controller registration: bus number is now assigned from an auto-
> > incremented bus_index and already provided pci_controller's
> > set_busno is called right before pci_scan_bus to allow the
> > controller to update internal registers related with bus number.
> > This patch also sets a back-reference to the pci_controller of
> > a pci_bus and cleans up some unused left-overs from Linux import.
> > 
> > Patch 4 is unchanged import of of_pci_get_devfn() and Patch 5
> > finally adds the PCIe controller driver for Marvell MVEBU SoCs.
> > Individual changelogs are also at the corresponding patch mails.
> > 
> > Again, this has been tested on Armada 370 Mirabox.
> 
> Sascha,
> 
> before you consider applying this, I had the chance to test it
> on Armada XP, too. Both the driver and pci core need some more
> fixes, so please wait for v3.

Ok, I removed all patches from -next. I'll wait for the next round of
patches.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
