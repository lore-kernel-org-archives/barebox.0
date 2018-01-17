Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x242.google.com ([2a00:1450:4010:c07::242])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ebk3w-0000e5-HI
 for barebox@lists.infradead.org; Wed, 17 Jan 2018 09:31:18 +0000
Received: by mail-lf0-x242.google.com with SMTP id h137so21035292lfe.8
 for <barebox@lists.infradead.org>; Wed, 17 Jan 2018 01:31:05 -0800 (PST)
Date: Wed, 17 Jan 2018 12:31:00 +0300
From: Peter Mamonov <pmamonov@gmail.com>
Message-ID: <20180117093059.mjfdgy3jve4wkcon@localhost.localdomain>
References: <20180111081531.l4yu7xdxyxrtl7gx@pengutronix.de>
 <20180115113233.30610-1-pmamonov@gmail.com>
 <20180117081112.hir6nitsmckvdjw7@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180117081112.hir6nitsmckvdjw7@pengutronix.de>
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
Subject: Re: [PATCH v2 1/3] lib: parse_area_spec: don't modify *start value
 if parse failed
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Jan 17, 2018 at 09:11:12AM +0100, Sascha Hauer wrote:
> On Mon, Jan 15, 2018 at 02:32:31PM +0300, Peter Mamonov wrote:
> > Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
> > ---
> >  lib/misc.c | 14 +++++++++-----
> >  1 file changed, 9 insertions(+), 5 deletions(-)
> > 
> > diff --git a/lib/misc.c b/lib/misc.c
> > index 62ddd6677..1767043d1 100644
> > --- a/lib/misc.c
> > +++ b/lib/misc.c
> > @@ -79,19 +79,19 @@ EXPORT_SYMBOL(strtoul_suffix);
> >  int parse_area_spec(const char *str, loff_t *start, loff_t *size)
> >  {
> >  	char *endp;
> > -	loff_t end;
> > +	loff_t end, _start;
> >  
> >  	if (!isdigit(*str))
> >  		return -1;
> >  
> > -	*start = strtoull_suffix(str, &endp, 0);
> > +	_start = strtoull_suffix(str, &endp, 0);
> >  
> >  	str = endp;
> >  
> >  	if (!*str) {
> >  		/* beginning given, but no size, assume maximum size */
> >  		*size = ~0;
> > -		return 0;
> > +		goto success;
> >  	}
> >  
> >  	if (*str == '-') {
> > @@ -102,15 +102,19 @@ int parse_area_spec(const char *str, loff_t *start, loff_t *size)
> >  			return -1;
> >  		}
> >  		*size = end - *start + 1;
> 
> Applied with two little changes: It must be _start above and in another
> case not visible in the patch. *start is not yet initialized.

Thanks for correction. Actually these changes were present in the original
patch, but I've missed them while rearranging it.

Regards,
Peter

> 
> Sascha
> 
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
