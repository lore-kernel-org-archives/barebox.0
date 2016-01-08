Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aHRrF-0006UR-OT
 for barebox@lists.infradead.ORg; Fri, 08 Jan 2016 07:53:14 +0000
Date: Fri, 8 Jan 2016 08:52:51 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160108075251.GA13058@pengutronix.de>
References: <1452160500-696-1-git-send-email-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1452160500-696-1-git-send-email-l.stach@pengutronix.de>
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
Subject: Re: [PATCH] usb: chipidea-imx: check return value of regulator_get()
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Jan 07, 2016 at 10:55:00AM +0100, Lucas Stach wrote:
> From: David Jander <david@protonic.nl>
> 
> The VBUS regulator is optional for the chipidea-imx glue, so it must
> be checked if regulator_get provided a valid regulator handle before
> trying to enable the regulator.
> 
> Signed-off-by: David Jander <david@protonic.nl>
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
> lst: reworded commit message
> ---
>  drivers/usb/imx/chipidea-imx.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)

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
