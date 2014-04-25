Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x232.google.com ([2a00:1450:4013:c00::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wdg5F-0006rS-AP
 for barebox@lists.infradead.org; Fri, 25 Apr 2014 13:22:29 +0000
Received: by mail-ee0-f50.google.com with SMTP id c13so2851051eek.9
 for <barebox@lists.infradead.org>; Fri, 25 Apr 2014 06:22:06 -0700 (PDT)
Date: Fri, 25 Apr 2014 15:22:00 +0200
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20140425132158.GA29357@omega>
References: <1398426868-30285-1-git-send-email-c.hemp@phytec.de>
 <1398426868-30285-4-git-send-email-c.hemp@phytec.de>
 <20140425130834.GA29115@omega>
 <1398431808.4657.35.camel@weser.hi.pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1398431808.4657.35.camel@weser.hi.pengutronix.de>
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
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Apr 25, 2014 at 03:16:48PM +0200, Lucas Stach wrote:
> Am Freitag, den 25.04.2014, 15:10 +0200 schrieb Alexander Aring:
> > Hi,
> > 
> > On Fri, Apr 25, 2014 at 01:54:28PM +0200, Christian Hemp wrote:
> > > Add support for Phytec phyCARD-i.MX6.
> > > 	- 1GB RAM on two banks
> > > 	- 1GB RAM on one bank
> > > 	- 2GB RAM on two banks
> > ...
> > > +
> > > +extern char __dtb_imx6q_phytec_pbaa03_start[];
> > > +
> > > +ENTRY_FUNCTION(start_phytec_pbaa03_1gib, r0, r1, r2)
> > > +{
> > > +	uint32_t fdt;
> > > +
> > > +	arm_cpu_lowlevel_init();
> > > +
> > > +	arm_setup_stack(0x00920000 - 8);
> > > +
> > > +	if (IS_ENABLED(CONFIG_DEBUG_LL))
> > > +		setup_uart();
> > > +
> > > +	fdt = (uint32_t)__dtb_imx6q_phytec_pbaa03_start - get_runtime_offset();
> > > +
> > > +	barebox_arm_entry(0x10000000, SZ_1G, fdt);
> > > +}
> > > +
> > > +ENTRY_FUNCTION(start_phytec_pbaa03_1gib_1bank, r0, r1, r2)
> > > +{
> > > +	uint32_t fdt;
> > > +
> > > +	arm_cpu_lowlevel_init();
> > > +
> > > +	arm_setup_stack(0x00920000 - 8);
> > > +
> > > +	if (IS_ENABLED(CONFIG_DEBUG_LL))
> > > +		setup_uart();
> > > +
> > > +	fdt = (uint32_t)__dtb_imx6q_phytec_pbaa03_start - get_runtime_offset();
> > > +
> > > +	barebox_arm_entry(0x10000000, SZ_1G, fdt);
> > > +}
> > > +
> > 
> > Don't see a difference between start_phytec_pbaa03_1gib_1bank and
> > start_phytec_pbaa03_1gib. Maybe you can write a new function and these
> > two functions can call this function...
> > 
> > It's a design question...
> > 
> If those two are really meant to be the same, you don't even need two
> entry functions. Just build a single PBL and add different DCDs through
> the image mechanism.
> 

ah, nice to known. Thanks Lucas!

Indeed, this would be a better solution.

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
