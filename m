Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SMCcx-0003U5-L0
 for barebox@lists.infradead.org; Mon, 23 Apr 2012 06:20:02 +0000
Date: Mon, 23 Apr 2012 08:19:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120423061953.GV3852@pengutronix.de>
References: <m3hawbbohx.fsf@intrepid.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <m3hawbbohx.fsf@intrepid.localdomain>
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
Subject: Re: ARM page 0 set for page fault
To: Krzysztof Halasa <khc@pm.waw.pl>
Cc: barebox@lists.infradead.org

Hi Krzysztof,

On Sun, Apr 22, 2012 at 08:38:50PM +0200, Krzysztof Halasa wrote:
> Hi,
> 
> I'm trying to port my old IXP4xx (Intel XScale ARM big-endian mostly)
> patches to the current Barebox. Noticed the page #0 (virtual = physical
> addresses 0 - 0x1FFF, or the first 4 KiB of RAM) is not present:
> 
> commit abcf935e
> Author: Sascha Hauer <s.hauer@pengutronix.de>
> Date:   Sun Aug 7 19:00:56 2011 +0200
> 
>     ARM mmu: use high vectors if possible
> 
>     Using high vectors allows us to map a faulting zero page to
>     catch NULL pointer dereferences.
> 
> Unfortunately this causes "md" (memory dump) etc. to fail (also
> executing Linux kernel fails since the tags are located at 0x100 -
> should I relocate them?).
> 
> Should I do it differently, e.g. access RAM through an alias (IXP4xx has
> RAM aliased all over the place, one could also use MMU tables for this)
> so that the page fault only occurs on internal, not user-visible
> accesses (= users should not be able to access the first virtual page,
> even it they think the do)?

I would prefer the following order of precedence:

- Locate ATAGS to somewhere else. The kernel takes a pointer to ATAGs
  anyway, so this should work.
- Map SDRAM at 0x0 to some other place using the MMU. When the kernel
  then starts with MMU off the ATAGs are where the Kernel expects them
  to be.
- At an #ifdef around the code in mmu.c to make the zero page non
  faulting. Having the zero page faulting is a very useful feature
  though, so I would only go this way if nothing else helps.

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
