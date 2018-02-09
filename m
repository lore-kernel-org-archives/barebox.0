Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ek4Ar-0000r3-4W
 for barebox@lists.infradead.org; Fri, 09 Feb 2018 08:36:50 +0000
Date: Fri, 9 Feb 2018 09:36:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180209083636.oipcpwnnflbqcdzb@pengutronix.de>
References: <20180208074856.3701-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180208074856.3701-1-antonynpavlov@gmail.com>
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
Subject: Re: [RFC] commands: i2c_write: enable raw write to address
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Antony,

On Thu, Feb 08, 2018 at 10:48:56AM +0300, Antony Pavlov wrote:
> Sometimes for communication with a simple I2C devices
> (e.g. PCF8574 or TM1650) it's necessary to send only
> one data byte into the I2C device.
> Current i2c_write command makes this impossible because
> you can't just pass 'device address' and 'register number'
> (or 'device address' and 'one data byte') to the command.
> You always have to pass all three parameters:
> 'device address', 'register number' and 'data'.
> 
> This commit fixes the problem.
> 
> Sample usage:
> 
>   barebox@barebox sandbox:/ i2c_write -a 0x24 0x01
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  commands/i2c.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)

Looks good to me.

I applied this one despite the [RFC] tag. If for some reason you want to
resend this, feel free to do so, but otherwise consider this applied.

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
