Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2CL5-0006ha-3D
 for barebox@lists.infradead.org; Mon, 26 Aug 2019 10:35:08 +0000
Date: Mon, 26 Aug 2019 12:35:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190826103502.cfmgqeoyamdkqmxt@pengutronix.de>
References: <20190822055114.931-1-ahmad@a3f.at>
 <20190822055114.931-2-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190822055114.931-2-ahmad@a3f.at>
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
Subject: Re: [PATCH 01/11] linux/kbuild.h: sync with upstream
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org, afa@pengutronix.de

On Thu, Aug 22, 2019 at 07:51:04AM +0200, Ahmad Fatoum wrote:
> Clang doesn't like literal ASCII in the listing.
> Copy over the Linux v5.2 state of the file to fix this.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  include/linux/kbuild.h | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)

This patch breaks building arm64 and mips defconfigs. For example
bcm47xx_defconfig with:

arch/mips/lib/genex.S: Assembler messages:
arch/mips/lib/genex.S:14: Error: operand 2 must be constant `subu $27,PT_SIZE'
arch/mips/lib/genex.S:14: Error: macro used $at after ".set noat"
arch/mips/lib/genex.S:14: Error: macro used $at after ".set noat"
arch/mips/lib/genex.S:14: Error: macro used $at after ".set noat"
arch/mips/lib/genex.S:14: Error: macro used $at after ".set noat"
arch/mips/lib/genex.S:14: Error: macro used $at after ".set noat"
...

zynqmp_defconfig with:

arch/arm/cpu/smccc-call_64.S: Assembler messages:
arch/arm/cpu/smccc-call_64.S:41: Error: undefined symbol ARM_SMCCC_RES_X0_OFFS used as an immediate value
arch/arm/cpu/smccc-call_64.S:41: Error: undefined symbol ARM_SMCCC_RES_X2_OFFS used as an immediate value
arch/arm/cpu/smccc-call_64.S:41: Error: undefined symbol ARM_SMCCC_QUIRK_ID_OFFS used as an immediate value
arch/arm/cpu/smccc-call_64.S:41: Error: undefined symbol ARM_SMCCC_QUIRK_STATE_OFFS used as an immediate value
arch/arm/cpu/smccc-call_64.S:51: Error: undefined symbol ARM_SMCCC_RES_X0_OFFS used as an immediate value
arch/arm/cpu/smccc-call_64.S:51: Error: undefined symbol ARM_SMCCC_RES_X2_OFFS used as an immediate value
arch/arm/cpu/smccc-call_64.S:51: Error: undefined symbol ARM_SMCCC_QUIRK_ID_OFFS used as an immediate value
arch/arm/cpu/smccc-call_64.S:51: Error: undefined symbol ARM_SMCCC_QUIRK_STATE_OFFS used as an immediate value

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
