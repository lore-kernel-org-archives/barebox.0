Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7JyX-0000Kv-2W
 for barebox@lists.infradead.org; Mon, 09 Sep 2019 13:45:02 +0000
Date: Mon, 9 Sep 2019 15:44:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190909134459.aq2j7ojpip2opiwt@pengutronix.de>
References: <20190909091542.15671-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190909091542.15671-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH v2 0/4] stm32mp: add support for STPMIC1
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Sep 09, 2019 at 11:15:38AM +0200, Ahmad Fatoum wrote:
> The STM32MP157C-DK2 has a PMIC on board. This series adds basic support
> for it as well as a watchdog driver to validate it's working.
> 
> v1 -> v2:
> 	- replaced debug() with dev_dbg()
> 	- ceased modifying struct i2c_msg::buf and i2c_msg::len where noted
> 	- ported over i2c_parse_fw_timings helper
> 	All suggested by Sascha
> 
> Ahmad Fatoum (4):
>   i2c: port Linux i2c_parse_fw_timings
>   i2c: add stm32f7 I2C adapter driver
>   mfd: add support for STPMIC1
>   watchdog: add support for STPMIC1 integrated watchdog

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
