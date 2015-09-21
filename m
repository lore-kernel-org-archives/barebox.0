Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZduWW-0002PR-7a
 for barebox@lists.infradead.org; Mon, 21 Sep 2015 06:24:24 +0000
Date: Mon, 21 Sep 2015 08:24:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150921062401.GF7858@pengutronix.de>
References: <1442502985-21988-1-git-send-email-mpa@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1442502985-21988-1-git-send-email-mpa@pengutronix.de>
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
Subject: Re: [PATCH] usb: chipidea: Add udc unregister for device removal
To: Markus Pargmann <mpa@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Sep 17, 2015 at 05:16:25PM +0200, Markus Pargmann wrote:
> The host may assume that the usb device is still up and running after
> booting if we do not deregister the udc here. I observed issues when the
> linux kernel was using a usb gadget directly where the complete USB Hub
> got disconnected through this.
> 
> This patch adds a proper USB disconnect for gadget devices.
> 
> Signed-off-by: Markus Pargmann <mpa@pengutronix.de>
> ---
>  drivers/usb/gadget/fsl_udc.c   | 13 +++++++++++++
>  drivers/usb/imx/chipidea-imx.c |  6 ++++++
>  include/usb/fsl_usb2.h         |  1 +
>  3 files changed, 20 insertions(+)

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
