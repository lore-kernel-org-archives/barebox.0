Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fT17V-0003XI-8x
 for barebox@lists.infradead.org; Wed, 13 Jun 2018 08:27:10 +0000
Date: Wed, 13 Jun 2018 10:26:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180613082654.5ssxab7jh6iubn72@pengutronix.de>
References: <20180611080229.7591-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180611080229.7591-1-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH] Documentation: use https for Pengutronix services
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Jun 11, 2018 at 10:02:29AM +0200, Uwe Kleine-K=F6nig wrote:
> Also adapt the links to git.pengutronix.de to use the cgit URLs instead t=
he
> old gitweb ones.
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---

Applied, thanks

Sascha

>  Documentation/user/barebox.rst      | 4 ++--
>  Documentation/user/bootchooser.rst  | 2 +-
>  Documentation/user/system-setup.rst | 2 +-
>  README                              | 2 +-
>  4 files changed, 5 insertions(+), 5 deletions(-)
> =

> diff --git a/Documentation/user/barebox.rst b/Documentation/user/barebox.=
rst
> index 1203c10cd145..82a33a3219a2 100644
> --- a/Documentation/user/barebox.rst
> +++ b/Documentation/user/barebox.rst
> @@ -11,7 +11,7 @@ the suffix (for example 2014.06.1).
>  =

>  All releases can be downloaded from:
>  =

> -http://www.barebox.org/download/
> +https://www.barebox.org/download/
>  =

>  Development versions of barebox are accessible via Git. A local reposito=
ry clone
>  can be checked out as follows:
> @@ -39,7 +39,7 @@ you can look at the ``next`` branch:
>    $ git checkout -b next origin/remotes/next
>  =

>  A web interface to the repository is available at
> -http://git.pengutronix.de/?p=3Dbarebox.git.
> +https://git.pengutronix.de/cgit/barebox
>  =

>  .. _configuration:
>  =

> diff --git a/Documentation/user/bootchooser.rst b/Documentation/user/boot=
chooser.rst
> index 9a75afbf5e36..05725d8f21b5 100644
> --- a/Documentation/user/bootchooser.rst
> +++ b/Documentation/user/bootchooser.rst
> @@ -76,7 +76,7 @@ In case only the booted system itself knows when it is =
in a good state, the
>  barebox-state tool from the dt-utils_ package can be used to reset the
>  ``remaining_attempts`` counter from the running system.
>  =

> -.. _dt-utils: http://git.pengutronix.de/?p=3Dtools/dt-utils.git;a=3Dsumm=
ary
> +.. _dt-utils: https://git.pengutronix.de/cgit/tools/dt-utils
>  =

>  General Bootchooser Options
>  ---------------------------
> diff --git a/Documentation/user/system-setup.rst b/Documentation/user/sys=
tem-setup.rst
> index 7e4a7669a8fe..f0598bc2b56d 100644
> --- a/Documentation/user/system-setup.rst
> +++ b/Documentation/user/system-setup.rst
> @@ -29,7 +29,7 @@ A good alternative terminal program is microcom. On Deb=
ian it can be installed
>  with ``apt-get install microcom``, on other distributions it can be inst=
alled
>  from source:
>  =

> -http://git.pengutronix.de/?p=3Dtools/microcom.git;a=3Dsummary
> +https://git.pengutronix.de/cgit/tools/microcom
>  =

>  Usage is simple::
>  =

> diff --git a/README b/README
> index 3862f6091e4d..690b3141c2f5 100644
> --- a/README
> +++ b/README
> @@ -217,7 +217,7 @@ are the release rules:
>    necessary, this is the scheme we follow.
>  =

>  - Only the monthly releases are archived on the web site. The tarballs
> -  are located in http://www.barebox.org/download/ and this location
> +  are located in https://www.barebox.org/download/ and this location
>    does never change, in order to make life easier for distribution
>    people.
>  =

> -- =

> 2.17.1
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
