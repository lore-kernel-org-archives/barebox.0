Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aY7Bw-0008Gi-KW
 for barebox@lists.infradead.org; Tue, 23 Feb 2016 07:15:29 +0000
Date: Tue, 23 Feb 2016 08:15:06 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160223071506.GT3939@pengutronix.de>
References: <1455792617-13671-1-git-send-email-s.hauer@pengutronix.de>
 <1455792617-13671-2-git-send-email-s.hauer@pengutronix.de>
 <CAHQ1cqHOpW-iv8+wcrz1_azV0Ljs1H_z-E6WZi06opZ3dcqEWQ@mail.gmail.com>
 <20160219082915.GO3939@pengutronix.de>
 <CAHQ1cqGi2M1hKD0sMMWp=NRGyOmgtDvTOopE41UzUurErhXwyw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqGi2M1hKD0sMMWp=NRGyOmgtDvTOopE41UzUurErhXwyw@mail.gmail.com>
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

On Fri, Feb 19, 2016 at 11:12:24AM -0800, Andrey Smirnov wrote:

> >>
> >> // Fix the check itself. Having this as a standalone rule allows
> >> // to catch cases where error codepath doesn't bail out
> >> @depends on i@
> >
> > I assume you mean "depends on rule1", because otherwise it never
> > actually changes the wrong error check.
> >
> 
> Darn! I missed that regression. The problem with making it depending
> on "rule1" is that it misses the cases where only the incorrect check
> is performed and no bailing out is done (atmel_nand.c).
> 
> 
> > Overall this looks better than my version. I recreated the patch with
> > your version and fixed up the altera-tse driver manually.
> 
> In case you missed it there's also "dove.c" that needs to be corrected manually.

Yes, I missed it. Fixed up manuelly now.

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
