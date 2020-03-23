Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGHRG-0007Sl-Kh
 for barebox@lists.infradead.org; Mon, 23 Mar 2020 07:23:59 +0000
Date: Mon, 23 Mar 2020 08:23:57 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200323072357.GO3335@pengutronix.de>
References: <20200320094119.7206-1-yegorslists@googlemail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200320094119.7206-1-yegorslists@googlemail.com>
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
Subject: Re: [PATCH] common: fix typos found with codespell
To: yegorslists@googlemail.com
Cc: barebox@lists.infradead.org

On Fri, Mar 20, 2020 at 10:41:19AM +0100, yegorslists@googlemail.com wrote:
> From: Yegor Yefremov <yegorslists@googlemail.com>
> 
> Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
> ---
>  common/Kconfig            |  4 ++--
>  common/bbu.c              |  2 +-
>  common/block.c            |  2 +-
>  common/blspec.c           | 16 ++++++++--------
>  common/boot.c             |  2 +-
>  common/bootsource.c       |  4 ++--
>  common/clock.c            |  2 +-
>  common/console_common.c   |  2 +-
>  common/dlmalloc.c         | 12 ++++++------
>  common/efi-devicepath.c   |  2 +-
>  common/hush.c             |  4 ++--
>  common/imx-bbu-nand-fcb.c |  4 ++--
>  common/memtest.c          |  2 +-
>  common/resource.c         |  2 +-
>  common/serdev.c           |  6 +++---
>  common/state/state.c      |  2 +-
>  common/ubiformat.c        |  2 +-
>  common/uimage.c           |  2 +-
>  18 files changed, 36 insertions(+), 36 deletions(-)

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
