Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TS5fC-0002kl-LR
 for barebox@lists.infradead.org; Sat, 27 Oct 2012 12:38:55 +0000
Date: Sat, 27 Oct 2012 14:38:52 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121027123852.GT24458@pengutronix.de>
References: <20121017130320.GF30038@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121017130320.GF30038@game.jcrosoft.org>
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
Subject: Re: [PATCH 0/2] allow to use named resources
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Wed, Oct 17, 2012 at 03:03:20PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Hi,
> 
> 	add helper to use named resources and use it on nomadik
> 
> The following changes since commit f99ea5c9d8cfddf3a1d6b181d0dbb26e06a86d2b:
> 
>   ARM samsung S5P: Enable board support (2012-10-15 19:47:01 +0200)
> 
> are available in the git repository at:
> 
>   git://git.jcrosoft.org/barebox.git delivery/nomadik
> 
> for you to fetch changes up to 0bcfbe7caab23ba5c78c964e91c43456e66cd9aa:
> 
>   nomadik_nand: switch to named resource (2012-10-17 12:09:16 +0800)

Applied, thanks

Sascha

> 
> ----------------------------------------------------------------
> Jean-Christophe PLAGNIOL-VILLARD (2):
>       driver: add support for requesting resource by name
>       nomadik_nand: switch to named resource
> 
>  arch/arm/boards/nhk8815/setup.c |    3 +++
>  drivers/base/driver.c           |   46 ++++++++++++++++++++++++++++++++++++++++++++++
>  drivers/mtd/nand/nomadik_nand.c |    6 +++---
>  include/driver.h                |   15 +++++++++++++++
>  4 files changed, 67 insertions(+), 3 deletions(-)
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
