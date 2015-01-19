Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YD6x1-0006ib-A1
 for barebox@lists.infradead.org; Mon, 19 Jan 2015 07:40:44 +0000
Date: Mon, 19 Jan 2015 08:40:21 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150119074021.GK18220@pengutronix.de>
References: <1421499317-3322-1-git-send-email-rockford@yandex.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1421499317-3322-1-git-send-email-rockford@yandex.ru>
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
Subject: Re: [PATCH] ARM: IMX: Embedsky E9: Choose right environment when
 booting from SD or EMMC.
To: Andrey Panov <rockford@yandex.ru>
Cc: barebox@lists.infradead.org

On Sat, Jan 17, 2015 at 03:55:17PM +0300, Andrey Panov wrote:
> Signed-off-by: Andrey Panov <rockford@yandex.ru>
> ---
>  arch/arm/boards/embedsky-e9/board.c                | 17 +++++++++++++++-
>  .../arm/boards/embedsky-e9/defaultenv-e9/boot/mmc3 |  4 ++--
>  arch/arm/dts/imx6q-embedsky-e9.dts                 | 23 +++++++++++++++++++++-
>  3 files changed, 40 insertions(+), 4 deletions(-)

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
