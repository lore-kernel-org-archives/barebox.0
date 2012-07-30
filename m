Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Svm9i-00085S-NP
 for barebox@lists.infradead.org; Mon, 30 Jul 2012 09:20:51 +0000
Date: Mon, 30 Jul 2012 11:20:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120730092044.GP30009@pengutronix.de>
References: <20120727183103.GX22657@game.jcrosoft.org>
 <1343413990-31891-1-git-send-email-plagnioj@jcrosoft.com>
 <1343413990-31891-10-git-send-email-plagnioj@jcrosoft.com>
 <20120730080227.GK30009@pengutronix.de>
 <20120730081942.GE26655@game.jcrosoft.org>
 <20120730083048.GM30009@pengutronix.de>
 <20120730084943.GA19759@game.jcrosoft.org>
 <20120730085935.GO30009@pengutronix.de>
 <20120730090443.GB19759@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120730090443.GB19759@game.jcrosoft.org>
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
Subject: Re: [PATCH 10/12] ARM: add early malloc support needed by the
 decompressor
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, Jul 30, 2012 at 11:04:43AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > > > > >  	/* clear bss */
> > > > > > >  	memset(__bss_start, 0, __bss_stop - __bss_start);
> > > > > > >  
> > > > > > > +	/* set 128 KiB before the STACK_BASE - 16 address for early malloc */
> > > > > > > +	free_mem_ptr = STACK_BASE - 0x20000 - 16;
> > > > > > > +	free_mem_end_ptr = STACK_BASE - 16;
> > > > > > > +
> > > > > > 
> > > > > > This assumes that the malloc area is directly before the stack. How
> > > > > > about using __bss_stop or _end instead?
> > > > > 
> > > > > it's just for early alloc and __bss_stop no so maybe we can use the same as
> > > > > Malloc but we already use this for HEAD_TEXT_BASE
> > > > 
> > > > _end is HEAD_TEXT_BASE + the space needed for the compressed
> > > > image, so what's wrong with it?
> > > the pbl image can be stored in a sram and link to fit there so _end could be
> > > at the end of the sram
> > > 
> > > so we can not use it.
> > > 
> > > We need to put the early malloc in the sdram
> > 
> > HEAD_TEXT_BASE is in sdram, because it's the same as MALLOC_BASE, so
> > _end by definition also is in sdram.
> yes but pbl fill the sram fully so in my case I put HEAD_TEXT_BASE is sram not
> sdram so no space for the MALLOC and MALLOC_BASE is in sdram

Ok, then the assumption that HEAD_TEXT_BASE is always in sdram is wrong.
We can live with this until you add your at91 support. Nevertheless
MALLOC_BASE always is in sdram, so I suggest to use the last 128k of the
malloc space for early malloc:

free_mem_ptr = MALLOC_BASE + MALLOC_SIZE - SZ_128K

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
