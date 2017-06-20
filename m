Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dNDeP-0000mw-8e
 for barebox@lists.infradead.org; Tue, 20 Jun 2017 07:32:39 +0000
Date: Tue, 20 Jun 2017 09:32:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170620073213.5ndanpo3nbooox5h@pengutronix.de>
References: <20170619144431.20843-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170619144431.20843-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 0/6] Backport support for "extended device ID" for
 dataflash
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org, cphealy@gmail.com

On Mon, Jun 19, 2017 at 07:44:25AM -0700, Andrey Smirnov wrote:
> Hi everyone,
> 
> This series is a backport of almost identical patchset that I did for
> linux kernel:
> 
>       1. lkml.kernel.org/r/20170421163026.24884-1-andrew.smirnov@gmail.com
>       2. lkml.kernel.org/r/20170421163026.24884-2-andrew.smirnov@gmail.com
>       3. lkml.kernel.org/r/20170421163026.24884-3-andrew.smirnov@gmail.com
>       4. lkml.kernel.org/r/20170421163026.24884-4-andrew.smirnov@gmail.com
>       5. lkml.kernel.org/r/20170421163026.24884-5-andrew.smirnov@gmail.com
>       6. lkml.kernel.org/r/20170421163026.24884-6-andrew.smirnov@gmail.com
> 
> The patchset hasn't hit Linus' tree yet, but it can be found in
> linux-next:
> 	https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/log/drivers/mtd/devices/mtd_dataflash.c
> 
> Let me know if anything needs changing.

Fine as-is, applied, thanks

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
