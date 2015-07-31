Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZL5YO-0002K5-D7
 for barebox@lists.infradead.org; Fri, 31 Jul 2015 08:20:32 +0000
Date: Fri, 31 Jul 2015 10:20:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150731082010.GV18700@pengutronix.de>
References: <1438270226-577-1-git-send-email-jluebbe@debian.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1438270226-577-1-git-send-email-jluebbe@debian.org>
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
Subject: Re: [PATCH v2] watchdog: add davinci watchdog driver
To: Jan Luebbe <jluebbe@debian.org>
Cc: barebox@lists.infradead.org

On Thu, Jul 30, 2015 at 05:30:26PM +0200, Jan Luebbe wrote:
> This driver is based on the Linux driver (v4.0).
> 
> Signed-off-by: Jan Luebbe <jluebbe@debian.org>
> ---
> 
> Changes from v1:
>   - Check result of dev_request_mem_region() with IS_ERR (reported by Sascha
>     Hauer).
> 
>  drivers/watchdog/Kconfig       |   6 ++
>  drivers/watchdog/Makefile      |   1 +
>  drivers/watchdog/davinci_wdt.c | 172 +++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 179 insertions(+)
>  create mode 100644 drivers/watchdog/davinci_wdt.c

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
