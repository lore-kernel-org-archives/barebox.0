Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fT7vr-0001B4-Uj
 for barebox@lists.infradead.org; Wed, 13 Jun 2018 15:43:43 +0000
Date: Wed, 13 Jun 2018 17:43:16 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20180613154316.GA5463@ravnborg.org>
References: <20180613152644.12998-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180613152644.12998-1-u.kleine-koenig@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] scripts: gitignore += omap3-usb-loader
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Jun 13, 2018 at 05:26:44PM +0200, Uwe Kleine-K=F6nig wrote:
> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  scripts/.gitignore | 1 +
>  1 file changed, 1 insertion(+)
> =

> diff --git a/scripts/.gitignore b/scripts/.gitignore
> index 2a9ae6bdcf36..adcb4fe16b73 100644
> --- a/scripts/.gitignore
> +++ b/scripts/.gitignore
> @@ -25,4 +25,5 @@ mk-am35xx-spi-image
>  mxsimage
>  mxsboot
>  mxs-usb-loader
> +/omap3-usb-loader

Was it on purpose that a "/" was added?

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
