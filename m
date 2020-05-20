Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbIBW-0006VC-Ft
 for barebox@lists.infradead.org; Wed, 20 May 2020 06:26:35 +0000
Date: Wed, 20 May 2020 08:26:32 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20200520062632.hfbmedgtofv6y665@pengutronix.de>
References: <20200520035555.84422-1-dgienda125@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200520035555.84422-1-dgienda125@gmail.com>
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
Subject: Re: [PATCH] password: Fix warning with empty default password
To: David Dgien <dgienda125@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, May 19, 2020 at 11:55:55PM -0400, David Dgien wrote:
> When CONFIG_PASSWORD_DEFAULT is unset, the default_passwd buffer is set

I assume you mean "If CONFIG_PASSWORD_DEFAULT is set to an empty
string".

> to the empty string. The read_default_passwd() function wants to read at
> least two characters from that buffer, causing GCC to generate an array
> bounds warning.

I cannot reproduce that warning. Which gcc version do you use and on
which platform? Mentioning the exact warning in the commit log helps
finding the resulting commit when searching for a fix.

> Make the default_passwd buffer have at least 2 bytes so
> this warning is not generated.
> =

> Since the read_default_passwd() function is only called when
> default_passwd is not the empty string, this is not a functional change.

I don't understand the problem for the empty password. With
default_passwd =3D "" we have strlen(default_passwd) =3D 0 so the for loop
doesn't run at all.

As I understand the code (at commit c10b20dc83ac) for uneven lengths of
default_passwd the last accessed byte is the trailing '\0' and for even
length it's the byte before the trailing '\0'. This should be ok?!

Am I missing something?

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
