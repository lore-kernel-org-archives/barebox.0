Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA8v8-0006lU-0o
 for barebox@lists.infradead.org; Tue, 17 Sep 2019 08:33:11 +0000
Date: Tue, 17 Sep 2019 10:33:08 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20190917083308.y7xfqlmav3k4ecyy@pengutronix.de>
References: <20190917080126.2sp36vixvfvlmvtk@pengutronix.de>
 <20190917080956.16100-2-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190917080956.16100-2-u.kleine-koenig@pengutronix.de>
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
Subject: Re: [PATCH 2/2] Documentation: make gen_commands helper python3
 compatible
To: barebox@lists.infradead.org
Cc: Stefan Lengfeld <contact@stefanchrist.eu>

On Tue, Sep 17, 2019 at 10:09:56AM +0200, Uwe Kleine-K=F6nig wrote:
> On some machines the python command is provided by Python 3 while on
> most (at least in my bubble) it is still Python 2. Modify the code to
> make it usable by both Python versions.
> =

> print_function is available in __future__ since Python 2.6.0a2, which
> shouldn't be a relevant restriction.
> =

> The modified script generates the same documentation as the old one;
> independent if the script is called using Python 2 (here: 2.7.16) or
> Python 3 (here: 3.7.3).
> =

> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> ---
>  Documentation/gen_commands.py | 30 ++++++++++++++++++------------
>  1 file changed, 18 insertions(+), 12 deletions(-)
> =

> diff --git a/Documentation/gen_commands.py b/Documentation/gen_commands.py
> index 6251b4f22ed9..ff07ee0297f1 100755
> --- a/Documentation/gen_commands.py
> +++ b/Documentation/gen_commands.py
> @@ -1,5 +1,7 @@
>  #!/usr/bin/python
>  =

> +from __future__ import print_function
> +
>  import errno
>  import os
>  import re
> @@ -28,10 +30,15 @@ CONT =3D re.compile(r"""\s*"(.*?)"\s*\)?\s*$""")
>  =

>  CMDS =3D {}
>  =

> +def string_escape(s):
> +  # This used to do s.decode("string_escape") which isn't available on P=
ython 3.
> +  # Actually we only need to drop '\t', so do this here.
> +  return s.replace(r'\t', '')

I just found a change in my working copy that didn't make it into my
patch:

-  # Actually we only need to drop '\t', so do this here.
-  return s.replace(r'\t', '')
+  # Actually we only need to drop '\t' and '\n', so do this here.
+  return s.replace(r'\t', '').replace(r'\n', '')

With this the claim that the generated code is identical actually holds.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
