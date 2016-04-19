Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1asP2v-00008b-19
 for barebox@lists.infradead.org; Tue, 19 Apr 2016 06:22:01 +0000
Date: Tue, 19 Apr 2016 08:21:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160419062138.GM9102@pengutronix.de>
References: <CAKu_b=KTM7Q=nZEDXKKtBf8EPPi2SAcQxk2=HJOLzKei3R0vTQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKu_b=KTM7Q=nZEDXKKtBf8EPPi2SAcQxk2=HJOLzKei3R0vTQ@mail.gmail.com>
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
Subject: Re: [PATCH] ARM: i.MX53: ccxmx53: Fix memory detection.
To: Jason Cobham <cobham.jason@gmail.com>
Cc: barebox@lists.infradead.org

Hi Jason,

On Sat, Apr 16, 2016 at 07:10:40PM -0700, Jason Cobham wrote:
> This patch fixes memory detection on the Digi ccxmx53 board.
> Also updates dts to support nand.
> 
> Signed-off-by: Jason Cobham <cobham.jason@gmail.com>
> ---
>  .../ccxmx53/flash-header-imx53-ccxmx53_1gib.imxcfg |  2 +-
>  arch/arm/boards/ccxmx53/lowlevel.c                 | 43 +++++++++++++---------
>  arch/arm/dts/imx53-ccxmx53.dts                     |  1 +
>  arch/arm/dts/imx53-ccxmx53.dtsi                    |  5 ++-
>  4 files changed, 30 insertions(+), 21 deletions(-)

The patch itself looks ok, but unfortunately it has whitespace damages,
so I cannot apply it. Could you resend it using git send-email?
Alternatively a pull request from a github repository would be fine.

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
