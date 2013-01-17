Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo5.mail-out.ovh.net ([178.33.111.247]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Tvo6U-0004r8-97
 for barebox@lists.infradead.org; Thu, 17 Jan 2013 11:57:56 +0000
Received: from mail434.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 601EDFFA7F9
 for <barebox@lists.infradead.org>; Thu, 17 Jan 2013 13:07:29 +0100 (CET)
Date: Thu, 17 Jan 2013 12:56:25 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130117115625.GE22953@game.jcrosoft.org>
References: <cover.1358400153.git.d.mierswa@phytec.de>
 <6bf1089855588c8d227009989b54c826ac8e245e.1358400153.git.d.mierswa@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6bf1089855588c8d227009989b54c826ac8e245e.1358400153.git.d.mierswa@phytec.de>
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
Subject: Re: [PATCH 4/4] video/imx: always initialize offscreenbuf member
To: Daniel Mierswa <d.mierswa@phytec.de>
Cc: barebox@lists.infradead.org

On 07:32 Thu 17 Jan     , Daniel Mierswa wrote:
> If offscreen was not passed to fd_open the resulting offscreenbuf
> member was a dangling pointer and the free() call in fd_close
> would result in undefined behaviour.
> 
> Signed-off-by: Daniel Mierswa <d.mierswa@phytec.de>
> ---
>  commands/splash.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/commands/splash.c b/commands/splash.c
> index 4cc463e..75c7074 100644
> --- a/commands/splash.c
> +++ b/commands/splash.c
> @@ -59,6 +59,14 @@ static int do_splash(int argc, char *argv[])
>  		return 1;
>  	}
>  
> +	/*
> +	 * sc.offscreenbuf is dangling here, if no offscreen buffer was
> +	 * requested, so set it to NULL otherwise the free in fd_close
> +	 * will cause undefined behaviour
> +	 */
> +	if (!offscreen)
> +		sc.offscreenbuf = NULL;
> +
NAck

this is already done by memset

Best Regards,
J.
>  	if (sc.offscreenbuf) {
>  		if (do_bg)
>  			memset_pixel(&info, sc.offscreenbuf, bg_color,
> -- 
> 1.8.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
