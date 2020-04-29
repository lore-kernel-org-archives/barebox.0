Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTiHt-000895-4O
 for barebox@lists.infradead.org; Wed, 29 Apr 2020 08:41:50 +0000
Date: Wed, 29 Apr 2020 10:41:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200429084147.GG5877@pengutronix.de>
References: <20200429064040.5845-1-a.fatoum@pengutronix.de>
 <20200429064040.5845-2-a.fatoum@pengutronix.de>
 <20200429080021.GF5877@pengutronix.de>
 <54196041-b8c0-6ba0-9122-19168a183e0d@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <54196041-b8c0-6ba0-9122-19168a183e0d@pengutronix.de>
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
Subject: Re: [PATCH 2/2] of: fix side effect in macro expansion
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Apr 29, 2020 at 10:26:27AM +0200, Ahmad Fatoum wrote:
> On 4/29/20 10:00 AM, Sascha Hauer wrote:
> > On Wed, Apr 29, 2020 at 08:40:40AM +0200, Ahmad Fatoum wrote:
> >> On little endian platforms that don't define __arch_swab32p, be32_to_cpu
> >> ultimately expands to an expression that evaluates its argument multiple
> >> times. Because of the increment, this is wrong (and UB because of
> >> unsequenced modification).
> >> Hoist the side effect out of the macro argument.
> > 
> > I'm not sure if the reasoning is correct. That would mean that
> > of_read_number() doesn't work on ARM, but I can assure it actually does.
> 
> Typo, sorry. arch needs to define __arch_swab32 (no p at the end).
> 
> of_read_number -> be32_to_cpu -> __be32_to_cpu -> __swab32 -> __fswab32
> 
> then
> 
> static inline __attribute_const__ __u32 __fswab32(__u32 val)
> {
> #ifdef __arch_swab32
>         return __arch_swab32(val);
> #else
>         return ___constant_swab32(val);
> #endif
> }
> 
> where ___constant_swab32 is the macro that evaluates the argument
> multiple times.

__fswab32 is a function, for the caller it doesn't matter how often
___constant_swab32 evaluates its argument.

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
