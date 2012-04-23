Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SMJPw-0002Qw-Ku
 for barebox@lists.infradead.org; Mon, 23 Apr 2012 13:35:01 +0000
Date: Mon, 23 Apr 2012 15:34:55 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120423133455.GG3852@pengutronix.de>
References: <20120419053846.GA20601@game.jcrosoft.org>
 <1334814298-11468-9-git-send-email-plagnioj@jcrosoft.com>
 <20120423060327.GU3852@pengutronix.de>
 <20120423062146.GJ20601@game.jcrosoft.org>
 <20120423070756.GB3852@pengutronix.de>
 <20120423070121.GN20601@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120423070121.GN20601@game.jcrosoft.org>
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
Subject: Re: [PATCH 09/11] complete: add go and sleep support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, Apr 23, 2012 at 09:01:21AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 09:07 Mon 23 Apr     , Sascha Hauer wrote:
> > On Mon, Apr 23, 2012 at 08:21:46AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > On 08:03 Mon 23 Apr     , Sascha Hauer wrote:
> > > > >  BAREBOX_CMD_START(sleep)
> > > > >  	.cmd		= do_sleep,
> > > > >  	.usage		= "delay execution for n seconds",
> > > > > +	BAREBOX_CMD_COMPLETE(cammand_var_complete)
> > > > >  BAREBOX_CMD_END
> > > > > diff --git a/common/complete.c b/common/complete.c
> > > > > index 5213b10..9ecce25 100644
> > > > > --- a/common/complete.c
> > > > > +++ b/common/complete.c
> > > > > @@ -193,6 +193,11 @@ int empty_complete(struct string_list *sl, char *instr)
> > > > >  	return 1;
> > > > >  }
> > > > >  
> > > > > +int cammand_var_complete(struct string_list *sl, char *instr)
> > > > > +{
> > > > > +	return 0;
> > > > > +}
> > > > 
> > > > Two patches before this one you introduced empty_complete. This function
> > > > does the same, except that it returns 0 instead of 1. The return value
> > > > of the complete functions is never checked, so what is going on here?
> > > 
> > > the return value is checked.
> > > 
> > > no this different we return 0 as you can use env var complete
> > 
> > Can you then add a meaningful comment what command cmdtp->complete
> > should return and what it means? A define instead of using '1' may make
> > sense aswell.
> ok will ad any other comment?

No, should be ok then.

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
