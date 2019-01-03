Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gf11g-00040c-I3
 for barebox@lists.infradead.org; Thu, 03 Jan 2019 11:19:02 +0000
Date: Thu, 3 Jan 2019 12:18:58 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190103111858.5ofe6cji5vizaq7z@pengutronix.de>
References: <20190103092221.5937-1-l.madej@grinn-global.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190103092221.5937-1-l.madej@grinn-global.com>
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
Subject: Re: [PATCH] ARM: imx7: missing config for AIPS3 bridge added
To: Lukasz Madej <l.madej@grinn-global.com>
Cc: barebox@lists.infradead.org

On Thu, Jan 03, 2019 at 10:22:21AM +0100, Lukasz Madej wrote:
> Access priviledges for AIPS3 bridge have been configured so peripherals
> connected to it (like SDMA, SAI etc.) can work properly.
> 
> Signed-off-by: Lukasz Madej <l.madej@grinn-global.com>
> ---
>  arch/arm/mach-imx/imx7.c | 9 +++++++++
>  1 file changed, 9 insertions(+)

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
