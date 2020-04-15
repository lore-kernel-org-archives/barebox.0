Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jObxZ-0002E1-KW
 for barebox@lists.infradead.org; Wed, 15 Apr 2020 06:55:47 +0000
Date: Wed, 15 Apr 2020 08:55:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200415065539.GD1694@pengutronix.de>
References: <20200404202910.12524-1-cleger@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200404202910.12524-1-cleger@kalray.eu>
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
Subject: Re: [PATCH v2 0/6] Add support for Kalray VLIW family (kvx)
To: Clement Leger <cleger@kalray.eu>
Cc: barebox@lists.infradead.org

Hi Clement,

On Sat, Apr 04, 2020 at 10:29:04PM +0200, Clement Leger wrote:
> Kalray kv3 core is embedded in Kalray Coolidge SoC. This core which is the 
> third of the KV family has the following features:
>  - 32/64 bits execution mode
>  - 6-issue VLIW architecture
>  - 64 x 64bits general purpose registers
>  - SIMD instructions
>  - little-endian
> 
> This port is a 64 bits one and allows to boot up to a barebox prompt on a k200
> board. kv3 support for clocksource and watchdog is also part of this port.
> 
> In order to build a usable toolchain, build scripts are provided at the
> following address: https://github.com/kalray/build-scripts.

I merged the series with the comments I made to the timer driver. I am
currently on my way trying the toolchain build scripts. If this
succeeds I can add the coolidge support to my defconfig builds.

It would be nice if you could add a few words to
Documentation/boards/coolidge.rst to let the user know what this is all
about.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
