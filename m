Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UCpCs-0004wf-NX
 for barebox@lists.infradead.org; Tue, 05 Mar 2013 10:34:52 +0000
Date: Tue, 5 Mar 2013 11:34:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130305103447.GQ1906@pengutronix.de>
References: <1362427389-2144-1-git-send-email-s.hauer@pengutronix.de>
 <1362427389-2144-2-git-send-email-s.hauer@pengutronix.de>
 <20130304204656.GD911@x61s.8.8.8.8>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130304204656.GD911@x61s.8.8.8.8>
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
Subject: Re: [PATCH 1/6] ARM: make cpu architecture detection available as
 static inline function
To: Alexander Aring <alex.aring@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Mar 04, 2013 at 09:46:56PM +0100, Alexander Aring wrote:
> Hi,
> 
> > +/*
> > + * Early version to get the ARM cpu architecture. Only needed during
> > + * early startup when the C environment is not yet fully initialized.
> > + * Normally you should use cpu_architecture() instead.
> > + */
> > +static inline int arm_early_get_cpu_architecture(void)
> > +{
> > +	int cpu_arch;
> > +
> > +	if ((read_cpuid_id() & 0x0008f000) == 0) {
> > +		cpu_arch = CPU_ARCH_UNKNOWN;
> > +	} else if ((read_cpuid_id() & 0x0008f000) == 0x00007000) {
> > +		cpu_arch = (read_cpuid_id() & (1 << 23)) ? CPU_ARCH_ARMv4T : CPU_ARCH_ARMv3;
> > +	} else if ((read_cpuid_id() & 0x00080000) == 0x00000000) {
> > +		cpu_arch = (read_cpuid_id() >> 16) & 7;
> > +		if (cpu_arch)
> > +			cpu_arch += CPU_ARCH_ARMv3;
> 
> I know... it's only a movement, but is cpu += CPU_ARCH_ARMv3 correct
> here? All other has only a assignment.

This particular line is present in the Kernel since the pre-git days, so
I assume it's correct ;)

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
