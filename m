Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x232.google.com ([2a00:1450:4010:c04::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WkEi5-0004EA-MC
 for barebox@lists.infradead.org; Tue, 13 May 2014 15:33:42 +0000
Received: by mail-lb0-f178.google.com with SMTP id w7so411725lbi.23
 for <barebox@lists.infradead.org>; Tue, 13 May 2014 08:33:18 -0700 (PDT)
Date: Tue, 13 May 2014 19:44:12 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140513194412.511dcdb932138aa0dcb14d46@gmail.com>
In-Reply-To: <20140513134228.GQ5858@pengutronix.de>
References: <20140513134228.GQ5858@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: barebox Documentation
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, 13 May 2014 15:42:28 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> Hi,
> =

> As we all know the barebox documentation sucks. We @Pengutronix will
> have our internal techweek next month. One of the goals will be to
> improve the documentation situation for barebox.
> =

> What are your opinions in which form the documentation should be?
> =

> We currently have plain text files under Documentation/, a wiki on
> http://wiki.barebox.org/doku.php and doxygen. None of the documentation
> sets is complete and all are outdated.
> =

> Some pros and cons of the existing approaches are:
> =

> Plain text files
> + Easy to write
> + no extra step to generate docs, wysiwyg ;)
> - no links
> - no pictures
> =

> Wiki
> - not contained in the repository, so may be out of sync

http://en.wikipedia.org/wiki/Gitit_%28software%29 ?

> + links
> + nice markup language
>
> doxygen
> + contained in the repository
> + easy html doc generation
> + links
> - extra step to generate the docs

- not trivail board documentation adding (e.g. there is Documentation/board=
s.dox, and
there is arch/arm/mach-omap/arch-omap.dox too)

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
