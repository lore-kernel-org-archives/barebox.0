Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a8QS1-00032f-GH
 for barebox@lists.infradead.org; Mon, 14 Dec 2015 10:33:54 +0000
Date: Mon, 14 Dec 2015 11:33:31 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151214103331.GZ14356@pengutronix.de>
References: <1449784305.26955.83.camel@rtred1test09.kymeta.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1449784305.26955.83.camel@rtred1test09.kymeta.local>
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
Subject: Re: [PATCH] socfpga: Allow setting partition xloader boots from for
 mmc
To: Trent Piepho <tpiepho@kymetacorp.com>
Cc: barebox <barebox@lists.infradead.org>

On Thu, Dec 10, 2015 at 09:51:39PM +0000, Trent Piepho wrote:
> The xloader boots the 2nd stage barebox from socfpga_barebox_part when
> using NOR.  But when using MMC it boots from a hardcoded "disk0.1".
> Add the mmc device name to the partition description and use it for
> mmc booting.
> 
> Add an extern declaration of socfpga_barebox_part to the socfpga
> header so that a board can change it to use a different partition.
> 
> Initialize socfpga_barebox_part to the default value instead of NULL to
> avoid the NULL check later.
> 
> Signed-off-by: Trent Piepho <tpiepho@kymetacorp.com>
> ---
>  arch/arm/mach-socfpga/include/mach/generic.h | 4 ++++
>  arch/arm/mach-socfpga/xload.c                | 8 +++-----
>  2 files changed, 7 insertions(+), 5 deletions(-)

I read this patch again and now I understood it correctly. Looks good,
applied, thanks

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
