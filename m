Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4gWu-0007aW-9W
 for barebox@lists.infradead.org; Mon, 02 Sep 2019 07:13:41 +0000
Date: Mon, 2 Sep 2019 09:13:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190902071329.dlzlrulvfcyyz7vs@pengutronix.de>
References: <1567015399-26482-1-git-send-email-iu87m888m@qq.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1567015399-26482-1-git-send-email-iu87m888m@qq.com>
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
Subject: Re: [PATCH] mtd: spi-nor: Add support for s25fl128s0 s25fl128s1
 flashes from Linux
To: iu87m888m@qq.com
Cc: barebox@lists.infradead.org, DU HUANPENG <u74147@gmail.com>

On Thu, Aug 29, 2019 at 02:03:19AM +0800, iu87m888m@qq.com wrote:
> From: DU HUANPENG <u74147@gmail.com>
> 
> These definitions are taken from Linux's spi-nor driver as of v5.2-rc4
> 
> Signed-off-by: DU HUANPENG <u74147@gmail.com>
> ---
>  drivers/mtd/spi-nor/spi-nor.c | 4 ++++
>  1 file changed, 4 insertions(+)

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
