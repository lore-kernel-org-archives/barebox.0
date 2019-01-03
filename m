Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gezVZ-0000lW-Na
 for barebox@lists.infradead.org; Thu, 03 Jan 2019 09:41:48 +0000
Date: Thu, 3 Jan 2019 10:41:43 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190103094143.piefi6rsxsennhl3@pengutronix.de>
References: <20181224062457.10318-1-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181224062457.10318-1-shc_work@mail.ru>
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
Subject: Re: [PATCH V3 1/2] mfd: mc13892: MC13892_POWER_MISC bits revision
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Mon, Dec 24, 2018 at 09:24:56AM +0300, Alexander Shiyan wrote:
> This patch revises the bits for register MC13892_POWER_MISC.
>  - Added definition for one missing bit (0).
>  - Changed the name for bit 21 for accordance with the datasheet.
>  - Updated affected board that uses these definitions.
>  - Replaced spaces with tabs for the remaining bits.
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---
>  arch/arm/boards/efika-mx-smartbook/board.c |  2 +-
>  include/mfd/mc13892.h                      | 23 ++++++++++++-----------
>  2 files changed, 13 insertions(+), 12 deletions(-)

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
