Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Slbuo-0002vY-EQ
 for barebox@lists.infradead.org; Mon, 02 Jul 2012 08:23:30 +0000
Date: Mon, 2 Jul 2012 10:23:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120702082323.GH2698@pengutronix.de>
References: <CAAfyv37Xm7MAuTToGeDr56gTYBVy6ZJTnXf=vcX3HmZfCoNkZw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAfyv37Xm7MAuTToGeDr56gTYBVy6ZJTnXf=vcX3HmZfCoNkZw@mail.gmail.com>
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
Subject: Re: panda board crash when detecting usb devices
To: Belisko Marek <marek.belisko@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Jul 02, 2012 at 12:53:06AM +0200, Belisko Marek wrote:
> In current next there is issue with usb command on panda board:
> 
> barebox@Texas Instrument's Panda:/ usb
> USB: scanning bus for devices...
> unable to handle NULL pointer dereference at address 0x00000004
> pc : [<8f00ac10>]    lr : [<8f00a41c>]
> sp : 8cfffde0  ip : 8d001ce8  fp : 00000000
> r10: 00000000  r9 : 8cffff44  r8 : 8f033a34
> r7 : 00100100  r6 : 00200200  r5 : 8d014160  r4 : 8d01416c
> r3 : 00000000  r2 : 00000000  r1 : 00000000  r0 : 8d01416c
> Flags: nzCv  IRQs off  FIQs off  Mode SVC_32
> [<8f00ac10>] (ehci_init+0x1c/0x128) from [<8f00a41c>] (usb_rescan+0xa4/0xfc)
> [<8f00a41c>] (usb_rescan+0xa4/0xfc) from [<8f01332c>] (do_usb+0x4c/0x64)
> [<8f01332c>] (do_usb+0x4c/0x64) from [<8f0053e0>] (execute_command+0x38/0x7c)
> [<8f0053e0>] (execute_command+0x38/0x7c) from [<8f001aac>]
> (run_list_real+0x8b8/0x9b0)
> [<8f001aac>] (run_list_real+0x8b8/0x9b0) from [<8f001cec>]
> (parse_stream_outer+0x148/0x238)
> [<8f001cec>] (parse_stream_outer+0x148/0x238) from [<8f002074>]
> (run_shell+0x3c/0x7c)
> [<8f002074>] (run_shell+0x3c/0x7c) from [<8f006a1c>] (start_barebox+0xd4/0x10c)
> [<8f006a1c>] (start_barebox+0xd4/0x10c) from [<84081164>] (0x84081164)
> 
> [<8f023898>] (unwind_backtrace+0x0/0xa8) from [<8f0144bc>] (panic+0x28/0x48)
> [<8f0144bc>] (panic+0x28/0x48) from [<8f023e38>] (do_exception+0x10/0x14)
> [<8f023e38>] (do_exception+0x10/0x14) from [<8f023ec4>]
> (do_data_abort+0x2c/0x38)
> [<8f023ec4>] (do_data_abort+0x2c/0x38) from [<8f023ad0>] (data_abort+0x50/0x60)
> 
> 
> It is crashing in ehci_halt() in first ehci_read call. IMO ehci_read
> access wrong memory (that is reason do data_abort?)
> I have rev. A2. Any ideas?

My bad, sorry. Try the following patch.

Sascha

8<---------------------------------------------------------

ehci: Fix resource size

We now have a resource size for the ehci hccr register space. This
was assumed to be 0x40 in size. On OMAP though it is only 0x10 and
then the hccr resource conflicts with the hcor resource which results
in a non working ehci port on beagle and panda boards. This patch
adds a nonintrusive workaround, it limits the hccr resource to 0x10,
which then also works on OMAP.

Later we should drop the multiple resources for the ehci port and
make the resource as specified in the datasheets.

This is broken since:

commit 08845e41fba2b16dd3050b6b910c615e1bb8e57c
Author: Sascha Hauer <s.hauer@pengutronix.de>
Date:   Wed May 23 12:54:24 2012 +0200

    usb ehci: Add resource sizes

    add_usb_ehci_device registers resources with size 0. Fix this.

    Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/base/resource.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/base/resource.c b/drivers/base/resource.c
index 347b2f0..9844d1a 100644
--- a/drivers/base/resource.c
+++ b/drivers/base/resource.c
@@ -113,7 +113,7 @@ struct device_d *add_usb_ehci_device(int id, resource_size_t hccr,
 
 	res = xzalloc(sizeof(struct resource) * 2);
 	res[0].start = hccr;
-	res[0].size = 0x40;
+	res[0].size = 0x10;
 	res[0].flags = IORESOURCE_MEM;
 	res[1].start = hcor;
 	res[1].size = 0xc0;
-- 
1.7.10

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
