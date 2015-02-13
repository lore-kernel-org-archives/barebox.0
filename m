Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YM9eY-0008Ko-8l
 for barebox@lists.infradead.org; Fri, 13 Feb 2015 06:23:03 +0000
Date: Fri, 13 Feb 2015 07:22:37 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150213062237.GY12209@pengutronix.de>
References: <1423768031-5014-1-git-send-email-rockford@yandex.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1423768031-5014-1-git-send-email-rockford@yandex.ru>
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
Subject: Re: [PATCH] ARM: Rockchip: Add DEBUG_LL based on mach-socfpga
To: Andrey Panov <rockford@yandex.ru>
Cc: barebox@lists.infradead.org

On Thu, Feb 12, 2015 at 10:07:11PM +0300, Andrey Panov wrote:
> Signed-off-by: Andrey Panov <rockford@yandex.ru>
> ---
>  arch/arm/Kconfig                               |  1 +
>  arch/arm/mach-rockchip/include/mach/debug_ll.h | 60 ++++++++++++++++++++++++++
>  common/Kconfig                                 | 15 +++++++
>  3 files changed, 76 insertions(+)
>  create mode 100644 arch/arm/mach-rockchip/include/mach/debug_ll.h

Applied... to barebox ;)

Thanks
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
