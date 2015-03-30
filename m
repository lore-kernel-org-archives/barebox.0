Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YcdQa-0002Hw-RY
 for barebox@lists.infradead.org; Mon, 30 Mar 2015 17:24:46 +0000
Date: Mon, 30 Mar 2015 19:24:24 +0200
From: Sascha Hauer <sha@pengutronix.de>
Message-ID: <20150330172424.GC9742@pengutronix.de>
References: <1427484192-5410-1-git-send-email-mkl@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1427484192-5410-1-git-send-email-mkl@pengutronix.de>
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
Subject: Re: [PATCH 1/2] ARM/MXS/i.MX28: recognize watchdog reset
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox@lists.infradead.org, Steffen Trumtrar <s.trumtrar@pengutronix.de>

On Fri, Mar 27, 2015 at 08:23:11PM +0100, Marc Kleine-Budde wrote:
> From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> 
> When a watchdog timeout is set in the linux kernel, the FORCE_UPDATE bit is set.
> Use this to recognize a system reset that was triggered by the watchdog.
> Since only the wdt part of the kernel driver sets this bit, this is a safe
> distinguishing feature.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
> ---
>  drivers/watchdog/im28wd.c | 7 +++++++
>  1 file changed, 7 insertions(+)

Applied, thanks

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
