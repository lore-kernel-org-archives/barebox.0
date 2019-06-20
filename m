Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdspx-00070o-Dg
 for barebox@lists.infradead.org; Thu, 20 Jun 2019 08:54:30 +0000
Date: Thu, 20 Jun 2019 10:54:21 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20190620085421.GA26493@ravnborg.org>
References: <20190620082509.20605-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190620082509.20605-1-antonynpavlov@gmail.com>
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
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org, Oleksij Rempel <o.rempel@pengutronix.de>

Hi Antony

On Thu, Jun 20, 2019 at 11:25:09AM +0300, Antony Pavlov wrote:
> The commit b917f7864115a35 ("remove CONFIG_DEBUG_INFO")
> has dropped Kconfig DEBUG_INFO option however we
> still have very many DEBUG_INFO mentions in defconfig
> files. Drop them using sed:
> 
>   find -iname '*defconfig' -type f -exec \
>       sed -i "/CONFIG_DEBUG_INFO=y/d" {} ';'
Another approach could be to regenerate all defconfigs.
A little scripting around savedefconfig should do it.

Then we would get rid of all obsolete symbols in one go - for all
defconfigs.

The generated defconfig would be the one that people would be using
anyway, so there should be only a little risk to introduce new issues
doing it this way.

Willing to try this approcah - maybe across all architectures?

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
