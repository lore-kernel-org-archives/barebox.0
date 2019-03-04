Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h0sts-0004Uq-6t
 for barebox@lists.infradead.org; Mon, 04 Mar 2019 19:05:21 +0000
Received: by mail-lj1-x242.google.com with SMTP id v16so5266819ljg.13
 for <barebox@lists.infradead.org>; Mon, 04 Mar 2019 11:05:18 -0800 (PST)
Date: Mon, 4 Mar 2019 22:05:06 +0300
From: Peter Mamonov <pmamonov@gmail.com>
Message-ID: <20190304190504.kmazotkohbssz2vn@chr>
References: <20190218075202.10091-1-o.rempel@pengutronix.de>
 <20190218075202.10091-2-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190218075202.10091-2-o.rempel@pengutronix.de>
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
Subject: Re: [PATCH v1 2/4] MIPS: relocation: add relocation support
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: antonypavlov@gmail.com, barebox@lists.infradead.org, Oleksij Rempel <linux@rempel-privat.de>

Hi, Oleksij,

On Mon, Feb 18, 2019 at 08:52:00AM +0100, Oleksij Rempel wrote:
> From: Oleksij Rempel <linux@rempel-privat.de>
> 
> this patch i a port of following patch from u-boot with some additional
> integration changes and fixes of original code:
> | Subject: [PATCH] MIPS: Stop building position independent code
> |
> | U-Boot has up until now built with -fpic for the MIPS architecture,
> | producing position independent code which uses indirection through a
> | global offset table, making relocation fairly straightforward as it
> | simply involves patching up GOT entries.
> |
> | Using -fpic does however have some downsides. The biggest of these is
> | that generated code is bloated in various ways. For example, function
> | calls are indirected through the GOT & the t9 register:
> |
> |   8f998064   lw     t9,-32668(gp)
> |   0320f809   jalr   t9
> |
> | Without -fpic the call is simply:
> |
> |   0f803f01   jal    be00fc04 <puts>
> |
> | This is more compact & faster (due to the lack of the load & the
> | dependency the jump has on its result). It is also easier to read &
> | debug because the disassembly shows what function is being called,
> | rather than just an offset from gp which would then have to be looked up
> | in the ELF to discover the target function.
> |
> | Another disadvantage of -fpic is that each function begins with a
> | sequence to calculate the value of the gp register, for example:
> |
> |   3c1c0004   lui    gp,0x4
> |   279c3384   addiu  gp,gp,13188
> |   0399e021   addu   gp,gp,t9
> |
> | Without using -fpic this sequence no longer appears at the start of each
> | function, reducing code size considerably.
> |
> | This patch switches U-Boot from building with -fpic to building with
> | -fno-pic, in order to gain the benefits described above. The cost of
> | this is an extra step during the build process to extract relocation
> | data from the ELF & write it into a new .rel section in a compact
> | format, plus the added complexity of dealing with multiple types of
> | relocation rather than the single type that applied to the GOT. The
> | benefit is smaller, cleaner, more debuggable code. The relocate_code()
> | function is reimplemented in C to handle the new relocation scheme,
> | which also makes it easier to read & debug.
> |
> | Taking maltael_defconfig as an example the size of u-boot.bin built
> | using the Codescape MIPS 2016.05-06 toolchain (gcc 4.9.2, binutils
> | 2.24.90) shrinks from 254KiB to 224KiB.
> |
> | Signed-off-by: Paul Burton <paul.burton@imgtec.com>
> 
> Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
> ---
>
> [...]
>
> diff --git a/arch/mips/Makefile b/arch/mips/Makefile
> index 5fbd51ceee..5eccf18fe4 100644
> --- a/arch/mips/Makefile
> +++ b/arch/mips/Makefile
> @@ -11,7 +11,7 @@ endif
>  
>  CPPFLAGS += -D__MIPS__ -fno-strict-aliasing -fno-merge-constants
>  
> -cflags-y += -G 0 -mno-abicalls -fno-pic -pipe
> +cflags-y += -G 0 -mno-abicalls -pipe

The patch you've ported from das u-boot removes `-fpic` flag, yet your patch 
removes `-fno-pic`, i.e. it does the opposite thing.

Regards,
Peter

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
