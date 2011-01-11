Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PccSv-0001o4-S9
	for barebox@lists.infradead.org; Tue, 11 Jan 2011 11:32:46 +0000
Date: Tue, 11 Jan 2011 12:32:39 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110111113238.GR12078@pengutronix.de>
References: <1294702816-21612-1-git-send-email-marc@cpdesign.com.au>
	<1294702816-21612-4-git-send-email-marc@cpdesign.com.au>
	<20110111094151.GO12078@pengutronix.de>
	<201101112134.35813.marc@cpdesign.com.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201101112134.35813.marc@cpdesign.com.au>
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
Subject: Re: [PATCH v2 3/3] imx(25,35): save boot location into $boot_loc env.
To: Marc Reilly <marc@cpdesign.com.au>
Cc: barebox@lists.infradead.org

On Tue, Jan 11, 2011 at 09:34:35PM +1100, Marc Reilly wrote:
> Hi Sascha,
> 
> 
> > > +
> > > +#if defined(CONFIG_ARCH_IMX25) || defined(CONFIG_ARCH_IMX35)
> > > +static int imx_boot_save_loc(void)
> > > +{
> > > +	const char *bootloc = NULL;
> > > +	uint32_t reg;
> > > +
> > > +	reg = readl(IMX_CCM_BASE + CCM_RCSR);
> > > +
> > > +	switch ((reg >> CCM_RCSR_MEM_CTRL_SHIFT) & 0x3) {
> > > +	case 0x03:		/* SD/MMC, I2C, SPI is the source */
> > > +		bootloc = "expansion";
> > > +		break;
> > > +	case 0x01:		/* NAND is the source */
> > > +		bootloc = "nand";
> > > +		break;
> > > +	case 0x00:		/* NOR, OneNand is the source */
> > > +		bootloc = "weim";
> > > +		break;
> > > +	default:
> > > +		break;
> > > +	}
> > 
> > This is not exactly what I meant. Your original "nor" and "mmc" strings
> > were ok. The boards in the tree do not support booting from eeproms (am
> > I wrong?), 
> 
> I don't think any existing boards have the hardware, although I think barebox 
> could handle it from a SW point of view. From memory the only source not 
> copied by out the boot rom is NOR.
> 
> > so bootloc has the correct value for the boards in the tree.
> > Now with this patch we have a situation that when somebody adds a board
> > which can boot from eeprom, he will update this function and "expansion"
> > will become "mmc" or "eeprom" breaking your environment scripts.
> 
> I'll do another round where I handle all of them.. (like I should have done 
> before :)

Great. That's a good way to end this discussion with everyone being
satisfied ;)

> 
> nor onenand nand mmc prom_i2c prom_spi -- do these names sound ok for 
> everyone?

I agree with Eric about the prefixes.

> 
> > 
> > > +
> > > +	if (bootloc) {
> > > +		setenv("boot_loc", bootloc);
> > > +		export("boot_loc");
> > > +	}
> > 
> > I just asked two collegues about the meaning of a boot_location variable
> > and they both said this would be the variable where Linux should be
> > booted from. 
> 
> Isn't that already kernel_loc?
> 
> > Maybe barebox_location is a better name?
> 
> Then how about boot_source? (or boot_src). Or boot_media? These seem to me to 
> be a better fit, but I don't have any colleagues to bounce them off :)

boot_source was my first idea aswell and I already asked my collegues
about it. For them boot_source and boot_location have the same meaning.

> I'm also happy with barebox_loc, so no dramas.

ok, then lets go for it.

> 
> > 
> > I already took the first two patches, so you don't have to resend them.
> 
> Just to check - did you take from v1 or v2? in v2 For the second patch in V2 I 
> also added the MEM_TYPE_SHIFT defines..

Oh, I took v1 I guess. I didn't realize they differ.

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
