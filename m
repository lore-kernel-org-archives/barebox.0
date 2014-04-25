Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Wdg14-0003xS-Dz
 for barebox@lists.infradead.org; Fri, 25 Apr 2014 13:18:11 +0000
Message-ID: <1398431808.4657.35.camel@weser.hi.pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 25 Apr 2014 15:16:48 +0200
In-Reply-To: <20140425130834.GA29115@omega>
References: <1398426868-30285-1-git-send-email-c.hemp@phytec.de>
 <1398426868-30285-4-git-send-email-c.hemp@phytec.de>
 <20140425130834.GA29115@omega>
Mime-Version: 1.0
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
Subject: Re: [PATCH 4/4] imx6: Add support for phyCARD-i.MX6
To: Alexander Aring <alex.aring@gmail.com>
Cc: barebox@lists.infradead.org

Am Freitag, den 25.04.2014, 15:10 +0200 schrieb Alexander Aring:
> Hi,
> 
> On Fri, Apr 25, 2014 at 01:54:28PM +0200, Christian Hemp wrote:
> > Add support for Phytec phyCARD-i.MX6.
> > 	- 1GB RAM on two banks
> > 	- 1GB RAM on one bank
> > 	- 2GB RAM on two banks
> ...
> > +
> > +extern char __dtb_imx6q_phytec_pbaa03_start[];
> > +
> > +ENTRY_FUNCTION(start_phytec_pbaa03_1gib, r0, r1, r2)
> > +{
> > +	uint32_t fdt;
> > +
> > +	arm_cpu_lowlevel_init();
> > +
> > +	arm_setup_stack(0x00920000 - 8);
> > +
> > +	if (IS_ENABLED(CONFIG_DEBUG_LL))
> > +		setup_uart();
> > +
> > +	fdt = (uint32_t)__dtb_imx6q_phytec_pbaa03_start - get_runtime_offset();
> > +
> > +	barebox_arm_entry(0x10000000, SZ_1G, fdt);
> > +}
> > +
> > +ENTRY_FUNCTION(start_phytec_pbaa03_1gib_1bank, r0, r1, r2)
> > +{
> > +	uint32_t fdt;
> > +
> > +	arm_cpu_lowlevel_init();
> > +
> > +	arm_setup_stack(0x00920000 - 8);
> > +
> > +	if (IS_ENABLED(CONFIG_DEBUG_LL))
> > +		setup_uart();
> > +
> > +	fdt = (uint32_t)__dtb_imx6q_phytec_pbaa03_start - get_runtime_offset();
> > +
> > +	barebox_arm_entry(0x10000000, SZ_1G, fdt);
> > +}
> > +
> 
> Don't see a difference between start_phytec_pbaa03_1gib_1bank and
> start_phytec_pbaa03_1gib. Maybe you can write a new function and these
> two functions can call this function...
> 
> It's a design question...
> 
If those two are really meant to be the same, you don't even need two
entry functions. Just build a single PBL and add different DCDs through
the image mechanism.

Regards,
Lucas
-- 
Pengutronix e.K.             | Lucas Stach                 |
Industrial Linux Solutions   | http://www.pengutronix.de/  |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
