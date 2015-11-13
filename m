Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zx8Ej-0002HQ-Ce
 for barebox@lists.infradead.org; Fri, 13 Nov 2015 06:53:30 +0000
Date: Fri, 13 Nov 2015 07:53:05 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151113065305.GU8526@pengutronix.de>
References: <1447230942-24098-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1447230942-24098-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH v2 0/3] MIPS: ath79: skip pbl lowlevel init if running
 from RAM
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Nov 11, 2015 at 11:35:39AM +0300, Antony Pavlov wrote:
> Changes since v1:
> 
>   * fix commit messages (thanks to Dmitry Smagin);
>   * assume that tplink-mr3020's ROM start address is 0xbf000000;
>   * add 'Tested-by: Yegor Yefremov <yegorslists@googlemail.com>'.
> 
> Antony Pavlov (2):
>   MIPS: black-swift: skip pbl lowlevel init if running from RAM
>   MIPS: tplink-mr3020: skip pbl lowlevel init if running from RAM
> 
> Oleksij Rempel (1):
>   MIPS: pbl: add pbl_blt macro
> 
>  arch/mips/boards/black-swift/include/board/board_pbl_start.h |  3 +++
>  .../boards/tplink-mr3020/include/board/board_pbl_start.h     |  3 +++
>  arch/mips/include/asm/pbl_macros.h                           | 12 ++++++++++++
>  3 files changed, 18 insertions(+)

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
