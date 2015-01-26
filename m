Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YFeol-0002sX-6b
 for barebox@lists.infradead.org; Mon, 26 Jan 2015 08:14:43 +0000
Date: Mon, 26 Jan 2015 09:14:20 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150126081420.GH12209@pengutronix.de>
References: <1422195690-20676-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1422195690-20676-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [RFC] [JUST DEMO] commands: implement 'fbputs' command
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Sun, Jan 25, 2015 at 05:21:30PM +0300, Antony Pavlov wrote:
> Mainline barebox at the moment has no framebuffer
> console support.
> The 'fbputs' demo command displays a text string
> on fb device.
> 
> This quick-n-dirty patch demonstates that barebox
> framebuffer console can be easely realized.
> 
> I'm awaiting your comments!

Unfortunately real console support is not that simple, we would have to
parse ANSI escape sequences up to some point to make it generally usable.

Jean Christophe has framebuffer console patches, he'll probably comment
on this one aswell.
Personally I would be fine with your simple approach until real console
support arrives.

> +static void drawchar(struct screen *sc, int x, int y, char c)
> +{
> +	void *buf;
> +
> +	buf = gui_screen_redering_buffer(sc);
> +
> +	rgba_blend(&sc->info, chars[(int)c],
> +		buf, VIDEO_FONT_HEIGHT, VIDEO_FONT_WIDTH,
> +		VIDEO_FONT_WIDTH * x, VIDEO_FONT_HEIGHT * y, 1);

Is this performant enough? I would assume the whole character set should
be prerendered for the actual framebuffer format before printing a
string.

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
