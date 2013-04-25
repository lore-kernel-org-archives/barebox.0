Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UVTHT-0002nw-BK
 for barebox@lists.infradead.org; Thu, 25 Apr 2013 21:00:40 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <ukl@pengutronix.de>) id 1UVTHR-000113-BY
 for barebox@lists.infradead.org; Thu, 25 Apr 2013 23:00:37 +0200
Received: from ukl by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <ukl@pengutronix.de>) id 1UVTHR-0005Zf-AG
 for barebox@lists.infradead.org; Thu, 25 Apr 2013 23:00:37 +0200
Date: Thu, 25 Apr 2013 23:00:37 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20130425210037.GR15233@pengutronix.de>
References: <1366894187-25299-1-git-send-email-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1366894187-25299-1-git-send-email-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH] of: fix how an initrd is passed to Linux
To: barebox@lists.infradead.org

On Thu, Apr 25, 2013 at 02:49:47PM +0200, Uwe Kleine-K=F6nig wrote:
> Linux expects linux,initrd-end to contain the first unused address. As
> this doesn't match the end semantic used by barebox (i.e. end contains
> the last used address) adding one is necessary.
> =

> Without this change Linux fails for me to correctly extract a gzipped
> cpio archive provided as initrd.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  drivers/of/base.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index d22031f..6cb5521 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -1078,6 +1078,10 @@ int of_device_is_stdout_path(struct device_d *dev)
>   *
>   * Add initrd properties to the devicetree, or, if end is 0,
>   * delete them.
> + *
> + * Note that Linux interprets end differently than Barebox. For Linux en=
d points
> + * to the first address after the memory occupied by the image while bar=
ebox
> + * lets end pointing the the last occupied byte.
The first "the" in the line above should be a "to". Sascha: Assuming you
are happy with the patch: Can you fix this up while committing?

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
