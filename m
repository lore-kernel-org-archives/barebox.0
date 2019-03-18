Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h5nIC-0001Iw-6X
 for barebox@lists.infradead.org; Mon, 18 Mar 2019 08:06:45 +0000
Date: Mon, 18 Mar 2019 09:06:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190318080642.smn6owrvlpsv6eb7@pengutronix.de>
References: <20190313105635.22055-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190313105635.22055-1-l.stach@pengutronix.de>
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
Subject: Re: [PATCH 1/6] ARM: add Zii common directory and move switch reset
 command
To: Lucas Stach <l.stach@pengutronix.de>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, barebox@lists.infradead.org, Chris Healy <cphealy@gmail.com>

On Wed, Mar 13, 2019 at 11:56:30AM +0100, Lucas Stach wrote:
> The Zii boards share some functionality across different boards. Add
> a common directory, so we can implement this once and use across
> different boards.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  arch/arm/boards/Makefile                                    | 1 +
>  arch/arm/boards/zii-common/Makefile                         | 1 +
>  arch/arm/boards/{zii-imx6q-rdu2 => zii-common}/switch-cmd.c | 0
>  arch/arm/boards/zii-imx6q-rdu2/Makefile                     | 2 +-
>  arch/arm/mach-imx/Kconfig                                   | 4 ++++
>  5 files changed, 7 insertions(+), 1 deletion(-)
>  create mode 100644 arch/arm/boards/zii-common/Makefile
>  rename arch/arm/boards/{zii-imx6q-rdu2 => zii-common}/switch-cmd.c (100%)

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
