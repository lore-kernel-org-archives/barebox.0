Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SWtqC-0008OD-8r
 for barebox@lists.infradead.org; Tue, 22 May 2012 18:29:54 +0000
Date: Tue, 22 May 2012 20:29:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120522182946.GL30400@pengutronix.de>
References: <20120517175244.GH30400@pengutronix.de>
 <1337334211-12576-1-git-send-email-agalakhov@gmail.com>
 <1337334211-12576-7-git-send-email-agalakhov@gmail.com>
 <20120521200249.GF30400@pengutronix.de>
 <4FBB59AC.6050202@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4FBB59AC.6050202@gmail.com>
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
Subject: Re: [PATCHv4 6/7] S5P DRAM support
To: Alexey Galakhov <agalakhov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, May 22, 2012 at 03:17:32PM +0600, Alexey Galakhov wrote:
> On 22.05.2012 02:02, Sascha Hauer wrote:
> > On Fri, May 18, 2012 at 03:43:30PM +0600, Alexey Galakhov wrote:
> >> +void __bare_init s5p_init_dram_bank(uint32_t base, uint32_t mc0, uint32_t mc1)
> >> +{
> >> +#ifdef S5P_DRAM_LPDDR
> >> +	uint32_t reg = 0x100;
> >> +#endif
> >> +#ifdef S5P_DRAM_LPDDR2
> >> +	uint32_t reg = 0x200;
> >> +#endif
> >> +#ifdef S5P_DRAM_DDR2
> >> +	uint32_t reg = 0x400;
> >> +#endif
> >> +	reg |= (S5P_DRAM_BURST) << 20;
> >> +#ifdef S5P_DRAM_16BIT
> >> +	reg |= 0x1000;
> >> +#else /* 32-bit */
> >> +	reg |= 0x2000;
> >> +#endif
> > 
> > Since this function is called from board specific code, can we pass in
> > the DDR/DDR2 16BIT/32BIT settings as arguments to this function and
> > get rid of these ifdefs?
> > 
> > Sascha
> 
> Thank you for the question. Most likely not.
> 
> According to the datasheet, LPDDR/LPDDR2/DDR2 initialization sequence is
> completely different. It is in init_seq() function. Since I have no
> LPDDR(2) hardware to test, I coded the DDR2 version only. A runtime
> switch like that:
> 
> switch(mode) {
> case LPDDR:
> 	lpddr_init_seq();
> 	break;
> case LPDDR2:
> 	lpddr2_init_seq();
> 	break;
> case DDR2:
> 	ddr2_init_seq();
> 	break;
> }
> 
> is too expensive for S5PV210's __bare_init which is very limited in
> space. Thus it is better to have only one function compiled in.

I see. In this case you could provide a s5p_init_dram_bank_ddr2 which
does the setup for ddr2 ram. The linker will then throw away any other
eventually compiled in s5p_init_dram_bank_* function. Code common to
all sdram setup functions could still be shared without overhead.

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
