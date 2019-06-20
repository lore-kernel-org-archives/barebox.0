Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdy4X-00059v-4W
 for barebox@lists.infradead.org; Thu, 20 Jun 2019 14:29:54 +0000
Date: Thu, 20 Jun 2019 16:29:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190620142945.mxvvrslfz6vp2wkn@pengutronix.de>
References: <20190620082509.20605-1-antonynpavlov@gmail.com>
 <20190620085421.GA26493@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190620085421.GA26493@ravnborg.org>
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
To: Sam Ravnborg <sam@ravnborg.org>
Cc: barebox@lists.infradead.org, Oleksij Rempel <o.rempel@pengutronix.de>

On Thu, Jun 20, 2019 at 10:54:21AM +0200, Sam Ravnborg wrote:
> Hi Antony
> 
> On Thu, Jun 20, 2019 at 11:25:09AM +0300, Antony Pavlov wrote:
> > The commit b917f7864115a35 ("remove CONFIG_DEBUG_INFO")
> > has dropped Kconfig DEBUG_INFO option however we
> > still have very many DEBUG_INFO mentions in defconfig
> > files. Drop them using sed:
> > 
> >   find -iname '*defconfig' -type f -exec \
> >       sed -i "/CONFIG_DEBUG_INFO=y/d" {} ';'
> Another approach could be to regenerate all defconfigs.
> A little scripting around savedefconfig should do it.
> 
> Then we would get rid of all obsolete symbols in one go - for all
> defconfigs.
> 
> The generated defconfig would be the one that people would be using
> anyway, so there should be only a little risk to introduce new issues
> doing it this way.
> 
> Willing to try this approcah - maybe across all architectures?

I once thought the same and came up with this little thing:

#!/bin/bash

for a in arch/*; do
        arch=$(basename $a)
        for c in $a/configs/*; do
                config=$(basename $c)
		export ARCH=$arch
		make $config && make savedefconfig && mv defconfig $c
        done
done

Just tested, still works. Maybe I should just run this from time to time
and commit the result. What do you think?

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
