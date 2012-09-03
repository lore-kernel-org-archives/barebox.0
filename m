Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T8RFs-0005rZ-Qa
 for barebox@lists.infradead.org; Mon, 03 Sep 2012 07:39:33 +0000
Date: Mon, 3 Sep 2012 09:39:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120903073929.GX26594@pengutronix.de>
References: <1346335217-9686-1-git-send-email-renaud.barbier@ge.com>
 <1346422235-3949-1-git-send-email-renaud.barbier@ge.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1346422235-3949-1-git-send-email-renaud.barbier@ge.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH V2 0/6 ] IMX i2c driver update for the PPC 85xx
To: Renaud Barbier <renaud.barbier@ge.com>
Cc: barebox@lists.infradead.org

On Fri, Aug 31, 2012 at 03:10:29PM +0100, Renaud Barbier wrote:
> This patch set prepares the PPC 85xx SOC to use the IMX i2c driver and updates
> the driver with specific clock settings. The driver name is renamed "i2c-fsl".
> The patch also introduces a function returning the system clock to calculate
> the i2c frequency bus divider. Finally, the P2020RDB board support is updated
> to test the driver on 8-bit and 16-bit I2C devices.
> 
> This patch has NOT been tested on a IMX board.

Applied, thanks.

I added the missing conversion of the device name from i2c-imx to
i2c-fsl to the i.MX SoC part.

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
