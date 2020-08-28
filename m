Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kBbaL-00063t-Kq
 for barebox@lists.infradead.org; Fri, 28 Aug 2020 10:26:18 +0000
Date: Fri, 28 Aug 2020 12:26:14 +0200
From: Roland Hieber <rhi@pengutronix.de>
Message-ID: <20200828102614.q3moyf6mnofiydcd@pengutronix.de>
References: <20200823211343.25189-1-rhi@pengutronix.de>
 <20200823223927.16691-1-rhi@pengutronix.de>
 <20200828114058.827fb0851f3b1950f044d6aa@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200828114058.827fb0851f3b1950f044d6aa@gmail.com>
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
Subject: Re: [PATCH v2] sandbox: add a minimal defconfig to build only the
 host tools
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: Barebox Mailing List <barebox@lists.infradead.org>

On Fri, Aug 28, 2020 at 11:40:58AM +0300, Antony Pavlov wrote:
> On Mon, 24 Aug 2020 00:39:27 +0200
> Roland Hieber <rhi@pengutronix.de> wrote:
> 
> Hi!
> 
> > For distro packaging, make it possible to build all host tools in one go
> 
> Is there any stuff for Debian packaging?
> 
> There is u-boot-tools package for Debian distro.
> Alas there is no barebox-tools package still.

Current state is at <https://git.pengutronix.de/cgit/debian/barebox/>.
ITP bug is at <https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=900958>.

 - Roland

-- 
Roland Hieber, Pengutronix e.K.          | r.hieber@pengutronix.de     |
Steuerwalder Str. 21                     | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686         | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
