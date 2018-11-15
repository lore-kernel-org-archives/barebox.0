Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gNCHX-0005dY-9b
 for barebox@lists.infradead.org; Thu, 15 Nov 2018 07:41:45 +0000
Date: Thu, 15 Nov 2018 08:41:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181115074129.a5a3dbahkm5dqyi6@pengutronix.de>
References: <20181115030024.11029-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181115030024.11029-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] ARM: Do not build hyp.S for AArch64
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Nov 14, 2018 at 07:00:24PM -0800, Andrey Smirnov wrote:
> This file is only meant for ARMv7 and trying to build it on ARMv8
> results in a build break.
> 
> Fixes: baa1aec03 ("ARM: allow secure monitor code to be built without PSCI")
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
> 
> I feel like this should really be gated by CONFIG_CPU32v7 since I
> think the code in question is ARMv7-only, but I am not
> sure. Comments/advise are wellcome.

Please rebase. Current master has

obj-pbl-$(CONFIG_CPU_32v7) += hyp.o

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
