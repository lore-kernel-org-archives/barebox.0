Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7Fao-0007Mo-VI
 for barebox@lists.infradead.org; Mon, 09 Sep 2019 09:04:16 +0000
Date: Mon, 9 Sep 2019 11:04:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190909090413.bo4h3sfih6fokz7w@pengutronix.de>
References: <20190909080609.2235-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190909080609.2235-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH v2] input: add handler for reset and power key input events
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Oleksij Rempel <o.rempel@pengutronix.de>

On Mon, Sep 09, 2019 at 10:06:09AM +0200, Ahmad Fatoum wrote:
> Kernel device trees may indicate linux,code = KEY_POWER or KEY_RESTART,
> mostly for gpio-keys. Make barebox able to act on them by registering an
> appropriate input notifier.
> 
> Suggested-by: Oleksij Rempel <o.rempel@pengutronix.de>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> v1 -> v2:
>  - announce reset/power on info log level, so users are aware why it
>    happens. Suggested by Oleksij
> ---
>  drivers/input/Kconfig       |  6 ++++++
>  drivers/input/Makefile      |  1 +
>  drivers/input/specialkeys.c | 36 ++++++++++++++++++++++++++++++++++++
>  3 files changed, 43 insertions(+)
>  create mode 100644 drivers/input/specialkeys.c

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
