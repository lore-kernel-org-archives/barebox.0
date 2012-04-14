Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SJ2tE-0006LU-G4
 for barebox@lists.infradead.org; Sat, 14 Apr 2012 13:19:47 +0000
Date: Sat, 14 Apr 2012 15:19:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120414131935.GW3852@pengutronix.de>
References: <1334325273-1701-1-git-send-email-s.hauer@pengutronix.de>
 <1334325273-1701-2-git-send-email-s.hauer@pengutronix.de>
 <20120414114127.GF2074@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120414114127.GF2074@game.jcrosoft.org>
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
Subject: Re: [PATCH 1/7] ARM: add initial i.MX6 support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sat, Apr 14, 2012 at 01:41:27PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 15:54 Fri 13 Apr     , Sascha Hauer wrote:
> > +
> > +	/* enable all clocks */
> > +	writel(0xffffffff, 0x020c4068);
> > +	writel(0xffffffff, 0x020c406c);
> > +	writel(0xffffffff, 0x020c4070);
> > +	writel(0xffffffff, 0x020c4074);
> > +	writel(0xffffffff, 0x020c4078);
> > +	writel(0xffffffff, 0x020c407c);
> > +	writel(0xffffffff, 0x020c4080);
> > +}
> for a tablette or a mobile point of view if we be better to enable the needed
> only

These systems usually do not spend much time in the bootloader.

> > +#define MXC_CCM_CCGR7_CG11_OFFSET			22
> > +#define MXC_CCM_CCGR7_CG11_MASK			(0x3 << 22)
> > +#define MXC_CCM_CCGR7_CG10_OFFSET			20
> > +#define MXC_CCM_CCGR7_CG10_MASK			(0x3 << 20)
> > +#define MXC_CCM_CCGR7_CG9_OFFSET			18
> > +#define MXC_CCM_CCGR7_CG9_MASK			(0x3 << 18)
> > +#define MXC_CCM_CCGR7_CG8_OFFSET			16
> > +#define MXC_CCM_CCGR7_CG8_MASK			(0x3 << 16)
> > +#define MXC_CCM_CCGR7_CG7_OFFSET			14
> > +#define MXC_CCM_CCGR7_CG7_MASK			(0x3 << 14)
> > +#define MXC_CCM_CCGR7_CG6_OFFSET			12
> > +#define MXC_CCM_CCGR7_CG6_MASK			(0x3 << 12)
> you can not use the offset for the mask?

I don't need defines for the gate bits anyway, so I'll just remove them.
For the other defines I'm happy that I have one grep less to get from
the place where they are used to the actual bit value.
Once the clock framework is settled in the Kernel I want to have a
stripped down version for barebox anyway, then most of these defines can
go.

> > -#if defined CONFIG_ARCH_IMX25 || defined CONFIG_ARCH_IMX35 || defined CONFIG_ARCH_IMX51 || defined CONFIG_ARCH_IMX53 || defined CONFIG_X86
> > +#if defined CONFIG_ARCH_IMX25 || \
> > +	defined CONFIG_ARCH_IMX35 || \
> > +	defined CONFIG_ARCH_IMX51 || \
> > +	defined CONFIG_ARCH_IMX53 || \
> > +	defined CONFIG_ARCH_IMX6 || \
> > +	defined CONFIG_X86
> can we have a CONFIG_HAVE_MACH something instead

Yes.

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
