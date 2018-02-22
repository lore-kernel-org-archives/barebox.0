Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eovCf-0003sr-5F
 for barebox@lists.infradead.org; Thu, 22 Feb 2018 18:02:46 +0000
Date: Thu, 22 Feb 2018 19:00:26 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20180222180026.GA32137@ravnborg.org>
References: <20180222080357.7ces7vlsip6gnmxs@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180222080357.7ces7vlsip6gnmxs@pengutronix.de>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Sasha.

> I was just thinking, the kernel build system is great for compiling
> barebox itself, but for compiling the userspace host and target tools
> autotools would be a better match as they much better allow to specify
> the necessary compilers and to pull the necessary dependencies in.

What specific problems are you trying to solve that is
not solved today by the support in scripts/Makefile.host?

I notice you want to build tools for the target as well.
This should be relatively easy to add support for that using
the current kbuild syntax.

I we are going for something more standard then cmake or meson
are more modern choices than the dreadful autotools stuff.
And with modern I also imply better / simpler.

> Any opinions or even volunteers?

Any specific program you have in mind?

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
