Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ven32-0004x4-K1
 for barebox@lists.infradead.org; Fri, 08 Nov 2013 14:28:33 +0000
Date: Fri, 8 Nov 2013 15:28:11 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131108142811.GW24559@pengutronix.de>
References: <1383869592-25268-1-git-send-email-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1383869592-25268-1-git-send-email-u.kleine-koenig@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] blspec: fix documention of blspec_scan_directory's
 return code
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Nov 08, 2013 at 01:13:12AM +0100, Uwe Kleine-K=F6nig wrote:
> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

Applied, thanks

Sascha

> ---
>  common/blspec.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> =

> diff --git a/common/blspec.c b/common/blspec.c
> index 095809b..2244d5a 100644
> --- a/common/blspec.c
> +++ b/common/blspec.c
> @@ -135,8 +135,7 @@ static int blspec_have_entry(struct blspec *blspec, c=
onst char *path)
>   *
>   * Given a root path collects all blspec entries found under /blspec/ent=
ries/.
>   *
> - * returns 0 if at least one entry could be successfully loaded, negative
> - * error value otherwise.
> + * returns the number of entries found or a negative error value otherwi=
se.
>   */
>  int blspec_scan_directory(struct blspec *blspec, const char *root)
>  {
> -- =

> 1.8.4.rc3
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
