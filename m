Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 15.mo3.mail-out.ovh.net ([87.98.150.177]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TN2bN-0007OV-3S
 for barebox@lists.infradead.org; Sat, 13 Oct 2012 14:22:06 +0000
Received: from mail632.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id BFABDFF8545
 for <barebox@lists.infradead.org>; Sat, 13 Oct 2012 16:31:18 +0200 (CEST)
Date: Sat, 13 Oct 2012 16:19:42 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121013141942.GN13639@game.jcrosoft.org>
References: <1350137007-10135-1-git-send-email-vicencb@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1350137007-10135-1-git-send-email-vicencb@gmail.com>
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
Subject: Re: [PATCH 0/5] archosg9: improve support for tablet
To: Vicente <vicencb@gmail.com>
Cc: barebox@lists.infradead.org

HI,

	can you use your REAL NAME please

Best Regards,
J.
On 16:03 Sat 13 Oct     , Vicente wrote:
> 
> This patch series solves/improves/implements:
>  ttyOxxx are 0 based, so change ttyO1 to ttyO0
>  change speed to 115200, there are some issues at Mbaud speed in linux
>  make the archos environment more flexible: initrd and zImage names are overwritable
>  added definition of PSR_I_BIT and some others, remaining PSR bits renamed to match the linux ones
>  disable interrupts at barebox exit
>  speed up initrd transfer
>  add option to benchmark file transfers
>  
> Thank you all for your review work:
>  Sascha Hauer
>  Jean-Christophe
>  Antony Pavlov 
>  Teresa Gamez 
> Which is greatly appreciated.
> 
> I also want to thank scholbert for the information posted in this forum thread:
> http://forum.xda-developers.com/showpost.php?p=25919128&postcount=4
> 
> Vicente (5):
>   ArchosG9: changed serial port and env
>   ARM: add/rename PSR bits to match linux names
>   ARM: ensure irqs are disabled at barebox exit
>   uimage: improve transfer speed
>   omap4_usbboot_fs: add benchmarking capabilities
> 
>  arch/arm/boards/archosg9/env/config       |  4 ++-
>  arch/arm/boards/archosg9/env/init/usbboot |  9 ++---
>  arch/arm/configs/archosg9_defconfig       |  2 +-
>  arch/arm/cpu/cpu.c                        | 11 +++++++
>  arch/arm/cpu/exceptions.S                 |  1 -
>  arch/arm/cpu/interrupts.c                 |  6 ++--
>  arch/arm/include/asm/ptrace.h             | 55 +++++++++++++++++--------------
>  common/uimage.c                           |  2 +-
>  scripts/Makefile                          |  2 +-
>  scripts/omap4_usbboot.c                   | 32 ++++++++++++++++--
>  10 files changed, 85 insertions(+), 39 deletions(-)
> 
> -- 
> 1.7.12.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
