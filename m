Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo5.mail-out.ovh.net ([178.33.111.247]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TBPNF-0006HK-Bv
 for barebox@lists.infradead.org; Tue, 11 Sep 2012 12:15:26 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 6100EFFA217
 for <barebox@lists.infradead.org>; Tue, 11 Sep 2012 14:20:56 +0200 (CEST)
Date: Tue, 11 Sep 2012 14:12:46 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120911121246.GI31207@game.jcrosoft.org>
References: <1347358767-1180-1-git-send-email-plagnioj@jcrosoft.com>
 <20120911112103.GV18243@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120911112103.GV18243@pengutronix.de>
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
Subject: Re: [PATCH 1/7] globalbar: add inline when not enabled
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 13:21 Tue 11 Sep     , Sascha Hauer wrote:
> Repeating my comment I made last time:
> 
> Subject: s/globalbar/globalvar/
> 
I change the oherone forget this one tag updated

Best Regards,
J.
> Sascha
> 
> On Tue, Sep 11, 2012 at 12:19:21PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  include/globalvar.h |   20 ++++++++++++++++++++
> >  1 file changed, 20 insertions(+)
> > 
> > diff --git a/include/globalvar.h b/include/globalvar.h
> > index 7cc3976..a127a05 100644
> > --- a/include/globalvar.h
> > +++ b/include/globalvar.h
> > @@ -1,6 +1,7 @@
> >  #ifndef __GLOBALVAR_H
> >  #define __GLOBALVAR_H
> >  
> > +#ifdef CONFIG_GLOBALVAR
> >  int globalvar_add_simple(const char *name);
> >  
> >  int globalvar_add(const char *name,
> > @@ -8,5 +9,24 @@ int globalvar_add(const char *name,
> >  		const char *(*get)(struct device_d *, struct param_d *p),
> >  		unsigned long flags);
> >  char *globalvar_get_match(const char *match, const char *seperator);
> > +#else
> > +static inline int globalvar_add_simple(const char *name)
> > +{
> > +	return 0;
> > +}
> > +
> > +static inline int globalvar_add(const char *name,
> > +		int (*set)(struct device_d *dev, struct param_d *p, const char *val),
> > +		const char *(*get)(struct device_d *, struct param_d *p),
> > +		unsigned long flags)
> > +{
> > +	return 0;
> > +}
> > +
> > +static inline char *globalvar_get_match(const char *match, const char *seperator)
> > +{
> > +	return NULL;
> > +}
> > +#endif
> >  
> >  #endif /* __GLOBALVAR_H */
> > -- 
> > 1.7.10.4
> > 
> > 
> > _______________________________________________
> > barebox mailing list
> > barebox@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/barebox
> > 
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
