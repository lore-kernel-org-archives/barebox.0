Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TzjDG-0002oB-2Y
 for barebox@lists.infradead.org; Mon, 28 Jan 2013 07:33:06 +0000
Date: Mon, 28 Jan 2013 08:33:04 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130128073304.GF1906@pengutronix.de>
References: <20130127180957.GO26329@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130127180957.GO26329@game.jcrosoft.org>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 0/2] at91rm9200: sdram autodetect size
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sun, Jan 27, 2013 at 07:09:57PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> HI,
> 
> 	this patch serie apply over the sdram fix for rm9200ek
> 
> The following changes since commit cb3a2277eeee13483664ba811ce090aa31dd90d9:
> 
>   at91rm9200ek: fix mem size (2013-01-23 18:52:25 +0800)
> 
> are available in the git repository at:
> 
>   git://git.jcrosoft.org/barebox.git delivery/at91rm9200_autodetect_size

Applied, thanks

Sascha

> 
> for you to fetch changes up to 613328146f761b95dc403e300424c70b50eac52c:
> 
>   at91rm9200ek: auto detect sdram size (2013-01-23 18:53:19 +0800)
> 
> ----------------------------------------------------------------
> Jean-Christophe PLAGNIOL-VILLARD (2):
>       at91rm9200: add autodetect sdram size
>       at91rm9200ek: auto detect sdram size
> 
>  arch/arm/boards/at91rm9200ek/init.c             |    2 +-
>  arch/arm/mach-at91/at91rm9200_devices.c         |    3 +++
>  arch/arm/mach-at91/include/mach/at91rm9200_mc.h |   30 ++++++++++++++++++++++++++++++
>  3 files changed, 34 insertions(+), 1 deletion(-)
> 
> Best Regards,
> J.
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
