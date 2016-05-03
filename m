Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1axTiu-0000m0-0h
 for barebox@lists.infradead.org; Tue, 03 May 2016 06:22:20 +0000
Date: Tue, 3 May 2016 08:21:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160503062158.GI19714@pengutronix.de>
References: <1461950646-15037-1-git-send-email-andrew.smirnov@gmail.com>
 <1461950646-15037-4-git-send-email-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1461950646-15037-4-git-send-email-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 3/6] drivers: Introduce AIODEV subsystem
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Apr 29, 2016 at 10:24:03AM -0700, Andrey Smirnov wrote:
> From: Sascha Hauer <s.hauer@pengutronix.de>
> 
> AIODEV/Aiodevice is a analog I/O framework that can be thought of as a
> simplified hybrid between 'hwmon' and 'IIO' subsystems of Linux kernel
> 
> This commit is very heavily based on 'iodevice' framework proposal
> written by Sascha Hauer.
> 
> Signed-off-by: Andrey Smirnov <andrew.smrinov@gmail.com>
                                         ^^^^
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
