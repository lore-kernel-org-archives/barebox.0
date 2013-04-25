Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x234.google.com ([2a00:1450:400c:c00::234])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UVMGW-0000to-FE
 for barebox@lists.infradead.org; Thu, 25 Apr 2013 13:31:13 +0000
Received: by mail-wg0-f52.google.com with SMTP id k13so1456316wgh.19
 for <barebox@lists.infradead.org>; Thu, 25 Apr 2013 06:31:09 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1366880959-25765-1-git-send-email-u.bely@sam-solutions.com>
References: <20130424201127.GG32299@pengutronix.de>
 <1366880959-25765-1-git-send-email-u.bely@sam-solutions.com>
Date: Thu, 25 Apr 2013 08:31:09 -0500
Message-ID: <CAGo_u6q1q=pPfWNOcCrgB0xxS+jL2axEyHEC-0EsOr9gUbznVA@mail.gmail.com>
From: "menon.nishanth@gmail.com" <menon.nishanth@gmail.com>
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
Subject: Re: [PATCH] ARM: OMAP5 processors support
To: Uladzimir Bely <u.bely@sam-solutions.com>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

Hi,
On Thu, Apr 25, 2013 at 4:09 AM, Uladzimir Bely
<u.bely@sam-solutions.com> wrote:
> Since commit
>         8bafdc1 ARM i.MX28: make chip reset via reset pin work again
>
> Patch adds basic OMAP5 support to barebox.
>
> Tested on SD card with 2 partitions: vfat (MLO, barebox.bin, zImage)
> and ext3 (rootfs). Barebox successfully starts kernel
> from commandline with "bootm /boot/zImage" command.
>
> Building MLO: make omap5_sevm_xload_defconfig; make.
> Building barebox.bin: make omap5_sevm_defconfig; make.
>
> It's an optimized and cleaned up version of previous patch.

Our upstream kernel support will be DT-only :). Further, OMAP5 ES2.0
SEVM does not exist. ES1.0 is few initial samples for development
purposes - there are drastic differences in base addresses etc for
OMAP5 ES2.0.

If providing support for ES2.0, please use uEVM as reference platform.
ES1.0 was meant to be in-development processor - no longer produced
and definitely meant to be replaced with ES2.0.
<snip>
Regards,
Nishanth Menon

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
