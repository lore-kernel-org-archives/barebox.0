Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aWgRV-0006uL-RT
 for barebox@lists.infradead.org; Fri, 19 Feb 2016 08:29:38 +0000
Date: Fri, 19 Feb 2016 09:29:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160219082915.GO3939@pengutronix.de>
References: <1455792617-13671-1-git-send-email-s.hauer@pengutronix.de>
 <1455792617-13671-2-git-send-email-s.hauer@pengutronix.de>
 <CAHQ1cqHOpW-iv8+wcrz1_azV0Ljs1H_z-E6WZi06opZ3dcqEWQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqHOpW-iv8+wcrz1_azV0Ljs1H_z-E6WZi06opZ3dcqEWQ@mail.gmail.com>
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
Subject: Re: [PATCH 1/3] Fix return check of dev_request_mem_region
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Thu, Feb 18, 2016 at 04:58:49PM -0800, Andrey Smirnov wrote:
> On Thu, Feb 18, 2016 at 2:50 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > dev_request_mem_region returns an ERR_PTR, fix places which check for a
> > NULL pointer instead. This patch has been generated with this semantic
> > patch:
> >
> > // <smpl>
> > @@
> > expression e,e1,e2;
> > @@
> >
> > e = dev_request_mem_region(...)
> > ... when != e = e1
> > if (
> > -   e == NULL
> > +   IS_ERR(e)
> >    ) {
> >      ...
> >      return
> > -      e2
> > +      PTR_ERR(e)
> >      ;
> >      }
> > // </smpl>
> 
> This wouldn't handle correctly the cases where code bails out using
> goto (look for example at diff for phy-am335x.c in this patch). I
> played around with Cocinelle as well and here's what I came up with:
> 
> 
> // <smpl>
> @i@
> @@
> 
> #define CONFIG_TSE_USE_DEDICATED_DESC_MEM

This doesn't work for me. I assume you want to define
CONFIG_TSE_USE_DEDICATED_DESC_MEM to let coccinelle walk into the
correct path in drivers/net/altera_tse.c, but for me it still changes
the !CONFIG_TSE_USE_DEDICATED_DESC_MEM code path.

> 
> 
> // Handle immediate returns
> @@
> expression e;
> expression e1;
> @@
> 
> e = dev_request_mem_region(...);
> 
> ...
> 
> - if (e == NULL)
> -    return e1;
> + if (IS_ERR(e))
> +    return PTR_ERR(e);
> 
> @ rule1 @
> expression e;
> @@
> 
> e = dev_request_mem_region(...);
> 
> // Fix exit codepath first
> @@
> expression rule1.e;
> identifier ret, label;
> constant errno;
> @@
> 
> if (e == NULL)
> {
> 
>   ...
> 
> // Setting the ret code and jumping to error handling code
> (
> - ret = -errno;
> + ret = PTR_ERR(e);
> 
>   ...
> 
>   goto label;
> 
> // Return after doing some extra steps
> |
> 
> - return -errno;
> + return PTR_ERR(e);
> )
> }
> 
> // Fix the check itself. Having this as a standalone rule allows
> // to catch cases where error codepath doesn't bail out
> @depends on i@

I assume you mean "depends on rule1", because otherwise it never
actually changes the wrong error check.

Overall this looks better than my version. I recreated the patch with
your version and fixed up the altera-tse driver manually.

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
