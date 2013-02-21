Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 10.mo1.mail-out.ovh.net ([178.32.96.102]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U8Wpg-0002Nd-MR
 for barebox@lists.infradead.org; Thu, 21 Feb 2013 14:09:09 +0000
Received: from mail635.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id A5D611028F09
 for <barebox@lists.infradead.org>; Thu, 21 Feb 2013 15:18:30 +0100 (CET)
Date: Thu, 21 Feb 2013 15:01:42 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130221140142.GD5291@game.jcrosoft.org>
References: <1361265854-14224-1-git-send-email-plagnioj@jcrosoft.com>
 <20130221135600.GT1906@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130221135600.GT1906@pengutronix.de>
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
Subject: Re: [For master PATCH 1/1] grapric_utils: set_pixel only write
 16bit in 16bit mode
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 14:56 Thu 21 Feb     , Sascha Hauer wrote:
> On Tue, Feb 19, 2013 at 10:24:14AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  lib/gui/graphic_utils.c |    2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/lib/gui/graphic_utils.c b/lib/gui/graphic_utils.c
> > index 95687df..a1be5d0 100644
> > --- a/lib/gui/graphic_utils.c
> > +++ b/lib/gui/graphic_utils.c
> > @@ -104,7 +104,7 @@ void set_pixel(struct fb_info *info, void *adr, u32 px)
> >  	case 8:
> >  		break;
> >  	case 16:
> > -		*(u16 *)adr = px;
> > +		*(u16 *)adr = px & 0xffff;
> 
> What does this fix? The result should be the same.
not on qemu

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
