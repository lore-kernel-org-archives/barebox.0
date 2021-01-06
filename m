Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kx5cg-0004gM-JA
 for barebox@lists.infradead.org; Wed, 06 Jan 2021 10:00:59 +0000
Date: Wed, 6 Jan 2021 11:00:57 +0100
Message-ID: <20210106100057.GN19063@pengutronix.de>
References: <20201217110731.14914-1-m.grzeschik@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201217110731.14914-1-m.grzeschik@pengutronix.de>
From: Sascha Hauer <sha@pengutronix.de>
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
Subject: Re: [PATCH v2 0/5] dwc2: improve gadget support
To: Michael Grzeschik <m.grzeschik@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Dec 17, 2020 at 12:07:26PM +0100, Michael Grzeschik wrote:
> This series adds support for clk and reset controller defined by dts. It also
> enables the hardware force mode for the gadget in case the
> otg.mode="peripheral" is set.
> 
> Michael Grzeschik (5):
>   usb: dwc2: cleanup on error for deferred probing
>   usb: dwc2: add clk dependency for probe via oftree
>   usb: dwc2: add reset controller dependency for probe via oftree
>   usb: dwc2: update the dr_mode on set_mode callback
>   usb: dwc2: add support to force gadget mode
> 
>  drivers/usb/dwc2/core.h   |   1 +
>  drivers/usb/dwc2/dwc2.c   |  33 ++++++++-
>  drivers/usb/dwc2/gadget.c | 144 ++++++++++++++++++++++++++++++++++++++
>  3 files changed, 175 insertions(+), 3 deletions(-)

Applied, thanks

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
