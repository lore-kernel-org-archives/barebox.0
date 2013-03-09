Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UEP3m-0007Q8-FL
 for barebox@lists.infradead.org; Sat, 09 Mar 2013 19:03:59 +0000
Date: Sat, 9 Mar 2013 20:03:55 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130309190355.GA19970@pengutronix.de>
References: <1362744484-17844-1-git-send-email-s.hauer@pengutronix.de>
 <1362744484-17844-3-git-send-email-s.hauer@pengutronix.de>
 <20130308125138.GE32347@game.jcrosoft.org>
 <20130308130727.GD1906@pengutronix.de>
 <20130308144843.GF32347@game.jcrosoft.org>
 <20130308150609.GG1906@pengutronix.de>
 <20130308154611.GG32347@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130308154611.GG32347@game.jcrosoft.org>
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
Subject: Re: [PATCH 2/3] Add DMO RealQ7 board support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Mar 08, 2013 at 04:46:11PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 16:06 Fri 08 Mar     , Sascha Hauer wrote:
> > On Fri, Mar 08, 2013 at 03:48:43PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > > > > +	.boot_data.size		= 192 * 1024,
> > > > > barebox_image_size
> > > > 
> > > > ok. This btw will not work with CONFIG_RELOCATABLE as is since the
> > > > linker cannot generate this value then.
> > > why?
> > 
> > Absolute values will be zero when you link with -pie. They get fixed
> > during relocation.
> > 
> > The image size is a relative value, when doing a
> > 
> > 	.word __barebox_image_end - start
> > 
> > in assembly it works correctly, but doing the same in C does not work.
> > 
> > > 
> > > otherwise we need to update it via ld as done in the kernel as example
> > 
> > Can you give me a pointer what the kernel does?
> 
> we create the symbol at compilation
> via --defsym

It just turned out --defsym also does not work together with -pie. The
value in the image is still 0x0.

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
