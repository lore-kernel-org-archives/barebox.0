Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T0XPd-0002Md-59
 for barebox@lists.infradead.org; Sun, 12 Aug 2012 12:36:58 +0000
Date: Sun, 12 Aug 2012 14:36:55 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120812123655.GJ1451@pengutronix.de>
References: <1344628865-32574-1-git-send-email-s.hauer@pengutronix.de>
 <1344628865-32574-9-git-send-email-s.hauer@pengutronix.de>
 <20120811093931.GE6271@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120811093931.GE6271@game.jcrosoft.org>
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
Subject: Re: [PATCH 8/9] ARM pbl: remove unnecessary FORCE
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sat, Aug 11, 2012 at 11:39:31AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 22:01 Fri 10 Aug     , Sascha Hauer wrote:
> > With this FORCE the compressed image is rebuilt even if it is
> > unchanged, so remove it.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  arch/arm/pbl/Makefile |    2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/arch/arm/pbl/Makefile b/arch/arm/pbl/Makefile
> > index dc6ae7e..b1cdd85 100644
> > --- a/arch/arm/pbl/Makefile
> > +++ b/arch/arm/pbl/Makefile
> > @@ -37,7 +37,7 @@ quiet_cmd_zbarebox__ ?= LD      $@
> >  $(obj)/zbarebox: $(zbarebox-lds) $(zbarebox-common) FORCE
> >  	$(call if_changed,zbarebox__)
> >  
> > -$(obj)/piggy.$(suffix_y): $(obj)/../../../barebox.bin FORCE
> > +$(obj)/piggy.$(suffix_y): $(obj)/../../../barebox.bin
> >  	$(call if_changed,$(suffix_y))
> no sure about this one
> 
> IIRC we need it I saw issue without it

Can you check what issues there are?

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
