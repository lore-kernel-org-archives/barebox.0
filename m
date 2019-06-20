Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he3rk-0007Wj-Qx
 for barebox@lists.infradead.org; Thu, 20 Jun 2019 20:41:06 +0000
Date: Thu, 20 Jun 2019 22:41:01 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20190620204101.GB12106@ravnborg.org>
References: <20190620082509.20605-1-antonynpavlov@gmail.com>
 <20190620085421.GA26493@ravnborg.org>
 <20190620142945.mxvvrslfz6vp2wkn@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190620142945.mxvvrslfz6vp2wkn@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2] treewide: remove CONFIG_DEBUG_INFO from defconfigs
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Oleksij Rempel <o.rempel@pengutronix.de>

Hi Sascha.

On Thu, Jun 20, 2019 at 04:29:45PM +0200, Sascha Hauer wrote:
> On Thu, Jun 20, 2019 at 10:54:21AM +0200, Sam Ravnborg wrote:
> > Hi Antony
> > 
> > On Thu, Jun 20, 2019 at 11:25:09AM +0300, Antony Pavlov wrote:
> > > The commit b917f7864115a35 ("remove CONFIG_DEBUG_INFO")
> > > has dropped Kconfig DEBUG_INFO option however we
> > > still have very many DEBUG_INFO mentions in defconfig
> > > files. Drop them using sed:
> > > 
> > >   find -iname '*defconfig' -type f -exec \
> > >       sed -i "/CONFIG_DEBUG_INFO=y/d" {} ';'
> > Another approach could be to regenerate all defconfigs.
> > A little scripting around savedefconfig should do it.
> > 
> > Then we would get rid of all obsolete symbols in one go - for all
> > defconfigs.
> > 
> > The generated defconfig would be the one that people would be using
> > anyway, so there should be only a little risk to introduce new issues
> > doing it this way.
> > 
> > Willing to try this approcah - maybe across all architectures?
> 
> I once thought the same and came up with this little thing:
> 
> #!/bin/bash
> 
> for a in arch/*; do
>         arch=$(basename $a)
>         for c in $a/configs/*; do
>                 config=$(basename $c)
> 		export ARCH=$arch
> 		make $config && make savedefconfig && mv defconfig $c
>         done
> done
> 
> Just tested, still works. Maybe I should just run this from time to time
> and commit the result. What do you think?
Me like.
Much better than removing individual CONFIG symbols.
The diff is not scary:

84 files changed, 38 insertions(+), 129 deletions(-)

Maybe part of your release scripts - then you could evaluate
if the changes are worth it?

Or maybe add the script to barebox so anyone could do it, when
they want to get rid of a symbol.
that would be better than sed scripts.
Actually I like the latter idea the best, then we could better
distribute the task and let anyone do it.
I'm a bit occupied, so hope someone else jumps to do it.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
