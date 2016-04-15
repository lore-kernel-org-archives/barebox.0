Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aqwNs-0002eq-Hb
 for barebox@lists.infradead.org; Fri, 15 Apr 2016 05:33:37 +0000
Date: Fri, 15 Apr 2016 07:33:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160415053311.GF9102@pengutronix.de>
References: <20160413212434.GA4512@sun>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20160413212434.GA4512@sun>
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
Subject: Re: [PATCH] i2c_probe: fix wrong start and stop addresses
To: Miquel Raynal <raynal.miquel@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Apr 13, 2016 at 11:24:34PM +0200, Miquel Raynal wrote:
> This patch fixes the wrong range of i2c addresses used by the i2c_probe
> command when a stop address is provided. In this case the start address
> (startaddr) was taking the value of the stop address and the stop address
> (stopaddr) was always set to its default value.
> 
> Signed-off-by: Miquel Raynal <raynal.miquel@gmail.com>
> ---
>  commands/i2c.c |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

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
