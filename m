Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x243.google.com ([2a00:1450:4010:c07::243])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eZgeS-00078C-6P
 for barebox@lists.infradead.org; Thu, 11 Jan 2018 17:28:30 +0000
Received: by mail-lf0-x243.google.com with SMTP id v74so1677660lfa.7
 for <barebox@lists.infradead.org>; Thu, 11 Jan 2018 09:28:17 -0800 (PST)
Date: Thu, 11 Jan 2018 20:28:00 +0300
From: Peter Mamonov <pmamonov@gmail.com>
Message-ID: <20180111172800.j2nllgi743twwkyt@localhost.localdomain>
References: <20180109111000.redcxmlavhxbgcnm@pengutronix.de>
 <20180109142120.5498-1-pmamonov@gmail.com>
 <20180111081531.l4yu7xdxyxrtl7gx@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180111081531.l4yu7xdxyxrtl7gx@pengutronix.de>
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
Subject: Re: [PATCH] lib: parse_area_spec: don't modify *start and *size
 values if parse failed
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi, Sasha,

On Thu, Jan 11, 2018 at 09:15:31AM +0100, Sascha Hauer wrote:
> Hi Peter,
> 
> On Tue, Jan 09, 2018 at 05:21:20PM +0300, Peter Mamonov wrote:
> > Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
> > ---
> >  lib/misc.c | 46 ++++++++++++++++++++++++++++++++--------------
> >  1 file changed, 32 insertions(+), 14 deletions(-)
> > 
> > diff --git a/lib/misc.c b/lib/misc.c
> > index 62ddd6677..c7d5a0ca5 100644
> > --- a/lib/misc.c
> > +++ b/lib/misc.c
> > @@ -79,38 +79,56 @@ EXPORT_SYMBOL(strtoul_suffix);
> >  int parse_area_spec(const char *str, loff_t *start, loff_t *size)
> >  {
> >  	char *endp;
> > -	loff_t end;
> > +	loff_t end, _start, _size;
> > +	int ret = -1;
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
> > -		*size = ~0;
> > -		return 0;
> > +		_size = ~0;
> > +		ret = 0;
> >  	}
> >  
> > -	if (*str == '-') {
> > +	if (ret && *str == '-') {
> >  		/* beginning and end given */
> > -		end = strtoull_suffix(str + 1, NULL, 0);
> > -		if (end < *start) {
> > +		if (!isdigit(*(str + 1)))
> > +			return ret;
> > +
> > +		end = strtoull_suffix(str + 1, &endp, 0);
> > +		str = endp;
> > +		if (end < _start) {
> >  			printf("end < start\n");
> > -			return -1;
> > +			return ret;
> >  		}
> > -		*size = end - *start + 1;
> > -		return 0;
> > +		_size = end - _start + 1;
> > +		ret = 0;
> >  	}
> >  
> > -	if (*str == '+') {
> > +	if (ret && *str == '+') {
> >  		/* beginning and size given */
> > -		*size = strtoull_suffix(str + 1, NULL, 0);
> > -		return 0;
> > +		if (!isdigit(*(str + 1)))
> > +			return ret;
> > +
> > +		_size = strtoull_suffix(str + 1, &endp, 0);
> > +		str = endp;
> > +		ret = 0;
> > +	}
> > +
> > +	if (!ret && *str)
> > +		/* trailing symbols indicate invalid area spec */
> > +		ret = -1;
> 
> Is this correct? I would assume a whitespace should be fine. We only
> do not get trailing whitespaces in here because current users pass in
> argv[] elements which are split up at whitespaces.

Ok, whitespaces " \n\r\t" are fine too. Will fix it in the next revision.

> The check would
> also deserve a separate patch.

My proposal is to fix `parse_area_spec` so it can distinguish a valid memory 
area specification from the following sample file names:
	4k.bin
	4k-8k.txt
	4096+1k_of_random_bytes

Without this final check parse_area_spec would return 0 for the last two 
samples, which are not valid area specifications.

> 
> > +
> > +	if (!ret) {
> > +		*start = _start;
> > +		*size = _size;
> >  	}
> >  
> > -	return -1;
> > +	return ret;
> 
> I find this patch unnecessarily hard to review and also the end result
> doesn't look optimal. Could you create a 'success:' label and jump to it
> when everything is fine? That would make the additional if(ret) and
> if(!ret) checks unnecessary.

Sounds good, will fix it as well.

Regards,
Peter

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
