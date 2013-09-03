Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo1.mail-out.ovh.net ([178.32.127.22]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VGopb-0004ZK-3u
 for barebox@lists.infradead.org; Tue, 03 Sep 2013 11:31:36 +0000
Received: from mail605.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id A5EFCFFAADE
 for <barebox@lists.infradead.org>; Tue,  3 Sep 2013 13:21:00 +0200 (CEST)
Date: Tue, 3 Sep 2013 13:21:56 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130903112156.GL19197@ns203013.ovh.net>
References: <1378182813-30776-1-git-send-email-antonynpavlov@gmail.com>
 <20130903084123.60bf8561ef15b863013431e7@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130903084123.60bf8561ef15b863013431e7@gmail.com>
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
Subject: Re: [PATCH] MIPS: qemu-malta: switch to devicetree
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On 08:41 Tue 03 Sep     , Antony Pavlov wrote:
> On Tue,  3 Sep 2013 08:33:33 +0400
> Antony Pavlov <antonynpavlov@gmail.com> wrote:
> 
> > Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> > ---
> >  arch/mips/boards/qemu-malta/init.c     | 31 ++-----------------------------
> >  arch/mips/configs/qemu-malta_defconfig |  1 +
> >  arch/mips/dts/qemu-malta.dts           | 33 +++++++++++++++++++++++++++++++++
> >  3 files changed, 36 insertions(+), 29 deletions(-)
> > 
> > diff --git a/arch/mips/boards/qemu-malta/init.c b/arch/mips/boards/qemu-malta/init.c
> > index ddc90dc..4d12495 100644
> > --- a/arch/mips/boards/qemu-malta/init.c
> > +++ b/arch/mips/boards/qemu-malta/init.c
> > @@ -17,39 +17,12 @@
> >   */
> >  
> >  #include <common.h>
> > -#include <types.h>
> > -#include <driver.h>
> >  #include <init.h>
> > -#include <ns16550.h>
> > -#include <mach/hardware.h>
> > -#include <partition.h>
> > -#include <sizes.h>
> >  
> > -static int malta_devices_init(void)
> > +static int malta_core_init(void)
> >  {
> > -	add_cfi_flash_device(0, 0x1e000000, SZ_4M, 0);
> > -
> > -	devfs_add_partition("nor0", 0x0, SZ_512K, DEVFS_PARTITION_FIXED, "self");
> > -	devfs_add_partition("nor0", SZ_512K, SZ_64K, DEVFS_PARTITION_FIXED, "env0");
> > -
> > -	return 0;
> > -}
> > -device_initcall(malta_devices_init);
> > -
> > -static struct NS16550_plat serial_plat = {
> > -	.clock = 1843200, /* no matter for emulated port */
> > -	.shift = 0,
> > -};
> > -
> > -static int malta_console_init(void)
> > -{
> > -	barebox_set_model("qemu malta");
> >  	barebox_set_hostname("malta");
> >
> 
> May be it is reasonable to add hostname support to dts?
> 
> The lonely barebox_set_hostname() in the malta board code looks very pathetically :)

we could use the model propertie for this

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
