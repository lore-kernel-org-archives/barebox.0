Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2-g21.free.fr ([2a01:e0c:1:1599::11])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SmgOx-0000pM-MV
 for barebox@lists.infradead.org; Thu, 05 Jul 2012 07:23:02 +0000
Received: from eb-e6520 (unknown [82.240.38.71])
 by smtp2-g21.free.fr (Postfix) with ESMTP id 2BAAB4B0121
 for <barebox@lists.infradead.org>; Thu,  5 Jul 2012 09:22:48 +0200 (CEST)
Date: Thu, 5 Jul 2012 09:22:47 +0200
From: Eric =?ISO-8859-1?B?QuluYXJk?= <eric@eukrea.com>
Message-ID: <20120705092247.00cebe79@eb-e6520>
In-Reply-To: <1341472720-3248-3-git-send-email-s.hauer@pengutronix.de>
References: <1341472720-3248-1-git-send-email-s.hauer@pengutronix.de>
 <1341472720-3248-3-git-send-email-s.hauer@pengutronix.de>
Mime-Version: 1.0
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/3] defenv-2: Add usage information for bootargs scripts
To: barebox@lists.infradead.org

Hi Sascha,

Le Thu,  5 Jul 2012 09:18:39 +0200,
Sascha Hauer <s.hauer@pengutronix.de> a =E9crit :

> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  defaultenv-2/base/bin/bootargs-root-initrd |    7 ++++++-
>  defaultenv-2/base/bin/bootargs-root-jffs2  |   16 +++++++++++++++-
>  defaultenv-2/base/bin/bootargs-root-nfs    |    7 ++++++-
>  defaultenv-2/base/bin/bootargs-root-ubi    |   13 ++++++++++++-
>  4 files changed, 39 insertions(+), 4 deletions(-)
> =

> diff --git a/defaultenv-2/base/bin/bootargs-root-initrd b/defaultenv-2/ba=
se/bin/bootargs-root-initrd
> index 4c59625..7072cea 100644
> --- a/defaultenv-2/base/bin/bootargs-root-initrd
> +++ b/defaultenv-2/base/bin/bootargs-root-initrd
> @@ -2,9 +2,14 @@
>  =

>  rdinit=3D"/sbin/init"
>  =

> -while getopt "i:" opt; do
> +usage=3D"$0 [OPTIONS]\n -i <rdinitpath> (/sbin/init)"
> +
> +while getopt "i:h" opt; do
>  	if [ ${opt} =3D i ]; then
>  		rdinit=3D${OPTARG}
> +	elif [ ${opt} =3D h ]; then
> +		echo -e "$usage"
> +		exit 0
>  	fi
>  done
>  =

> diff --git a/defaultenv-2/base/bin/bootargs-root-jffs2 b/defaultenv-2/bas=
e/bin/bootargs-root-jffs2
> index db036da..ac9a4bd 100644
> --- a/defaultenv-2/base/bin/bootargs-root-jffs2
> +++ b/defaultenv-2/base/bin/bootargs-root-jffs2
> @@ -1,9 +1,23 @@
>  #!/bin/sh
>  =

> -while getopt "m:" opt; do
> +mtd=3D
> +
> +usage=3D"$0 [OPTIONS]\n -m <mtd>"
> +
> +while getopt "m:h" opt; do
>  	if [ ${opt} =3D m ]; then
>  		mtd=3D${OPTARG}
> +	elif [ ${opt} =3D h ]; then
> +		echo -e "$usage"
> +		exit 0
>  	fi
>  done
>  =

> +echo "huhu; $1"

is that huhu expected here ? ;-)

Eric

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
