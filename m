Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZEXCp-0004oL-Gm
 for barebox@lists.infradead.org; Mon, 13 Jul 2015 06:27:11 +0000
Date: Mon, 13 Jul 2015 08:26:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150713062648.GD18700@pengutronix.de>
References: <1436695632-20270-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1436695632-20270-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] fixup! WIP: video: implement quick-n-dirty framebuffer
 console
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Antony,

On Sun, Jul 12, 2015 at 01:07:12PM +0300, Antony Pavlov wrote:
> ---
> Sascha moved fbconsole registration to common fb code.
> So we can drop this supefluous code.
> ---
>  drivers/video/sdl.c | 7 +------
>  1 file changed, 1 insertion(+), 6 deletions(-)

Squashed this into the fbconsole patch. Also I applied the patch I just
sent to the list which adds a fb_create_screen function which creates
a screen from a struct fb_info *. With this we get rid of the hardcoded
opening of /dev/fb0.

What's missing now is that fbc_set_active() should check the flags
argument and actually disable the fbconsole and free the resources.

Also I'm not sure if the framebuffer should be activated when the
framebuffer console is activated. While this is convenient for the
user we get into a reference counting problem. What if the framebuffer
was activated before the fbconsole? Should we skip enabling the
framebuffer in this case? When disabling the fbconsole then we must
now if the fbconsole code activated the framebuffer and only then
disable the framebuffer again.

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
