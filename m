Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XCkZd-00085U-JX
 for barebox@lists.infradead.org; Thu, 31 Jul 2014 07:14:50 +0000
Date: Thu, 31 Jul 2014 09:14:25 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20140731071425.GQ6146@pengutronix.de>
References: <1406715606-6821-1-git-send-email-jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1406715606-6821-1-git-send-email-jbe@pengutronix.de>
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
Subject: Re: envfs: provide an intentional way to ignore an existing external
 environment
To: Juergen Borleis <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

Hello,

On Wed, Jul 30, 2014 at 12:20:03PM +0200, Juergen Borleis wrote:
> Some use cases are using the barebox's built-in environment only, but sti=
ll
> provide an external environment store to save a modified environment (for
> development purposes for example).
> In this case barebox works as intended even if the external store is empty
> and thus invalid. But even if it is an intentional behavior, barebox emit=
s an
> error message due to an invalid content in the external store (CRC error).
> =

> Because this error message will confuse a new user (how to know if this e=
rror
> message is important or can be ignored?) and it is a bad style to ship
> intentionally working systems with error messages, the following change s=
et
> adds an "empty environment" feature to barebox.
> =

> This change set adds a new option to the saveenv command which will write=
 an
> empty environment without content. But it will be marked as a placeholder=
 and
> thus should be "ignored" and barebox falls back to its built-in default
> environment.
> =

> With this feature we now get:
> =

>  - if the environment store is empty, we still see an error message and
>    barebox still falls back to its built-in default environment
>  - if the environment store contains the new placeholder environment, the=
re
>    will be no error message but barebox falls back to its built-in default
>    environment as well ("intentional behaviour")
>  - if the environment store contains a regular environment (modified comp=
ared
>    to the built-in one) barebox will continue to use it and ignores its
>    built-in default environment instead.

Compared with storing the default environment in the external store the
only difference is that you don't need to modify it if you change the
internal one, right?

I wonder what the targeted use case is. A rescue barebox to repair a
borken bootloader and/or environment? If so I'd implemented a different
solution: To make the rescue barebox completely independant from the
state of the hardware, introduce a config symbol (say NO_AUTOLOAD_ENV)
that makes barebox only use the default environment. With this you could
still explicitly load and save the external env.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
