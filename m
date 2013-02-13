Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo1.mail-out.ovh.net ([178.32.119.250]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U5YQh-00055u-EP
 for barebox@lists.infradead.org; Wed, 13 Feb 2013 09:15:05 +0000
Received: from mail239.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id E142EFF9EB2
 for <barebox@lists.infradead.org>; Wed, 13 Feb 2013 10:30:20 +0100 (CET)
Date: Wed, 13 Feb 2013 10:13:51 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130213091351.GH19322@game.jcrosoft.org>
References: <1360703460-20379-1-git-send-email-plagnioj@jcrosoft.com>
 <511B057A.2090607@calxeda.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <511B057A.2090607@calxeda.com>
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
Subject: Re: [PATCH 1/1] highbank: use the provided dtb by the firmware to
 probe barebox device and mem size
To: Rob Herring <rob.herring@calxeda.com>
Cc: barebox@lists.infradead.org

On 21:16 Tue 12 Feb     , Rob Herring wrote:
> On 02/12/2013 03:11 PM, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > the dtb is at 0x1000
> > 
> > if no dtb present use C code device
> > 
> > kepp in C the timer/gpio/uart
> > 
> > Cc: Rob Herring <rob.herring@calxeda.com>
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  arch/arm/boards/highbank/env/bin/init_board |    7 +++++
> >  arch/arm/boards/highbank/init.c             |   44 ++++++++++++++++++++++++---
> >  2 files changed, 47 insertions(+), 4 deletions(-)
> >  create mode 100644 arch/arm/boards/highbank/env/bin/init_board
> > 
> > diff --git a/arch/arm/boards/highbank/env/bin/init_board b/arch/arm/boards/highbank/env/bin/init_board
> > new file mode 100644
> > index 0000000..610db15
> > --- /dev/null
> > +++ b/arch/arm/boards/highbank/env/bin/init_board
> > @@ -0,0 +1,7 @@
> > +#!/bin/sh
> > +
> > +if [ -e /dev/dtb ]
> > +then
> > +	oftree -l /dev/dtb
> > +	oftree -p
> > +fi
> > diff --git a/arch/arm/boards/highbank/init.c b/arch/arm/boards/highbank/init.c
> > index 9fb7986..a01db5b 100644
> > --- a/arch/arm/boards/highbank/init.c
> > +++ b/arch/arm/boards/highbank/init.c
> > @@ -15,20 +15,56 @@
> >  #include <sizes.h>
> >  #include <io.h>
> >  
> > +struct fdt_header *fdt = NULL;
> > +
> >  static int highbank_mem_init(void)
> >  {
> > +	struct device_node *np;
> > +	u32 reg[2];
> > +	int ret;
> > +
> > +	/* load by the firmware at 0x1000 */
> > +	fdt = IOMEM(0x1000);
> > +
> > +	ret = of_unflatten_dtb(fdt);
> 
> full blown DT seems a bit much. Can't you do what's needed with libfdt?
> I guess if you've already pulled it all in, it doesn't matter.
yes
> 
> > +	if (ret) {
> > +		pr_warn("no dtb found at 0x1000 use default configuration\n");
> > +		fdt = NULL;
> > +		goto not_found;
> > +	}
> > +
> > +	np = of_find_node_by_path("/memory");
> > +	if (!np) {
> > +		pr_warn("no memory node use default configuration\n");
> > +		goto not_found;
> > +	}
> > +
> > +	ret = of_property_read_u32_array(np, "reg", reg, 2); 
> 
> You assume the memory address and sizes are 1 word which soon will not
> be true. See ecx-2000.dts. Note that I'm planning to merge the 2 memory
> nodes to 1 node with 2 addresses and sizes in reg property.
I'll check
> 
> > +	if (ret) {
> > +		pr_warn("memory node: no reg property use default configuration\n");
> > +		goto not_found;
> > +	}
> > +
> > +	pr_info("highbank: dtb probed mem_size = 0x%x\n", reg[1]);
> > +
> > +	highbank_add_ddram(reg[1]);
> > +
> > +not_found:
> >  	//highbank_add_ddram(4089 << 20);
> >  	highbank_add_ddram(SZ_1G);
> > -
> >  	return 0;
> >  }
> >  mem_initcall(highbank_mem_init);
> >  
> >  static int highbank_devices_init(void)
> >  {
> > -	highbank_register_ahci();
> > -	highbank_register_xgmac(0);
> > -	highbank_register_xgmac(1);
> > +	if (!fdt) {
> > +		highbank_register_ahci();
> > +		highbank_register_xgmac(0);
> > +		highbank_register_xgmac(1);
> > +	} else {
> > +		devfs_add_partition("ram1", 0x1000, SZ_64K, DEVFS_PARTITION_FIXED, "dtb");
> > +	}
> >  
> >  	armlinux_set_bootparams((void *)(0x00000100));
> >  
> > 
> 

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
