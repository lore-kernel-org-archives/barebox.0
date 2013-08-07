Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f176.i.mail.ru ([94.100.178.93])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V72Vr-0006Jc-SW
 for barebox@lists.infradead.org; Wed, 07 Aug 2013 12:06:49 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Wed, 07 Aug 2013 16:06:24 +0400
Message-ID: <1375877184.576122343@f176.i.mail.ru>
In-Reply-To: <20130807113740.GD2911@lukather>
References: <1375868734-32357-1-git-send-email-s.hauer@pengutronix.de>
 <1375869342.153074079@f120.i.mail.ru>
 <20130807113740.GD2911@lukather>
Reply-To: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
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
Subject: =?UTF-8?B?UmU6IFtQQVRDSF0gUmV2ZXJ0ICJBUk06IFVzZSBhcm1saW51eF9ib290cGFy?=
 =?UTF-8?B?YW1zIGFkZHJlc3MgZm9yIERUQiI=?=
To: =?UTF-8?B?TWF4aW1lIFJpcGFyZA==?= <maxime.ripard@free-electrons.com>
Cc: barebox@lists.infradead.org

> On Wed, Aug 07, 2013 at 01:55:42PM +0400, Alexander Shiyan wrote:
> > > This patch placed the flattened devicetree to armlinux_bootparams.
> > > armlinux_bootparams normally is at SDRAM_START + 0x100. The kernels
> > > initial page tables are normally at SDRAM_START + 0x4000, so the
> > > flattened devicetree gets overwritten once it exceeds 0x3f00 bytes
> > > which is quite common.
> > > 
> > > Revert this patch for now once a better solution can be found
> > 
> > In such a case, tree may be placed immediately after the kernel?
> > It can also serve as an automatic option "ARM_APPENDED_DTB".
> 
> That won't work either, since the DTB will be overwritten by the kernel
> decompressor.

arch/arm/Kconfig:
...
config ARM_APPENDED_DTB
	bool "Use appended device tree blob to zImage (EXPERIMENTAL)"
	depends on OF && !ZBOOT_ROM
	help
	  With this option, the boot code will look for a device tree binary
	  (DTB) appended to zImage
	  (e.g. cat zImage <filename>.dtb > zImage_w_dtb).
...

So, DTB is placed immediately after the kernel.

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
