Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJxL8-0006aH-HU
 for barebox@lists.infradead.org; Mon, 14 Oct 2019 10:12:35 +0000
Date: Mon, 14 Oct 2019 12:12:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191014101232.c2c4zldf7lg777dx@pengutronix.de>
References: <20191008050426.29849-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191008050426.29849-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] Documentation: zii-vf610-dev: Fix bogus DDR
 configuration values
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Oct 07, 2019 at 10:04:26PM -0700, Andrey Smirnov wrote:
> There's a clear mismatch between actual TCL code and comment right
> next to it. Comments are definetly right, so fix the TCL code.
> 
> Fixes: 02738f4b59 ("Documentation: zii-vf610-dev: Reconcile DDR setup with DCD")
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  Documentation/boards/imx/zii-vf610-dev/openocd.cfg | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)

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
