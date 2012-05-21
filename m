Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SWYoe-00088Y-0P
 for barebox@lists.infradead.org; Mon, 21 May 2012 20:02:52 +0000
Date: Mon, 21 May 2012 22:02:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120521200249.GF30400@pengutronix.de>
References: <20120517175244.GH30400@pengutronix.de>
 <1337334211-12576-1-git-send-email-agalakhov@gmail.com>
 <1337334211-12576-7-git-send-email-agalakhov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1337334211-12576-7-git-send-email-agalakhov@gmail.com>
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

On Fri, May 18, 2012 at 03:43:30PM +0600, Alexey Galakhov wrote:
> +void __bare_init s5p_init_dram_bank(uint32_t base, uint32_t mc0, uint32_t mc1)
> +{
> +#ifdef S5P_DRAM_LPDDR
> +	uint32_t reg = 0x100;
> +#endif
> +#ifdef S5P_DRAM_LPDDR2
> +	uint32_t reg = 0x200;
> +#endif
> +#ifdef S5P_DRAM_DDR2
> +	uint32_t reg = 0x400;
> +#endif
> +	reg |= (S5P_DRAM_BURST) << 20;
> +#ifdef S5P_DRAM_16BIT
> +	reg |= 0x1000;
> +#else /* 32-bit */
> +	reg |= 0x2000;
> +#endif

Since this function is called from board specific code, can we pass in
the DDR/DDR2 16BIT/32BIT settings as arguments to this function and
get rid of these ifdefs?

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
