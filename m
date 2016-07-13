Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bNCZ2-0003cP-OA
 for barebox@lists.infradead.org; Wed, 13 Jul 2016 05:18:29 +0000
Date: Wed, 13 Jul 2016 07:18:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160713051805.GZ20657@pengutronix.de>
References: <1745635830.58889.1468237871081.JavaMail.ngmail@webmail22.arcor-online.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1745635830.58889.1468237871081.JavaMail.ngmail@webmail22.arcor-online.net>
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
Subject: Re: problem configuring backlight brightness levels in device tree
To: giorgio.nicole@arcor.de
Cc: barebox@lists.infradead.org

On Mon, Jul 11, 2016 at 01:51:11PM +0200, giorgio.nicole@arcor.de wrote:
> Hi,
> 
> I was trying to configure a pwm backlight on an embedded arm board
> and I think I've found a minor problem.
> 
> In the source file 'drivers/video/backlight-pwm.c', in the function pwm_backlight_parse_dt()
> you set the number of brightness values to:
> 
> pwm_backlight->backlight.brightness_max = length / sizeof(u32);
> 
> and then loop through the array with:
> 
> for (i = 0; i <=  pwm_backlight->backlight.brightness_max; i++)
> 
> to find the max of the array.
> 
> I think the '<=' should be a '<' otherwise you access an uninitialized value
> one past the end of the array; this actually does not directly crash barebox
> but the whole brightness values are scaled wrong.

Yes, you're right. Can you send a patch for this?

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
