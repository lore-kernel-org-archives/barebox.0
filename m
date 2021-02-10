Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l9ll9-0004Qf-Pw
 for barebox@lists.infradead.org; Wed, 10 Feb 2021 09:26:08 +0000
Date: Wed, 10 Feb 2021 10:26:05 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20210210092605.GT19583@pengutronix.de>
References: <20200918084532.2794-1-s.hauer@pengutronix.de>
 <20200918084532.2794-10-s.hauer@pengutronix.de>
 <c513bdd8-dda7-956d-b237-5f960878fa02@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c513bdd8-dda7-956d-b237-5f960878fa02@pengutronix.de>
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
Subject: Re: [PATCH 9/9] ARM: Add KASan support
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Tue, Feb 09, 2021 at 10:25:57AM +0100, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 18.09.20 10:45, Sascha Hauer wrote:
> > This adds KASan support to the ARM architecture. What we are doing is:
> > 
> > * Add __no_sanitize_address attribute to various lowlevel functions
> >   which do not run in a proper C environment
> > * Add non-instrumented variants of memset/memcpy (prefixed with '__')
> > * make original memcpy/memset weak symbols so strong definitions in
> >   lib/kasan/common.c can replace them
> > * Use non-instrumented memcpy in early functions
> > * call kasan_init()
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  arch/arm/Kconfig              |  1 +
> >  arch/arm/cpu/Makefile         |  2 ++
> >  arch/arm/cpu/common.c         |  2 +-
> >  arch/arm/cpu/setupc.S         |  6 +++---
> 
> Shouldn't you've touched setupc_64.S here as well?

Likely, yes. How did you stumble upon this?

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
