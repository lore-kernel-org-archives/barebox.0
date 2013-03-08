Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo5.mail-out.ovh.net ([46.105.39.65]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UE09b-0004av-Bh
 for barebox@lists.infradead.org; Fri, 08 Mar 2013 16:28:20 +0000
Received: from mail639.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 1E95EFFA722
 for <barebox@lists.infradead.org>; Fri,  8 Mar 2013 17:39:30 +0100 (CET)
Date: Fri, 8 Mar 2013 17:23:54 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130308162354.GI32347@game.jcrosoft.org>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 16:46 Fri 08 Mar     , Jean-Christophe PLAGNIOL-VILLARD wrote:
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
so put a value in asm and this will be resolve by the linker at compilation
time not runtime

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
