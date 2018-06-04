Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fPklw-0005N6-57
 for barebox@lists.infradead.org; Mon, 04 Jun 2018 08:23:25 +0000
Date: Mon, 4 Jun 2018 10:23:07 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20180604082307.GA32467@ravnborg.org>
References: <20180603211416.GA25216@ravnborg.org>
 <20180604075821.pu4tuecex74pcwmk@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180604075821.pu4tuecex74pcwmk@pengutronix.de>
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
Subject: Re: Kernel fails to start on at91sam9263 target
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Sascha.

On Mon, Jun 04, 2018 at 09:58:21AM +0200, Sascha Hauer wrote:
> On Sun, Jun 03, 2018 at 11:14:16PM +0200, Sam Ravnborg wrote:
> > Hi all.
> > 
> > I have a proprietary target with an AT91SAM9263 CPU.
> > I have at91bootstrap running and barebox load fine.
> > 
> > When I try to boot the kernel it stop after Uncompressing...
> > 
> > Log snip:
> > 
> > chunk_get_cached: found 7287 in 7
> > fat_read: 0 3421056 3421056 23bab76c
> > OF: ** translation for device /ahb/nor_flash@10000000 **
> > OF: bus is default (na=1, ns=1) on /ahb
> > OF: parent bus is default (na=1, ns=1) on
> > OF: empty ranges; 1:1 translation
> > OF: with offset: 10000000
> > OF: reached root node
> > OF: ** translation for device /ahb/nor_flash@10000000 **
> > OF: bus is default (na=1, ns=1) on /ahb
> > OF: parent bus is default (na=1, ns=1) on
> > OF: empty ranges; 1:1 translation
> > OF: with offset: 10000000
> > OF: reached root node
> > eth_of_fixup_node: no valid mac address, cannot fixup
> > __request_region ok: 0x21495000:0x2149c300
> > commandline: root=/dev/disk0.1 rootfstype=ext4 rw rootwait console=ttyS0,115200
> > booting kernel with devicetree
> > exitcall-> 0x23e073c0
> > exitcall-> 0x23e0c004
> > exitcall-> 0x23e415c8
> > Uncompressing Linux... done, booting the kernel.
> > 
> > 
> > The barebox commands to boot the kernel was:
> > $ mount -a
> > $ bootm /mnt/disk0.0/zImage
> 
> The output of bootm -v might be useful. Have you tried earlyprintk or
> earlyconsole?
Nope, I will try this. Thanks for the hints.
I somehow missed the -v option to bootm yesterday but
increased the loglevel as can be seen above.


> You have specified the memory in the devicetree. This should not
> disturb, but looks unnecessary.
The intent is to make the DT as complete as possible, for
use by both barebox and the kernel. So in the end I have
only one DT, which is passed from barebox to the kernel.
I plan to use fixup's to select the correct display.

The timing needs to be included in panel-simple, but
using fixups allows the logic to be part of the
barebox board specific parts and not a hack in the kernel.
But let me get the kernel started first...

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
