Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kd9rk-0002mw-Ez
 for barebox@lists.infradead.org; Thu, 12 Nov 2020 10:30:09 +0000
Date: Thu, 12 Nov 2020 11:30:06 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20201112103006.GP12463@pengutronix.de>
References: <20201109134430.21156-1-r.czerwinski@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201109134430.21156-1-r.czerwinski@pengutronix.de>
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
Subject: Re: [PATCH 0/8] QEMU virt machine support via mach-vexpress
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Nov 09, 2020 at 02:44:22PM +0100, Rouven Czerwinski wrote:
> Instead of using ARCH_QEMU, this variant uses ARCH_VEXPRESS to base its
> support for the QEMU virt machine on. Contains a cleanup and conversion
> of the vexpress boards to board drivers and an implementation of
> zero_page_access and faulting for ARM32.
> 
> Rouven Czerwinski (8):
>   ARM: MMU: add zero_page_{access,faulting}
>   mtd: cfi_flash: allow 0x0 mapping
>   amba: add *_amba_driver helper macros
>   ARM: vexpress: remove unused KConfig file
>   ARM: vexpress: convert to board driver
>   ARM: vexpress: move Options to ARCH_VEXPRESS
>   ARM: qemu: add support for qemu virt platform
>   ARM: vexpress: enable VIRT board, MMU and cmds

Until the flash-at-zero problem is solved: Applied 3-7.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
