Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gytdJ-0003Tn-9b
 for barebox@lists.infradead.org; Wed, 27 Feb 2019 07:28:03 +0000
Date: Wed, 27 Feb 2019 08:27:58 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190227072758.rkilnd34hisirt6k@pengutronix.de>
References: <20190225065229.3386-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190225065229.3386-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] usb: imx: Do not disable VBUS on ehci_register()'s success
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org, Vivien Didelot <vivien.didelot@gmail.com>

On Sun, Feb 24, 2019 at 10:52:29PM -0800, Andrey Smirnov wrote:
> Original code was written to exit early on ehci_register()'s
> success. As a part of e3eb0c729b, however, it was modified to to early
> exit on failure instead. This resulted in VBUS being erroneously
> disabled after EHCI controller was added, thus breaking USB on some
> i.MX boards (confirmed on ZII's RDU2).
> 
> Fixes: e3eb0c729b ("usb: host: ehci: add ehci_unregister()")
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> Cc: Vivien Didelot <vivien.didelot@gmail.com>
> ---
>  drivers/usb/imx/chipidea-imx.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)

Applied to master, thanks

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
