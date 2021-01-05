Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kwlJ1-0002na-Fd
 for barebox@lists.infradead.org; Tue, 05 Jan 2021 12:19:20 +0000
Date: Tue, 5 Jan 2021 13:19:17 +0100
Message-ID: <20210105121917.GD19063@pengutronix.de>
References: <20210101225228.2166084-1-ahmad@a3f.at>
 <20210101225228.2166084-3-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210101225228.2166084-3-ahmad@a3f.at>
From: Sascha Hauer <sha@pengutronix.de>
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
Subject: Re: [PATCH 3/4] video: implement bochs dispi / QEMU VGA driver for
 PCI and ISA
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org

On Fri, Jan 01, 2021 at 11:52:27PM +0100, Ahmad Fatoum wrote:
> All SVGA devices in Qemu, except for Cirrus, support the bochs display
> interface, which is very easy to set up. Add a driver for it.
> 
> This has been tested with:
> 
>  PCI: qemu-system-mips(el) -device VGA + barebox qemu-malta_defconfig
>  ISA: qemu-system-x86_64 -device isa-vga + barebox efi_defconfig
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>

I gave this a shot on MIPS qemu and indeed, works for me as well.

Applied this series, thanks

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
