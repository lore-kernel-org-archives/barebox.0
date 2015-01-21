Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YDvmU-0001eM-1m
 for barebox@lists.infradead.org; Wed, 21 Jan 2015 13:57:15 +0000
Date: Wed, 21 Jan 2015 14:56:45 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150121135645.GH12209@pengutronix.de>
References: <1421814254-13282-1-git-send-email-yamada.m@jp.panasonic.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1421814254-13282-1-git-send-email-yamada.m@jp.panasonic.com>
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
Subject: Re: [PATCH] ARM: remove unused code from
 __v7_mmu_cache_flush_invalidate
To: Masahiro Yamada <yamada.m@jp.panasonic.com>
Cc: barebox@lists.infradead.org

On Wed, Jan 21, 2015 at 01:24:14PM +0900, Masahiro Yamada wrote:
> This code is unnecessary (wrong) for the following reasons.
> 
> [1] As ARM ARM clearly says, the entire Level 1 cache maintenance
>     operations are not supported for ARMv7, i.e. the bit19-16 of
>     the ID_MMFR1 is always 0b0000.  The code always jumps to the
>     "hierarchical" label.

The offending code is from the kernel from arch/arm/boot/compressed/head.S
The test for ID_MMFR1 nearly unchanged since:

commit 7d09e85448dfa78e3e58186c934449aaf6d49b50
Author: Catalin Marinas <catalin.marinas@arm.com>
Date:   Fri Jun 1 17:14:53 2007 +0100

That of course doesn't make it more correct. Maybe we should send the
same patch to the kernel and let Catalin explain why this code is
necessary (or why not)

> 
> [2] The value of "r0" is supposed to determine which cache operation
>     should be done, invalidate or clean+invalidate.  The line
>     "mcr     p15, 0, r12, c7, c14, 0" tries to clean+invalidate
>     regardless of the value of "r0", this is weird.
>     Anyway, as mentioned above, this line cannot be reached.

This is since

commit 465950ee64f6fbeb0daf138c2d43ad71be159375
Author: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date:   Tue May 14 15:14:56 2013 +0200

    ARM v7: added v7_mmu_cache_invalidate()

Appearantly Enrico only handled the hierarchical case.

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
