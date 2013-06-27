Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Us5pk-0007WB-7f
 for barebox@lists.infradead.org; Thu, 27 Jun 2013 06:37:33 +0000
Date: Thu, 27 Jun 2013 08:37:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130627063708.GC516@pengutronix.de>
References: <1372235714-5568-1-git-send-email-s.hauer@pengutronix.de>
 <1372269426.799780740@f180.mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1372269426.799780740@f180.mail.ru>
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
Subject: Re: [PATCH] mfd: mc34708: provide static inline wrapper
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Wed, Jun 26, 2013 at 09:57:06PM +0400, Alexander Shiyan wrote:
> > If the driver is disabled provide a static inline wrapper for
> > mc34708_get() to prevent linker errors.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  include/mfd/mc34708.h | 9 ++++++++-
> >  1 file changed, 8 insertions(+), 1 deletion(-)
> > 
> > diff --git a/include/mfd/mc34708.h b/include/mfd/mc34708.h
> > index f384c62..541c47f 100644
> > --- a/include/mfd/mc34708.h
> > +++ b/include/mfd/mc34708.h
> > @@ -93,7 +93,14 @@ struct mc34708 {
> >  	unsigned int		revision;
> >  };
> >  
> > -extern struct mc34708 *mc34708_get(void);
> > +#ifdef CONFIG_MFD_MC34708
> > +struct mc34708 *mc34708_get(void);
> > +#else
> > +static inline struct mc34708 *mc34708_get(void)
> > +{
> > +	return NULL;
> > +}
> > +#endif
> >  
> >  extern int mc34708_reg_read(struct mc34708 *mc34708, enum mc34708_reg reg, u32 *val);
> >  extern int mc34708_reg_write(struct mc34708 *mc34708, enum mc34708_reg reg, u32 val);
> > -- 
> 
> Please apply this to master.
> I want to merge all m13xxx same as in kernel.
> If I get time, of course. :)

That's nicem but why should I apply it to master now? It will be there
anyway in a week.

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
