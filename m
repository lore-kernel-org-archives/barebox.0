Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eAWmZ-00044P-9S
 for barebox@lists.infradead.org; Fri, 03 Nov 2017 07:52:53 +0000
Date: Fri, 3 Nov 2017 08:52:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20171103075228.tjkn7ywbg7prrzmr@pengutronix.de>
References: <20171101160226.29142-1-nikita.yoush@cogentembedded.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20171101160226.29142-1-nikita.yoush@cogentembedded.com>
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
Subject: Re: [PATCH] 2d-primitives: fix typos in function names in comments
To: Nikita Yushchenko <nikita.yoush@cogentembedded.com>
Cc: barebox@lists.infradead.org, Chris Healy <cphealy@gmail.com>

On Wed, Nov 01, 2017 at 07:02:26PM +0300, Nikita Yushchenko wrote:
> This fixes gl_* -> gu_* in several places.
> 
> Reported-by: Chris Healy <cphealy@gmail.com>
> Signed-off-by: Nikita Yushchenko <nikita.yoush@cogentembedded.com>
> ---
>  lib/gui/2d-primitives.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/lib/gui/2d-primitives.c b/lib/gui/2d-primitives.c
> index 89acc092d..82e59d9a6 100644
> --- a/lib/gui/2d-primitives.c
> +++ b/lib/gui/2d-primitives.c
> @@ -72,7 +72,7 @@ static void draw_simple_line(struct screen *sc,
>  }
>  
>  /**
> - * gl_draw_line - draw a 2D dashed line between (x1, y1) and (x2,y2)
> + * gu_draw_line - draw a 2D dashed line between (x1, y1) and (x2,y2)
>   *
>   * @sc: screen to draw on
>   * @x1, @y1: first point defining the line
> @@ -80,7 +80,7 @@ static void draw_simple_line(struct screen *sc,
>   * @r, @g, @b, @a: line's color
>   * @dash: dash length (0 denotes solid line)
>   *
> - * gl_draw_line() implements integer version of Bresenham's algoritm
> + * gu_draw_line() implements integer version of Bresenham's algoritm
>   * as can be found here:
>   *
>   * http://www.idav.ucdavis.edu/education/GraphicsNotes/Bresenhams-Algorithm.pdf
> @@ -158,7 +158,7 @@ void gu_draw_line(struct screen *sc,
>  }
>  
>  /**
> - * gl_draw_circle - draw a 2D circle with center at (x0, y0)
> + * gu_draw_circle - draw a 2D circle with center at (x0, y0)
>   *
>   * @sc: screen to draw on
>   * @x0, @y0: coordinates of circle's center
> -- 
> 2.11.0
> 
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
