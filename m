Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOeAd-00010r-Ux
 for barebox@lists.infradead.org; Wed, 15 Apr 2020 09:17:25 +0000
Date: Wed, 15 Apr 2020 11:17:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200415091722.GI1694@pengutronix.de>
References: <20200415064501.47293-1-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200415064501.47293-1-masahiroy@kernel.org>
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
Subject: Re: [PATCH] ppc,riscv: set something to KBUILD_DEFCONFIG
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: barebox@lists.infradead.org

On Wed, Apr 15, 2020 at 03:45:01PM +0900, Masahiro Yamada wrote:
> 'make ARCH=riscv defconfig' ends up with endless recursion.
> Users may get upset with it.
> 
> In Linux, every architecture does something for 'make defconfig'.
> Set something to KBUILD_DEFCONFIG to make it work for riscv and ppc.
> 
> There is only one file in arch/riscv/configs/, so there is no choice
> but erizo_generic_defconfig for riscv.
> 
> There are some choices for ppc, but I am not sure what is appropriate.
> I just picked something.
> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---
> 
>  arch/ppc/Makefile   | 1 +
>  arch/riscv/Makefile | 2 ++
>  2 files changed, 3 insertions(+)

Applied, thanks

Sascha

> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
