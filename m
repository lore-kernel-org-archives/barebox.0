Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YiylW-0004ji-78
 for barebox@lists.infradead.org; Fri, 17 Apr 2015 05:24:34 +0000
Date: Fri, 17 Apr 2015 07:24:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150417052412.GB6325@pengutronix.de>
References: <1429052000-20647-1-git-send-email-sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1429052000-20647-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: Re: [PATCH v2 0/6] Introduce deferred probing
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Apr 15, 2015 at 12:53:14AM +0200, Sebastian Hesselbarth wrote:
> This is round two of the introduction of deferred probing by moving
> drivers that request probe deferral to an extra device list that will
> be re-probed later.
> 
> Compared to v1 there are the following changes:
> - Loop over deferred device list until none succeeds
>   (Suggested by Sascha Hauer)
> - (Now) properly deal with deferred probing in led-gpio
> - Free GPIOs claimed by leds on foo_led_unregister()
> - Convert Orion GPIO to real platform driver
> Each patch also contains an individual changelog.
> 
> It would be great to give this patch series a little more coverage.
> Also, several other subsystems could use some support -EPROBE_DEFER
> but IMHO we should wait for someone to actually force probe deferral
> there.
> 
> Sebastian Hesselbarth (6):
>   base: Introduce deferred probing
>   gpio: Return -EPROBE_DEFER on gpio_get_num()
>   OF: gpio: Silence error message on -EPROBE_DEFER
>   led: gpio: Properly deal with deferred probing
>   led: gpio: Free GPIOs on unregister()
>   gpio: orion: Convert to platform_driver

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
