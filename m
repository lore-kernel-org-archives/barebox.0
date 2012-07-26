Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SuLXm-00028h-7B
 for barebox@lists.infradead.org; Thu, 26 Jul 2012 10:43:48 +0000
Date: Thu, 26 Jul 2012 12:43:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120726104343.GQ30009@pengutronix.de>
References: <1343227325-28925-1-git-send-email-t.gamez@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1343227325-28925-1-git-send-email-t.gamez@phytec.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCHv2] defaultenv-2: Add bootargs for booting from disk
To: Teresa =?iso-8859-15?Q?G=E1mez?= <t.gamez@phytec.de>
Cc: barebox@lists.infradead.org

On Wed, Jul 25, 2012 at 04:42:05PM +0200, Teresa G=E1mez wrote:
> Add support in defaultenv-2 for booting from disk (SD-Card, USB-Stick).
> =

> Signed-off-by: Teresa G=E1mez <t.gamez@phytec.de>

Applied, thanks

  Sascha

> ---
> Fixed since v1:
> 	- spell fix
> 	- added return value on failure
> =

>  defaultenv-2/base/bin/bootargs-root-disk |   26 ++++++++++++++++++++++++=
++
>  1 files changed, 26 insertions(+), 0 deletions(-)
>  create mode 100644 defaultenv-2/base/bin/bootargs-root-disk
> =

> diff --git a/defaultenv-2/base/bin/bootargs-root-disk b/defaultenv-2/base=
/bin/bootargs-root-disk
> new file mode 100644
> index 0000000..df8750e
> --- /dev/null
> +++ b/defaultenv-2/base/bin/bootargs-root-disk
> @@ -0,0 +1,26 @@
> +#!/bin/sh
> +
> +usage=3D"$0 [OPTIONS]\n -p <partition>\n -t <fstype>"
> +
> +while getopt "p:t:h" opt; do
> +	if [ ${opt} =3D p ]; then
> +		part=3D${OPTARG}
> +	elif [ ${opt} =3D t ]; then
> +		fstype=3D${OPTARG}
> +	elif [ ${opt} =3D h ]; then
> +		echo -e "$usage"
> +		exit 0
> +	fi
> +done
> +
> +if [ -z "${part}" ]; then
> +	echo "$0: no partition given"
> +	exit 1
> +fi
> +
> +if [ -z "${fstype}" ]; then
> +	echo "$0: no filesystem type given"
> +	exit 1
> +fi
> +
> +global.linux.bootargs.root=3D"root=3D/dev/$part rootfstype=3D$fstype roo=
twait"
> -- =

> 1.7.0.4
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
