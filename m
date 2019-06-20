Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he3YR-0000bS-6H
 for barebox@lists.infradead.org; Thu, 20 Jun 2019 20:21:08 +0000
Received: by mail-lf1-x141.google.com with SMTP id y198so3377431lfa.1
 for <barebox@lists.infradead.org>; Thu, 20 Jun 2019 13:21:06 -0700 (PDT)
Date: Thu, 20 Jun 2019 23:21:01 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20190620232101.087d7569dafe06ffdb514f22@gmail.com>
In-Reply-To: <20190620142945.mxvvrslfz6vp2wkn@pengutronix.de>
References: <20190620082509.20605-1-antonynpavlov@gmail.com>
 <20190620085421.GA26493@ravnborg.org>
 <20190620142945.mxvvrslfz6vp2wkn@pengutronix.de>
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
Subject: Re: [PATCH v2] treewide: remove CONFIG_DEBUG_INFO from defconfigs
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Sam Ravnborg <sam@ravnborg.org>, Oleksij Rempel <o.rempel@pengutronix.de>

On Thu, 20 Jun 2019 16:29:45 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Thu, Jun 20, 2019 at 10:54:21AM +0200, Sam Ravnborg wrote:
> > Hi Antony
> > =

> > On Thu, Jun 20, 2019 at 11:25:09AM +0300, Antony Pavlov wrote:
> > > The commit b917f7864115a35 ("remove CONFIG_DEBUG_INFO")
> > > has dropped Kconfig DEBUG_INFO option however we
> > > still have very many DEBUG_INFO mentions in defconfig
> > > files. Drop them using sed:
> > > =

> > >   find -iname '*defconfig' -type f -exec \
> > >       sed -i "/CONFIG_DEBUG_INFO=3Dy/d" {} ';'
> > Another approach could be to regenerate all defconfigs.
> > A little scripting around savedefconfig should do it.
> > =

> > Then we would get rid of all obsolete symbols in one go - for all
> > defconfigs.
> > =

> > The generated defconfig would be the one that people would be using
> > anyway, so there should be only a little risk to introduce new issues
> > doing it this way.
> > =

> > Willing to try this approcah - maybe across all architectures?
> =

> I once thought the same and came up with this little thing:

Hi!

I propose to add two error handling features:

> =

> #!/bin/bash


add 'set -e' here (or just use 'bash -e')

The -e option means "if any script command ever ends with a non-zero ('erro=
r') exit status, terminate the script immediately".

> =

> for a in arch/*; do
>         arch=3D$(basename $a)
>         for c in $a/configs/*; do
>                 config=3D$(basename $c)
> 		export ARCH=3D$arch
> 		make $config && make savedefconfig && mv defconfig $c

add 'echo $config' or use 'mv -i' instead of 'mv'. It is reasonable to see =
which config
file processing lead to error situation.

>         done
> done
> =

> Just tested, still works. Maybe I should just run this from time to time
> and commit the result. What do you think?

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
