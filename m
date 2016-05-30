Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b7FXZ-00012D-Pe
 for barebox@lists.infradead.org; Mon, 30 May 2016 05:15:02 +0000
Date: Mon, 30 May 2016 07:14:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160530051439.GU31666@pengutronix.de>
References: <1463701176.15779.33.camel@rtred1test09.kymeta.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1463701176.15779.33.camel@rtred1test09.kymeta.local>
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
Subject: Re: [PATCH 2/2] rtc: ds1307: Add support for configuring external
 clock pin
To: Trent Piepho <tpiepho@kymetacorp.com>
Cc: barebox <barebox@lists.infradead.org>

On Thu, May 19, 2016 at 11:39:32PM +0000, Trent Piepho wrote:
> The DS1307 has a square wave output pin, which can be used to output a
> clock signal from the DS1307.  Additionally, the DS1308 supports
> configuring this pin as an input from an external clock source to
> which it should sync itself.
> 
> Add support with OF device tree properties to configure these
> settings.  Supported features are using the clock pin as an output, an
> input, the rate of the pin, and if it should be enabled on battery
> backup power.
> 
> The driver does not check that the selected features are supported by
> the clock chip being used.  It is the designer's responsibility to
> create a valid device tree node; the bootloader does not attempt to be
> a device tree validator.
> 
> Signed-off-by: Trent Piepho <tpiepho@kymetacorp.com>

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
