Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kKFFf-0005SH-Pg
 for barebox@lists.infradead.org; Mon, 21 Sep 2020 06:24:40 +0000
Date: Mon, 21 Sep 2020 08:24:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200921062437.GC21278@pengutronix.de>
References: <20200918084532.2794-1-s.hauer@pengutronix.de>
 <20200918084532.2794-9-s.hauer@pengutronix.de>
 <518f7fbb-8454-52e9-8b43-fc04d099ee6e@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <518f7fbb-8454-52e9-8b43-fc04d099ee6e@pengutronix.de>
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
Subject: Re: [PATCH 8/9] Add KASan support
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Fri, Sep 18, 2020 at 12:15:53PM +0200, Ahmad Fatoum wrote:
> 
> 
> On 9/18/20 10:45 AM, Sascha Hauer wrote:
> > -	return block_prepare_used(control, block, adjust);
> > +	void *ret;
> > +
> > +	ret = block_prepare_used(control, block, adjust, size);
> > +	if (!ret)
> > +		return ret;
> > +
> > +	return ret;
> 
> Debugging leftover? You can just return the function result directly.

Not exactly debugging leftover. I had the poisoning code here in an
earlier version and haven't rolled it back completely when moving the
code elsewhere. Fixed.

> > +static void print_error_description(struct kasan_access_info *info)
> > +{
> > +	pr_err("BUG: KASAN: %s in %pS\n",
> > +		get_bug_type(info), (void *)info->ip);
> > +	pr_err("%s of size %zu at addr %px\n",
> > +		info->is_write ? "Write" : "Read", info->access_size,
> > +		info->access_addr);
> 
> I just removed the pr_err in ubsan with this rationale:
> 
>     common: ubsan: replace pr_err with printf
> 
>     The pr_print family of functions also writes to the barebox
>     log buffer, which we don't require for printing UBSan errors,
>     which is a debugging aid. This also improves UBSan coverage as now
>     undefined behavior within pr_print may be reported as well.
> 
> Should we use plain printf here as well? Less code to execute
> = less chance to run into a recursion.

I am not sure. I did a quick

	foo = strdup("Hallo");
	free(foo);
	pr_err(foo);

At least this worked as expected. I can't really tell at the moment if
this covers all cases. I think there will be surprises when we call
pr_err inside a pr_err which faults. On the other hand I would really
expect such a message to be in the log.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
