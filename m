Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lAUPT-0007ri-9Y
 for barebox@lists.infradead.org; Fri, 12 Feb 2021 09:06:44 +0000
Date: Fri, 12 Feb 2021 10:06:40 +0100
Message-ID: <20210212090640.GK19583@pengutronix.de>
References: <20210210115807.4223-1-r.czerwinski@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210210115807.4223-1-r.czerwinski@pengutronix.de>
From: Sascha Hauer <sha@pengutronix.de>
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
Subject: Re: [PATCH 1/3] commands: readline: sort includes
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Feb 10, 2021 at 12:58:06PM +0100, Rouven Czerwinski wrote:
> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> ---
>  commands/readline.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> =

> diff --git a/commands/readline.c b/commands/readline.c
> index ef54b5e92f..426f579ee4 100644
> --- a/commands/readline.c
> +++ b/commands/readline.c
> @@ -1,11 +1,11 @@
>  // SPDX-License-Identifier: GPL-2.0-or-later
>  // SPDX-FileCopyrightText: =A9 2000-2003 Wolfgang Denk <wd@denx.de>, DEN=
X Software Engineering
>  =

> -#include <common.h>
>  #include <command.h>
> +#include <common.h>
> +#include <environment.h>
>  #include <malloc.h>
>  #include <xfuncs.h>
> -#include <environment.h>

I don't see much value in sorting includes, so I won't take this.
Applied the other ones, thanks

Sascha

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
