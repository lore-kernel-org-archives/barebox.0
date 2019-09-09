Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7FLb-0001Ke-Mg
 for barebox@lists.infradead.org; Mon, 09 Sep 2019 08:48:34 +0000
Date: Mon, 9 Sep 2019 10:48:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190909084830.5fxgs7oihsecquhm@pengutronix.de>
References: <20190908000314.27078-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190908000314.27078-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] i2c/pca954x: Initialize the mux to disconnected state
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Sat, Sep 07, 2019 at 05:03:14PM -0700, Andrey Smirnov wrote:
> Port of a Linux kernel commit cd823db8b1161ef0d756514d280715a576d65cc3
> 
>     pca954x power-on default is channel 0 connected. If multiple pca954x
>     muxes are connected to the same physical I2C bus, the parent bus will
>     see channel 0 devices behind both muxes by default. This is bad.
> 
>     Scenario:
>                 -- pca954x @ 0x70 -- ch 0 (I2C-bus-101) -- EEPROM @ 0x50
>                 |
>     I2C-bus-1 ---
>                 |
>                 -- pca954x @ 0x71 -- ch 0 (I2C-bus-111) -- EEPROM @ 0x50
> 
>     1. Load I2C bus driver: creates I2C-bus-1
>     2. Load pca954x driver: creates virtual I2C-bus-101 and I2C-bus-111
>     3. Load eeprom driver
>     4. Try to read EEPROM @ 0x50 on I2C-bus-101. The transaction will also bleed
>        onto I2C-bus-111 because pca954x @ 0x71 channel 0 is connected by default.
> 
>     Fix: Initialize pca954x to disconnected state in pca954x_probe()
> 
>     Signed-off-by: Petri Gynther <pgynther@google.com>
>     Signed-off-by: Jean Delvare <khali@linux-fr.org>
>     Cc: stable@kernel.org
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  drivers/i2c/muxes/i2c-mux-pca954x.c | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)

Applied with whitespace cleanup, thanks

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
