Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zr5Vd-0008RX-Dd
 for barebox@lists.infradead.org; Tue, 27 Oct 2015 14:45:58 +0000
Message-ID: <1445957134.3793.1.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 27 Oct 2015 15:45:34 +0100
In-Reply-To: <20151027144335.GL25308@pengutronix.de>
References: <1445877229-14319-1-git-send-email-l.stach@pengutronix.de>
 <20151027144335.GL25308@pengutronix.de>
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
Subject: Re: [PATCH] ARM: imx6: add OF fixup to delete nonexistent CPU cores
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Am Dienstag, den 27.10.2015, 15:43 +0100 schrieb Sascha Hauer:
> On Mon, Oct 26, 2015 at 05:33:49PM +0100, Lucas Stach wrote:
> > Make sure that the DT passed to Linux reflects the actual number of CPU
> > cores present in the system by reading the SCU configuration. As both
> > the Q and DL variants of the MX6 have versions with cores fused away,
> > but the DTs have the maximum number of cores specified, this just deletes
> > any nonexistent CPU core nodes.
> > 
> > Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> > ---
> >  arch/arm/mach-imx/imx6.c | 34 ++++++++++++++++++++++++++++++++++
> >  1 file changed, 34 insertions(+)
> > 
> > diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
> > index c49de49209f3..c2a4d62c51da 100644
> > --- a/arch/arm/mach-imx/imx6.c
> > +++ b/arch/arm/mach-imx/imx6.c
> > @@ -238,3 +238,37 @@ static int imx6_mmu_init(void)
> >  	return 0;
> >  }
> >  postmmu_initcall(imx6_mmu_init);
> > +
> > +#define SCU_CONFIG	0x04
> > +
> > +static int imx6_fixup_cpus(struct device_node *root, void *context)
> > +{
> > +	struct device_node *cpus_node, *np, *tmp;
> > +	unsigned long scu_phys_base;
> > +	unsigned int max_core_index;
> > +
> > +	cpus_node = of_find_node_by_name(root, "cpus");
> > +	if (!cpus_node)
> > +		return 0;
> > +
> > +	/* get actual number of available CPU cores from SCU */
> > +	asm("mrc p15, 4, %0, c15, c0, 0" : "=r" (scu_phys_base));
> > +	max_core_index = (readl(IOMEM(scu_phys_base) + SCU_CONFIG) & 0x03);
> > +
> > +	for_each_child_of_node_safe(cpus_node, tmp, np) {
> > +		u32 cpu_index;
> > +
> > +		if (of_property_read_u32(np, "reg", &cpu_index))
> > +			continue;
> > +
> > +		if (cpu_index > max_core_index)
> > +			of_delete_node(np);
> > +	}
> > +
> > +	return 0;
> > +}
> > +
> > +static int imx6_fixup_cpus_register(void) {
> > +	return of_register_fixup(imx6_fixup_cpus, NULL);
> > +}
> > +device_initcall(imx6_fixup_cpus_register);
> 
> Please make sure we do this on i.MX6 only.
> 
Argh, right. It's so easy to forget about that...

-- 
Pengutronix e.K.             | Lucas Stach                 |
Industrial Linux Solutions   | http://www.pengutronix.de/  |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
