Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qc0-f172.google.com ([209.85.216.172])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Su2Tv-0004Ax-Vh
 for barebox@lists.infradead.org; Wed, 25 Jul 2012 14:22:36 +0000
Received: by qcac10 with SMTP id c10so521573qca.17
 for <barebox@lists.infradead.org>; Wed, 25 Jul 2012 07:22:29 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1343220907-28336-1-git-send-email-t.gamez@phytec.de>
References: <1343220907-28336-1-git-send-email-t.gamez@phytec.de>
From: Roberto Nibali <rnibali@gmail.com>
Date: Wed, 25 Jul 2012 16:22:09 +0200
Message-ID: <CAONxwYM7q_TsB3T93q6JsaLeU8sOB+Auy7yHVAZ-+vdkP0gHSw@mail.gmail.com>
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
Subject: Re: [PATCH] defaultenv-2: Add bootargs for booting from disk
To: =?ISO-8859-1?Q?Teresa_G=E1mez?= <t.gamez@phytec.de>
Cc: barebox@lists.infradead.org

Hi

On Wed, Jul 25, 2012 at 2:55 PM, Teresa G=E1mez <t.gamez@phytec.de> wrote:
> Add support in defaultenv-2 for booting from disk (SD-Card, USB-Stick).
>
> Signed-off-by: Teresa G=E1mez <t.gamez@phytec.de>
> ---
>  defaultenv-2/base/bin/bootargs-root-disk |   26 ++++++++++++++++++++++++=
++
>  1 files changed, 26 insertions(+), 0 deletions(-)
>  create mode 100644 defaultenv-2/base/bin/bootargs-root-disk
>
> diff --git a/defaultenv-2/base/bin/bootargs-root-disk b/defaultenv-2/base=
/bin/bootargs-root-disk
> new file mode 100644
> index 0000000..076afdf
> --- /dev/null
> +++ b/defaultenv-2/base/bin/bootargs-root-disk
> @@ -0,0 +1,26 @@
> +#!/bin/sh
> +
> +usage=3D"$0 [OPTIONS]\n -p <partition>\n -t <fstype>"
> +
> +while getopt "p:t:h" opt; do
> +       if [ ${opt} =3D p ]; then
> +               part=3D${OPTARG}
> +       elif [ ${opt} =3D t ]; then
> +               fstype=3D${OPTARG}
> +       elif [ ${opt} =3D h ]; then
> +               echo -e "$usage"
> +               exit 0
> +       fi
> +done
> +
> +if [ -z "${part}" ]; then
> +       echo "$0: no partiton given"

s/partiton/partition/

> +       exit
> +fi
> +
> +if [ -z "${fstype}" ]; then
> +       echo "$0: no filesystem type given"
> +       exit
> +fi
> +
> +global.linux.bootargs.root=3D"root=3D/dev/$part rootfstype=3D$fstype roo=
twait"

Looks fine otherwise, besides considering returning a non-zero return
value upon exit for errors.

Regards
Roberto

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
