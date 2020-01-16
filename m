Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is1mE-0008Di-HK
 for barebox@lists.infradead.org; Thu, 16 Jan 2020 09:49:26 +0000
Date: Thu, 16 Jan 2020 10:49:19 +0100
From: Roland Hieber <rhi@pengutronix.de>
Message-ID: <20200116094919.4zqv43u2u4mdsw2k@pengutronix.de>
References: <20200115102650.11739-1-cleger@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200115102650.11739-1-cleger@kalray.eu>
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
Subject: Re: [PATCH 0/5] Add support for Kalray k1c core
To: Clement Leger <cleger@kalray.eu>
Cc: barebox@lists.infradead.org

On Wed, Jan 15, 2020 at 11:26:45AM +0100, Clement Leger wrote:
> Kalray k1c core is embedded in Kalray Coolidge SoC. This core has the
> following features:
>  - 32/64 bits
>  - 6-issue VLIW architecture
>  - 64 x 64bits general purpose registers
>  - SIMD instructions
>  - little-endian
> 
> This port is a 64 bits one and allows to boot up to a barebox prompt on a k200
> board. k1c support for clocksource and watchdog is also part of this port.
> 
> In order to build a usable toolchain, build scripts are provided at the
> following address: https://github.com/kalray/build-scripts.
> 
> Kalray uses FOSS which is available at https://github.com/kalray
> 
> Clement Leger (5):
>   k1c: Initial Kalray Coolidge (k1c) architecture support
>   k1c: Add processor definitions
>   k1c: Add support for device tree
>   clocksource: k1c: Add k1c clocksource support
>   watchdog: k1c: Add k1c watchdog support

Uuuh, a shiny new architecture! You might also want to add some
(minimal) documentation in Documentation/boards/ to advertise it. This
way it will also appear on
https://www.barebox.org/doc/latest/boards.html :)

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
