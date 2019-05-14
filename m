Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQSum-00033U-I2
 for barebox@lists.infradead.org; Tue, 14 May 2019 08:36:02 +0000
Date: Tue, 14 May 2019 10:35:57 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20190514083556.yxzo5mjccpx2rikf@pengutronix.de>
References: <bafb7600-4351-2c80-d78f-35d59ae559ba@pengutronix.de>
 <20190514021954.11834-1-gneukum1@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190514021954.11834-1-gneukum1@gmail.com>
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
Subject: Re: [PATCH] LICENSES: modify .gitignore files to be nonempty
To: Geordan Neukum <gneukum1@gmail.com>
Cc: barebox@lists.infradead.org, a.fatoum@pengutronix.de

On Tue, May 14, 2019 at 02:19:54AM +0000, Geordan Neukum wrote:
> The .gitignore files under the LICENSES/exceptions and LICENSES/other
> directories cannot have a size of 0 or else they are subject to removal
> by the make target 'distclean'. Modify the .gitignore files to
> ignore all files except for themselves. These .gitignores can be
> updated further or removed outright as new licenses are added to these
> directories in the future.
> =

> Signed-off-by: Geordan Neukum <gneukum1@gmail.com>
> ---
>  LICENSES/exceptions/.gitignore | 4 ++++
>  LICENSES/other/.gitignore      | 4 ++++
>  2 files changed, 8 insertions(+)
> =

> diff --git a/LICENSES/exceptions/.gitignore b/LICENSES/exceptions/.gitign=
ore
> index e69de29bb..d5e7eacf3 100644
> --- a/LICENSES/exceptions/.gitignore
> +++ b/LICENSES/exceptions/.gitignore
> @@ -0,0 +1,4 @@
> +# Ignore everything in this directory
> +*
> +# Except for this file
> +!.gitignore
> diff --git a/LICENSES/other/.gitignore b/LICENSES/other/.gitignore
> index e69de29bb..d5e7eacf3 100644
> --- a/LICENSES/other/.gitignore
> +++ b/LICENSES/other/.gitignore
> @@ -0,0 +1,4 @@
> +# Ignore everything in this directory
> +*

If you would add an empty line here, it would be harder to read the * in
the previous line as # which happend to me and made me misunderstand
this patch.

> +# Except for this file
> +!.gitignore

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
