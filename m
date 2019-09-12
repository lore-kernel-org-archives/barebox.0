Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8ImZ-0000V3-8u
 for barebox@lists.infradead.org; Thu, 12 Sep 2019 06:40:45 +0000
Date: Thu, 12 Sep 2019 08:40:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190912064040.tzy6yf2ejtzz27o6@pengutronix.de>
References: <20190911150019.5236-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190911150019.5236-1-m.felsch@pengutronix.de>
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
Subject: Re: [PATCH 1/2] mfd: da9063: add support to populate subdevs
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Sep 11, 2019 at 05:00:18PM +0200, Marco Felsch wrote:
> The upstream dt-bindings abstracts the DA9063/2 PMIC MFD by multiple
> of-subnodes and the linux-mfd core creates platform-devices for each
> node. Due to the lack of a mfd fw we need to add the platform-devices by
> our own to reuse the upstream bindings.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  drivers/mfd/da9063.c | 3 +++
>  1 file changed, 3 insertions(+)

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
