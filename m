Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eqDOd-0000yM-Fv
 for barebox@lists.infradead.org; Mon, 26 Feb 2018 07:40:31 +0000
Date: Mon, 26 Feb 2018 08:40:11 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180226074011.lff7ytr6b6ylzbd7@pengutronix.de>
References: <20180222080357.7ces7vlsip6gnmxs@pengutronix.de>
 <20180222180026.GA32137@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180222180026.GA32137@ravnborg.org>
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
Subject: Re: autotools for barebox host/target tools?
To: Sam Ravnborg <sam@ravnborg.org>
Cc: Barebox List <barebox@lists.infradead.org>

On Thu, Feb 22, 2018 at 07:00:26PM +0100, Sam Ravnborg wrote:
> Hi Sasha.
> 
> > I was just thinking, the kernel build system is great for compiling
> > barebox itself, but for compiling the userspace host and target tools
> > autotools would be a better match as they much better allow to specify
> > the necessary compilers and to pull the necessary dependencies in.
> 
> What specific problems are you trying to solve that is
> not solved today by the support in scripts/Makefile.host?

No really specific problems. I just think that while handmade Makefiles
are good for the kernel/barebox, compiling userspace tools feels more
natural using widespread userspace build environments. Manually calling
pkg-config doesn't sound like a good idea and probably we would need
another pkg-config when compiling for the target. Now we normally do
not want to build the USB upload tools we have for the target, so this
argument doesn't really count.

> 
> I notice you want to build tools for the target as well.
> This should be relatively easy to add support for that using
> the current kbuild syntax.

We do this already using targetprogs-y

> 
> I we are going for something more standard then cmake or meson
> are more modern choices than the dreadful autotools stuff.
> And with modern I also imply better / simpler.

I didn't know about meson. This one sounds interesting and Michael
Olbrich, our build system expert, also has good things to tell about
meson.

As said, there are no concrete problems I wanted to solve, I just had
the vague feeling that for example integration into build systems
like YOCTO or ptxdist) might get simpler. Anyway, it was just an idea.

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
