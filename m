Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZS47V-0002Dn-OR
 for barebox@lists.infradead.org; Wed, 19 Aug 2015 14:13:38 +0000
Date: Wed, 19 Aug 2015 16:13:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150819141315.GE18700@pengutronix.de>
References: <1439369205-26787-1-git-send-email-l.stach@pengutronix.de>
 <1439369205-26787-4-git-send-email-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1439369205-26787-4-git-send-email-l.stach@pengutronix.de>
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
Subject: Re: [PATCH 4/4] video: backlight: add fallbacks for client functions
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Aug 12, 2015 at 10:46:45AM +0200, Lucas Stach wrote:
> Add empty static inline function fallbacks if backlight support
> is not enabled, so that drivers using the backlight don't fail to
> build.
> 
> Fixes:
> In function `simple_panel_ioctl':
> undefined reference to `of_backlight_find'
> undefined reference to `backlight_set_brightness_default'
> undefined reference to `backlight_set_brightness'
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  include/video/backlight.h | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)

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
