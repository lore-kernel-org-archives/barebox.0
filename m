Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bjKhu-0005E0-LX
 for barebox@lists.infradead.org; Mon, 12 Sep 2016 06:27:09 +0000
Date: Mon, 12 Sep 2016 08:26:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160912062643.6ulohzrsmt44uwvi@pengutronix.de>
References: <1473435824-7830-1-git-send-email-akurz@blala.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1473435824-7830-1-git-send-email-akurz@blala.de>
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
Subject: Re: [PATCH 1/6] ARM: add common definitions for i.MX50 SOC
To: Alexander Kurz <akurz@blala.de>
Cc: barebox@lists.infradead.org

On Fri, Sep 09, 2016 at 05:43:39PM +0200, Alexander Kurz wrote:
> Signed-off-by: Alexander Kurz <akurz@blala.de>
> ---
>  Documentation/boards/imx.rst                   |  1 +
>  arch/arm/mach-imx/include/mach/generic.h       | 13 +++++++++++++
>  arch/arm/mach-imx/include/mach/imx_cpu_types.h |  1 +
>  3 files changed, 15 insertions(+)

Seems to be straight forward to add i.MX50 support. I have nothing to
add, except: Applied, thanks

Out of curiosity: What device do you use with i.MX50? Is it some E-Book
reader again?

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
