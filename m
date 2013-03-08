Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo5.mail-out.ovh.net ([178.33.45.10]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UDzZG-0004rn-8F
 for barebox@lists.infradead.org; Fri, 08 Mar 2013 15:50:47 +0000
Received: from mail639.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 89672FFA752
 for <barebox@lists.infradead.org>; Fri,  8 Mar 2013 17:01:47 +0100 (CET)
Date: Fri, 8 Mar 2013 16:46:11 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130308154611.GG32347@game.jcrosoft.org>
References: <1362744484-17844-1-git-send-email-s.hauer@pengutronix.de>
 <1362744484-17844-3-git-send-email-s.hauer@pengutronix.de>
 <20130308125138.GE32347@game.jcrosoft.org>
 <20130308130727.GD1906@pengutronix.de>
 <20130308144843.GF32347@game.jcrosoft.org>
 <20130308150609.GG1906@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130308150609.GG1906@pengutronix.de>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 16:06 Fri 08 Mar     , Sascha Hauer wrote:
> On Fri, Mar 08, 2013 at 03:48:43PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > > > +	.boot_data.size		= 192 * 1024,
> > > > barebox_image_size
> > > 
> > > ok. This btw will not work with CONFIG_RELOCATABLE as is since the
> > > linker cannot generate this value then.
> > why?
> 
> Absolute values will be zero when you link with -pie. They get fixed
> during relocation.
> 
> The image size is a relative value, when doing a
> 
> 	.word __barebox_image_end - start
> 
> in assembly it works correctly, but doing the same in C does not work.
> 
> > 
> > otherwise we need to update it via ld as done in the kernel as example
> 
> Can you give me a pointer what the kernel does?

we create the symbol at compilation
via --defsym

arch/arm/boot/compressed/Makefile

Best Regards,
J.
> 
> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
