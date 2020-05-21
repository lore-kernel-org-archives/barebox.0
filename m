Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbbUL-0008Tz-VH
 for barebox@lists.infradead.org; Thu, 21 May 2020 03:03:20 +0000
Received: by mail-qk1-x743.google.com with SMTP id m11so5959677qka.4
 for <barebox@lists.infradead.org>; Wed, 20 May 2020 20:03:17 -0700 (PDT)
Date: Wed, 20 May 2020 23:04:56 -0400
From: David Dgien <dgienda125@gmail.com>
Message-ID: <20200521030456.GB111592@fizzbox.localdomain>
References: <20200520035555.84422-1-dgienda125@gmail.com>
 <20200520062632.hfbmedgtofv6y665@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200520062632.hfbmedgtofv6y665@pengutronix.de>
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
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org

Hello

On Wed, May 20, 2020 at 08:26:32AM +0200, Uwe Kleine-K=F6nig wrote:
> On Tue, May 19, 2020 at 11:55:55PM -0400, David Dgien wrote:
> > When CONFIG_PASSWORD_DEFAULT is unset, the default_passwd buffer is set
> =

> I assume you mean "If CONFIG_PASSWORD_DEFAULT is set to an empty
> string".

Yes.

> =

> > to the empty string. The read_default_passwd() function wants to read at
> > least two characters from that buffer, causing GCC to generate an array
> > bounds warning.
> =

> I cannot reproduce that warning. Which gcc version do you use and on
> which platform? Mentioning the exact warning in the commit log helps
> finding the resulting commit when searching for a fix.

arm-none-eabi-gcc --version prints "arm-none-eabi-gcc (Arch Repository)
10.1.0"
I found the issue when building for rpi_defconfig and
vexpress_defconfig.

The warning I get when building from master (commit c10b20dc83ac):

barebox/common/password.c: In function 'login':
barebox/common/password.c:173:5: warning: array subscript [1, 2147483647] i=
s outside array bounds of 'const char[1]' [-Warray-bounds]
  173 |   c =3D buf[i];
      |   ~~^~~~~~~~
In file included from barebox/common/password.c:30:
include/generated/passwd.h:1:19: note: while referencing 'default_passwd'
    1 | static const char default_passwd[] =3D "";
      |                   ^~~~~~~~~~~~~~

I guess the compiler doesn't know that strlen(default_passwd) =3D 0, just
that length > 0 so the most it can assume is that the loop has to
consume at least two chars, and the empty string only contains one.

> =

> > Make the default_passwd buffer have at least 2 bytes so
> > this warning is not generated.
> > =

> > Since the read_default_passwd() function is only called when
> > default_passwd is not the empty string, this is not a functional change.
> =

> I don't understand the problem for the empty password. With
> default_passwd =3D "" we have strlen(default_passwd) =3D 0 so the for loop
> doesn't run at all.

Yes, that's correct, which is one reason why this is not functionally
different. But the compiler doesn't seem to be smart enough to know
that.

> =

> As I understand the code (at commit c10b20dc83ac) for uneven lengths of
> default_passwd the last accessed byte is the trailing '\0' and for even
> length it's the byte before the trailing '\0'. This should be ok?!
> =

> Am I missing something?

When working on this reply, I realized there was another solution I
missed when I was trying to find ways to short-circut the compiler
previously. If I add:

if (ARRAY_SIZE(default_passwd) =3D=3D 1)
	return -ENOSYS;

in the read_default_passwd() function, that would short-circut the
compiler preventing the warning message, and is less hacky. I can
resubmit with that change instead.

> =

> Best regards
> Uwe
> =

> -- =

> Pengutronix e.K.                           | Uwe Kleine-K=F6nig          =
  |
> Industrial Linux Solutions                 | https://www.pengutronix.de/ |

Thanks,
David Dgien

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
