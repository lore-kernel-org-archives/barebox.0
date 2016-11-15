Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c6YZH-0004Dn-NS
 for barebox@lists.infradead.org; Tue, 15 Nov 2016 07:54:12 +0000
Date: Tue, 15 Nov 2016 08:53:48 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20161115075348.xhdgp6ddilmlve7r@pengutronix.de>
References: <1478708056-7875-1-git-send-email-andrew.smirnov@gmail.com>
 <1478708056-7875-10-git-send-email-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1478708056-7875-10-git-send-email-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH v2 09/28] clk: Port of_clk_set_defaults()
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Nov 09, 2016 at 08:13:57AM -0800, Andrey Smirnov wrote:
> Port of_clk_set_defautls() from Linux kernel in order to support DT
> configurations that require it (e. g. Vybrid).
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  drivers/clk/Makefile         |   2 +-
>  drivers/clk/clk-conf.c       | 144 +++++++++++++++++++++++++++++++++++++++++++
>  drivers/clk/clk.c            |   2 +
>  include/linux/clk/clk-conf.h |  14 +++++
>  4 files changed, 161 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/clk/clk-conf.c
>  create mode 100644 include/linux/clk/clk-conf.h

This patch breaks compilation on platforms using common clk but no
device tree, for example cupid_defconfig:

drivers/clk/clk-conf.c: In function '__set_clk_parents':
drivers/clk/clk-conf.c:41:3: error: implicit declaration of function 'of_clk_get_from_provider' [-Werror=implicit-function-declaration]

As this is not trivial to fix I dropped the rest of this series for now.

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
