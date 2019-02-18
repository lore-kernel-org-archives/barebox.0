Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gvegx-0001ka-8L
 for barebox@lists.infradead.org; Mon, 18 Feb 2019 08:54:24 +0000
Date: Mon, 18 Feb 2019 09:54:21 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190218085421.6wv4fr3z5tghny6v@pengutronix.de>
References: <20190215124351.30374-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190215124351.30374-1-o.rempel@pengutronix.de>
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
Subject: Re: [PATCH v2 0/4] add (U)EFI watchdog
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Feb 15, 2019 at 01:43:47PM +0100, Oleksij Rempel wrote:
> changes v2:
> - efi_wdt_set_timeout() should return error if we get error from (U)EFI
> - use device_platform_driver()
> - spelling and formatting fixes in the documentation.
> 
> Oleksij Rempel (4):
>   efi: add prototype and definition for set_watchdog_timer
>   watchdog: add (U)EFI driver
>   efi_defconfig: enable watchdog support
>   Documentation: efi: provide (U)EFI watchdog documentation

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
