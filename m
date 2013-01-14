Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo5.mail-out.ovh.net ([178.33.45.10]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Tul5J-0008Oo-2s
 for barebox@lists.infradead.org; Mon, 14 Jan 2013 14:32:23 +0000
Received: from mail439.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 1D0E4FFAD18
 for <barebox@lists.infradead.org>; Mon, 14 Jan 2013 15:41:51 +0100 (CET)
Date: Mon, 14 Jan 2013 15:30:51 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130114143051.GC22953@game.jcrosoft.org>
References: <cover.1358127379.git.d.mierswa@phytec.de>
 <315822d6c1eb34af01e0047077f6fd1855dc6265.1358127379.git.d.mierswa@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <315822d6c1eb34af01e0047077f6fd1855dc6265.1358127379.git.d.mierswa@phytec.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 4/4] graphic_utils: always initialize offscreenbuf member
To: Daniel Mierswa <d.mierswa@phytec.de>
Cc: barebox@lists.infradead.org

On 02:54 Mon 14 Jan     , Daniel Mierswa wrote:
> If offscreen was not passed to the function the resulting
> offscreenbuf was a dangling pointer and the free() call
> in fd_close would result in undefined behaviour.
> 
> Signed-off-by: Daniel Mierswa <d.mierswa@phytec.de>
> ---
>  lib/gui/graphic_utils.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/lib/gui/graphic_utils.c b/lib/gui/graphic_utils.c
> index 3800ee2..79200de 100644
> --- a/lib/gui/graphic_utils.c
> +++ b/lib/gui/graphic_utils.c
> @@ -226,6 +226,8 @@ int fb_open(const char * fbdev, struct screen *sc, bool offscreen)
>  		 * on the framebuffer
>  		 */
>  		sc->offscreenbuf = malloc(sc->fbsize);
> +	} else {
> +		sc->offscreenbuf = NULL;
>  	}
no you do not touch the struct if we do not ask you a offscreen

the one that call fb_open need to init the struct screen

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
