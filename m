Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOeM1-0000TD-Gg
 for barebox@lists.infradead.org; Wed, 15 Apr 2020 09:29:10 +0000
Date: Wed, 15 Apr 2020 11:29:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200415092907.GK1694@pengutronix.de>
References: <20200415075705.54683-1-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200415075705.54683-1-masahiroy@kernel.org>
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
Subject: Re: [PATCH 1/3] kbuild: rename hostprogs-y/always to
 hostprogs/always-y
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: barebox@lists.infradead.org

On Wed, Apr 15, 2020 at 04:57:03PM +0900, Masahiro Yamada wrote:
> [ Linux commit 5f2fb52fac15a8a8e10ce020dd532504a8abfc4e ]
> 
> In old days, the "host-progs" syntax was used for specifying host
> programs. It was renamed to the current "hostprogs-y" in 2004.
> 
> It is typically useful in scripts/Makefile because it allows Kbuild to
> selectively compile host programs based on the kernel configuration.
> 
> This commit renames like follows:
> 
>   always       ->  always-y
>   hostprogs-y  ->  hostprogs
> 
> So, scripts/Makefile will look like this:
> 
>   always-$(CONFIG_BUILD_BIN2C) += ...
>   always-$(CONFIG_KALLSYMS)    += ...
>       ...
>   hostprogs := $(always-y) $(always-m)
> 
> I think this makes more sense because a host program is always a host
> program, irrespective of the kernel configuration. We want to specify
> which ones to compile by CONFIG options, so always-y will be handier.
> 
> The "always", "hostprogs-y", "hostprogs-m" will be kept for backward
> compatibility for a while.
> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---

Series applied, thanks

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
