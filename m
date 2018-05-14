Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fI7hL-0003Iu-QA
 for barebox@lists.infradead.org; Mon, 14 May 2018 07:15:13 +0000
Date: Mon, 14 May 2018 09:14:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180514071456.qknyha5bsl6gbkk4@pengutronix.de>
References: <20180508211502.5476-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180508211502.5476-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] serial: lpuart: Avoid division by zero when requested
 baudrate is
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, May 08, 2018 at 02:15:02PM -0700, Andrey Smirnov wrote:
> With serdev device support added there's now a corner case where:
> 
>  1. There is a DT node for a serdev device on one of the UARTs
>  2. There is no driver that binds against serdev device's compatibility
>     string
> 
> with 1 and 2 being true it is possible to end up in a situation where
> a particualr UART has not been initalized to any baudrate when
> clock_notifier_call_chain() gets called. This effectively translates
> to
> 
> 	set_baudrate(uart, 0);
> 
> which for LPUART driver result in a division by zero.

This probably leads to a division by zero for most drivers since
dividing by the baudrate is a common pattern. Wouldn't it be better to
catch this is console_set_baudrate()?

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
