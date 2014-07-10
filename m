Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X5Ltm-0008Hr-Kz
 for barebox@lists.infradead.org; Thu, 10 Jul 2014 21:29:03 +0000
Date: Thu, 10 Jul 2014 23:28:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140710212836.GF23235@pengutronix.de>
References: <alpine.DEB.2.10.1407100925060.3269@9VTHT2J-D520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1407100925060.3269@9VTHT2J-D520>
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
Subject: Re: AM335x MLO images broken
To: Rolf Evers-Fischer <embedded24@evers-fischer.de>
Cc: barebox@lists.infradead.org

On Thu, Jul 10, 2014 at 09:37:37AM +0200, Rolf Evers-Fischer wrote:
> Hello Sascha,
> 
> Sascha Hauer <s.hauer@...> writes:
> 
> > Looks like a side effect of:
> > 
> > | commit d1ec6fb0c9bb66939e85964c2f5214b117c78ecf
> > | Author: Sascha Hauer <s.hauer@...>
> > | Date:   Mon Jul 7 14:13:14 2014 +0200
> > | 
> > |     ARM: OMAP: Do not show MLO/SPI image options with OMAP_MULTI_BOARDS
> > |     
> > |     The MLO/SPI image options have no effect with OMAP_MULTI_BOARDS
> > |     enabled, so do not show them.
> > |     
> > |     Signed-off-by: Sascha Hauer <s.hauer@...>
> > 
> > I haven't looked whether there's a better solution than reverting the
> > commit.
> > 
> 
> your patch disables generation of MLO/SPI image, if OMAP_MULTI_BOARDS is 
> enabled. But shouldn't it be vice versa? I mean, both boards 
> (MACH_BEAGLEBONE and MACH_PCM051), which are dependend on 
> OMAP_MULTI_BOARDS, need a working MLO image. From my point of view it 
> makes sense to ENable the OMAP_BUILD_IFT along with OMAP_MULTI_BOARDS.

Indeed. I'll just revert the patch.

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
