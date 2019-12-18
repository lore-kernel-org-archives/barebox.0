Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihTpM-0001iX-NP
 for barebox@lists.infradead.org; Wed, 18 Dec 2019 07:33:02 +0000
Date: Wed, 18 Dec 2019 08:32:59 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191218073259.c22jz7majc2zqzuk@pengutronix.de>
References: <20191217114042.11301-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191217114042.11301-1-l.stach@pengutronix.de>
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
Subject: Re: [PATCH] ARM: rdu1: add default environment
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Dec 17, 2019 at 12:40:42PM +0100, Lucas Stach wrote:
> Adds scripts for network detection in development case and
> autoboot from the SD card.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  arch/arm/boards/zii-imx51-rdu1/Makefile       |  1 +
>  arch/arm/boards/zii-imx51-rdu1/board.c        |  3 +++
>  .../zii-imx51-rdu1/defaultenv-rdu1/boot/net   | 24 +++++++++++++++++++
>  .../zii-imx51-rdu1/defaultenv-rdu1/boot/nfs   |  6 +++++
>  .../defaultenv-rdu1/boot/rdu-default          | 14 +++++++++++
>  .../defaultenv-rdu1/network/eth0-discover     |  4 ++++
>  .../defaultenv-rdu1/nv/autoboot_abort_key     |  1 +
>  .../defaultenv-rdu1/nv/boot.default           |  1 +
>  8 files changed, 54 insertions(+)
>  create mode 100644 arch/arm/boards/zii-imx51-rdu1/defaultenv-rdu1/boot/net
>  create mode 100644 arch/arm/boards/zii-imx51-rdu1/defaultenv-rdu1/boot/nfs
>  create mode 100644 arch/arm/boards/zii-imx51-rdu1/defaultenv-rdu1/boot/rdu-default
>  create mode 100644 arch/arm/boards/zii-imx51-rdu1/defaultenv-rdu1/network/eth0-discover
>  create mode 100644 arch/arm/boards/zii-imx51-rdu1/defaultenv-rdu1/nv/autoboot_abort_key
>  create mode 100644 arch/arm/boards/zii-imx51-rdu1/defaultenv-rdu1/nv/boot.default

Applied, thanks

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
