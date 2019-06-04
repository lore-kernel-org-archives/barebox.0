Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY4OV-0003md-Vd
 for barebox@lists.infradead.org; Tue, 04 Jun 2019 08:02:10 +0000
Date: Tue, 4 Jun 2019 10:02:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190604080206.alnjyjz5snfjkhm7@pengutronix.de>
References: <20190531103116.27378-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190531103116.27378-1-l.stach@pengutronix.de>
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
Subject: Re: [PATCH 1/4] ARM: rdu2: extend environment for netboot
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, May 31, 2019 at 12:31:13PM +0200, Lucas Stach wrote:
> This adds the necessary scripts to clear the seat network
> configuration and reset the switch in the development case.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  .../zii-imx6q-rdu2/defaultenv-rdu2/boot/net   | 24 +++++++++++++++++++
>  .../zii-imx6q-rdu2/defaultenv-rdu2/boot/nfs   |  7 ++++++
>  .../defaultenv-rdu2/boot/rdu-default          |  4 ++++
>  .../defaultenv-rdu2/network/eth0-discover     |  4 ++++
>  .../defaultenv-rdu2/nv/autoboot_abort_key     |  1 +
>  .../defaultenv-rdu2/nv/boot.default           |  2 +-
>  6 files changed, 41 insertions(+), 1 deletion(-)
>  create mode 100644 arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/boot/net
>  create mode 100644 arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/boot/nfs
>  create mode 100644 arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/boot/rdu-default
>  create mode 100644 arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/network/eth0-discover
>  create mode 100644 arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/nv/autoboot_abort_key

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
