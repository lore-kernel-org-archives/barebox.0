Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hJuOo-00036H-40
 for barebox@lists.infradead.org; Fri, 26 Apr 2019 06:31:55 +0000
Date: Fri, 26 Apr 2019 08:31:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190426063151.6zm6fenssbirwxrc@pengutronix.de>
References: <20190425225318.27421-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190425225318.27421-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] ARM: zii-vf610-dev: Add ZII SSMB DTU board
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org, Heiner Kallweit <hkallweit1@gmail.com>

On Thu, Apr 25, 2019 at 03:53:18PM -0700, Andrey Smirnov wrote:
> Add the Zodiac Digital Tapping Unit, a VF610 based network device with
> 5 Ethernet ports.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  arch/arm/boards/zii-vf610-dev/board.c    |  4 +++-
>  arch/arm/boards/zii-vf610-dev/lowlevel.c |  5 +++++
>  arch/arm/dts/Makefile                    |  3 ++-
>  arch/arm/dts/vf610-zii-ssmb-dtu.dts      | 16 ++++++++++++++++
>  4 files changed, 26 insertions(+), 2 deletions(-)
>  create mode 100644 arch/arm/dts/vf610-zii-ssmb-dtu.dts

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
