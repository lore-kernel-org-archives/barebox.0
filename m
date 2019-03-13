Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h3zRT-0007DR-Qf
 for barebox@lists.infradead.org; Wed, 13 Mar 2019 08:40:52 +0000
Date: Wed, 13 Mar 2019 09:40:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190313084036.n6wqjaiiunhc47dg@pengutronix.de>
References: <20190312072527.21772-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190312072527.21772-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 1/2] ARM: zii-vf610-dev: Add ZII SPB4 board
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Mar 12, 2019 at 12:25:26AM -0700, Andrey Smirnov wrote:
> Add support for Zodiac's VF610 based SPB4 board.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  arch/arm/boards/zii-vf610-dev/board.c    |   4 +-
>  arch/arm/boards/zii-vf610-dev/lowlevel.c |   5 +
>  arch/arm/dts/Makefile                    |   3 +-
>  arch/arm/dts/vf610-zii-spb4.dts          |  16 +
>  arch/arm/dts/vf610-zii-spb4.dtsi         | 365 +++++++++++++++++++++++
>  5 files changed, 391 insertions(+), 2 deletions(-)
>  create mode 100644 arch/arm/dts/vf610-zii-spb4.dts
>  create mode 100644 arch/arm/dts/vf610-zii-spb4.dtsi

Applied, thanks

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
