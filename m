Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kMujb-0004PK-8G
 for barebox@lists.infradead.org; Mon, 28 Sep 2020 15:06:36 +0000
Date: Mon, 28 Sep 2020 17:06:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200928150633.GI11648@pengutronix.de>
References: <20200918084532.2794-1-s.hauer@pengutronix.de>
 <d2172e61-a0a7-f536-f755-032751164e0d@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d2172e61-a0a7-f536-f755-032751164e0d@pengutronix.de>
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
Subject: Re: [PATCH 0/9] barebox KASan support
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Sep 28, 2020 at 04:33:21PM +0200, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 9/18/20 10:45 AM, Sascha Hauer wrote:
> > This series adds KASan support to barebox. We already have ASan support
> > for sandbox which uses libasan, this time we get KASan for use on real
> > hardware. The KASan support is based on the Kernel code and contains the
> > subset of features we need for barebox. KASan is currently supported on
> > ARM(32/64) only and requires a supported allocator. Currently only the
> > TLSF allocator is supported.
> 
> Should the md/mw/memcpy commands be exempt from KASAN checks?

I asked myself the same question. For now I decided that including these
commands in KASan checks helps debugging KASan. You can easily trigger a
KASan exception with them. Also you shouldn't have any business
manipulating the malloc area outside the allocated regions.

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
