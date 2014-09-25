Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XX3Gv-000128-4u
 for barebox@lists.infradead.org; Thu, 25 Sep 2014 07:15:25 +0000
Date: Thu, 25 Sep 2014 09:15:02 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20140925071502.GK3755@pengutronix.de>
References: <1411564870-6987-1-git-send-email-eric@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1411564870-6987-1-git-send-email-eric@eukrea.com>
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
Subject: Re: [PATCH] commands/digest: add verify support
To: Eric =?iso-8859-1?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

Hello Eric,

On Wed, Sep 24, 2014 at 03:21:10PM +0200, Eric B=E9nard wrote:
> From: Hubert Feurstein <h.feurstein@gmail.com>
> =

> Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>
> [EB]: reworked based on Sascha's comments and tested with md5sum
> Signed-off-by: Eric B=E9nard <eric@eukrea.com>
> ---
>  commands/digest.c | 120 ++++++++++++++++++++++++++++++++++++++++++++++++=
+-----
>  1 file changed, 110 insertions(+), 10 deletions(-)
> =

> diff --git a/commands/digest.c b/commands/digest.c
> index 092fda2..2a982e5 100644
> --- a/commands/digest.c
> +++ b/commands/digest.c
> @@ -23,26 +23,99 @@
>  #include <fcntl.h>
>  #include <errno.h>
>  #include <xfuncs.h>
> +#include <libfile.h>
>  #include <malloc.h>
>  #include <digest.h>
> +#include <linux/ctype.h>
> +#include <getopt.h>
> +
> +static inline unsigned char parse_hexchar(char c)
> +{
> +	if (!isxdigit(c))
> +		return 0;
> +
> +	return isdigit(c) ? (c - '0') : ((islower(c) ? toupper(c) : c) - 'A' + =
0xA);
Probably this is fine in barebox and also the check for isxdigit above
should make it save, but in general this approach might result in
surprises. In general isdigit et al are 1) locale dependant and 2) all
take an unsigned char (or EOF).

(Using Python here, but the same applies to C code obviously.)

With LC_ALL=3Dde_DE LANG=3Dde_DE the first fact yields:

$ python
Python 2.7.7 (default, Jun  3 2014, 16:16:56) =

[GCC 4.8.3] on linux2
Type "help", "copyright", "credits" or "license" for more information.
>>> import locale
>>> locale.setlocale(locale.LC_ALL, '')
'de_DE'
>>> print '=C4'.isupper()
True

The problem with unsigned is that

	ispunct('\xfc')

might result in checking -4 which is undefined.

This obviously only applies to platforms where char is implicitly
signed (According to https://wiki.debian.org/ArchitectureSpecificsMemo
this includes x86 and mips.)

So I'd suggest to check the ASCII-values explicitly, something like:

	switch (c) {
	case '0'..'9':
		return c - '0';
		break;
	case 'a'..'f':
		return c - 'a' + 0xa;
		break;
	case 'A'..'F':
		return c - 'A' + 0xa;
		break;
	default:
		return 0;
		break;
	}

to be on the safe side and to also be able to use the code in userspace.
(But note this is even safe EBCDIC machines, but only because we're
using only the letters up to 'f'. 'j' - 'a' is 16 there. :-)

Best regards
Uwe, the pedantic

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
