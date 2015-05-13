Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YsQ6A-0002dW-1F
 for barebox@lists.infradead.org; Wed, 13 May 2015 06:24:54 +0000
Date: Wed, 13 May 2015 08:24:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150513062431.GX6325@pengutronix.de>
References: <1431420306-23337-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1431420306-23337-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH 0/2] MIPS: bcm47xx: trivial fixes
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, May 12, 2015 at 11:45:04AM +0300, Antony Pavlov wrote:
> Antony Pavlov (2):
>   MIPS: bcm47xx: use PUTC_LL() from common debug_ll_ns16550.h header
>   update dlink-dir-320_defconfig
> 
>  arch/mips/configs/dlink-dir-320_defconfig      |  3 +--
>  arch/mips/mach-bcm47xx/include/mach/debug_ll.h | 14 +++++---------
>  2 files changed, 6 insertions(+), 11 deletions(-)

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
