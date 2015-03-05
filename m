Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YTROo-0005QJ-CN
 for barebox@lists.infradead.org; Thu, 05 Mar 2015 08:44:55 +0000
Date: Thu, 5 Mar 2015 09:44:31 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150305084431.GG11010@pengutronix.de>
References: <1425499906-32125-1-git-send-email-rockford@yandex.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1425499906-32125-1-git-send-email-rockford@yandex.ru>
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
Subject: Re: [PATCH v2 00/18] Update support for RK3188, Radxa Rock board
To: Andrey Panov <rockford@yandex.ru>
Cc: barebox@lists.infradead.org

On Wed, Mar 04, 2015 at 11:11:28PM +0300, Andrey Panov wrote:
> This series will update support for Radxa Rock board, allowing it
> to boot from SD card with Barebox as first-stage loader.
> 
> Based on next branch.
> 
> v2: Rebased on more recent sources, fixed patches.

Mostly applied. I changed the PIO support in the dwmci patch to use if()
instead of #ifdef, please give the result a test in -next.
Also I haven't applied the defconfig patch. There already is a
rockchip_defconfig which should be updated instead of creating a new
config file.

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
