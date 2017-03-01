Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ciyIq-0001uU-2W
 for barebox@lists.infradead.org; Wed, 01 Mar 2017 07:04:02 +0000
Date: Wed, 1 Mar 2017 08:03:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170301070336.watqbdjpohdtkc6j@pengutronix.de>
References: <20170228143127.2945-1-bst@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170228143127.2945-1-bst@pengutronix.de>
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
Subject: Re: [PATCH v2 0/4] Prepare consoles, add fb flush and Solomon
 SSD1307 OLED controller support
To: Bastian Stender <bst@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Feb 28, 2017 at 03:31:23PM +0100, Bastian Stender wrote:
> Changes since last version:
> 
> console: replace set_active by open/close
>   - use a counter rather than flags
>   - inrease counter independent of the presence of the cdev->open() hook
> 
> console: expose consoles in devfs
>   - test for presence before using flush hook
> 
> video: add support for Solomon SSD1307 OLED controller family
>   - remove pwm dependency and SSD1307 compatibility
>   - use tabs and spaces consistently
>   - remove unnecessary 'struct ssd1307fb_par'
>   - remove unnecessary xzalloc check
>   - bail out if any of the *required* device tree properties are missing
>   - replace errno on gpio failure with error string
>   - remove obsolete printk include
> 
> Bastian Stender (4):
>   console: replace set_active by open/close
>   console: expose consoles in devfs
>   fb: introduce flush for virtual framebuffer
>   video: add support for Solomon SSD1307 OLED controller family

Applied, thanks

Sascha

> 
>  commands/fbtest.c         |   1 +
>  common/console.c          |  99 +++++++-
>  drivers/video/Kconfig     |   4 +
>  drivers/video/Makefile    |   1 +
>  drivers/video/fb.c        |  26 +++
>  drivers/video/fbconsole.c |  31 ++-
>  drivers/video/ssd1307fb.c | 566 ++++++++++++++++++++++++++++++++++++++++++++++
>  include/console.h         |  10 +-
>  include/fb.h              |   2 +
>  net/netconsole.c          |  27 ++-
>  10 files changed, 744 insertions(+), 23 deletions(-)
>  create mode 100644 drivers/video/ssd1307fb.c
> 
> -- 
> 2.11.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
