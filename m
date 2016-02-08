Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aSgGH-0005A4-TO
 for barebox@lists.infradead.org; Mon, 08 Feb 2016 07:29:30 +0000
Date: Mon, 8 Feb 2016 08:29:07 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160208072907.GX4118@pengutronix.de>
References: <1454577103-30998-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1454577103-30998-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] drivers: video: fb: make locally used fb_set_shadowfb()
 static
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Feb 04, 2016 at 12:11:43PM +0300, Antony Pavlov wrote:
> The patch fixes this compiler's warning:
> 
>     drivers/video/fb.c:233:5: warning: no previous prototype for
>     'fb_set_shadowfb' [-Wmissing-prototypes]
>      int fb_set_shadowfb(struct param_d *p, void *priv)
>          ^
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  drivers/video/fb.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

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
