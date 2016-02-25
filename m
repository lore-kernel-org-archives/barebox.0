Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vk0-x242.google.com ([2607:f8b0:400c:c05::242])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aYxli-0003nm-Fx
 for barebox@lists.infradead.org; Thu, 25 Feb 2016 15:23:55 +0000
Received: by mail-vk0-x242.google.com with SMTP id e6so3020106vkh.1
 for <barebox@lists.infradead.org>; Thu, 25 Feb 2016 07:23:32 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <1456391693-25172-2-git-send-email-antonynpavlov@gmail.com>
References: <1456391693-25172-1-git-send-email-antonynpavlov@gmail.com>
 <1456391693-25172-2-git-send-email-antonynpavlov@gmail.com>
From: Yegor Yefremov <yegorslists@googlemail.com>
Date: Thu, 25 Feb 2016 16:23:12 +0100
Message-ID: <CAGm1_kta6qT=dPgOhznsxDJnVU5A0V3-uwnwEHcaiu8JN-a2-A@mail.gmail.com>
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
Subject: Re: [PATCH 1/4] MIPS: ath79: pbl: import AR9331 CP0 init routine from
 U-Boot_mod
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox <barebox@lists.infradead.org>

On Thu, Feb 25, 2016 at 10:14 AM, Antony Pavlov <antonynpavlov@gmail.com> wrote:
> U-Boot_mod is a popular bootloader for Atheros AR93xx chips,
> please see https://github.com/pepe2k/u-boot_mod for details.
>
> It's reasonable to import some lowlevel AR9331 initialization
> code from U-Boot_mod.
>
> This patch imports AR9331 MIPS24K coprocessor0 initialization
> code from u-boot_mod/u-boot/cpu/mips/start_bootstrap.S.
>
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>

Reviewed-by: Yegor Yefremov <yegorslists@googlemail.com>

> ---
>  arch/mips/mach-ath79/include/mach/pbl_macros.h | 44 ++++++++++++++++++++++++++
>  1 file changed, 44 insertions(+)
>
> diff --git a/arch/mips/mach-ath79/include/mach/pbl_macros.h b/arch/mips/mach-ath79/include/mach/pbl_macros.h
> index c00dd28..810f49d 100644
> --- a/arch/mips/mach-ath79/include/mach/pbl_macros.h
> +++ b/arch/mips/mach-ath79/include/mach/pbl_macros.h
> @@ -179,4 +179,48 @@
>                         | AR933X_GPIO_FUNC_RSRV15, GPIO_FUNC
>  .endm
>
> +.macro hornet_mips24k_cp0_setup
> +       .set push
> +       .set noreorder
> +
> +       /*
> +        * Clearing CP0 registers - This is generally required for the MIPS-24k
> +        * core used by Atheros.
> +        */
> +       mtc0    zero, CP0_INDEX
> +       mtc0    zero, CP0_ENTRYLO0
> +       mtc0    zero, CP0_ENTRYLO1
> +       mtc0    zero, CP0_CONTEXT
> +       mtc0    zero, CP0_PAGEMASK
> +       mtc0    zero, CP0_WIRED
> +       mtc0    zero, CP0_INFO
> +       mtc0    zero, CP0_COUNT
> +       mtc0    zero, CP0_ENTRYHI
> +       mtc0    zero, CP0_COMPARE
> +
> +       li      t0, ST0_CU0 | ST0_ERL
> +       mtc0    t0, CP0_STATUS
> +
> +       mtc0    zero, CP0_CAUSE
> +       mtc0    zero, CP0_EPC
> +
> +       li      t0, CONF_CM_UNCACHED
> +       mtc0    t0, CP0_CONFIG
> +
> +       mtc0    zero, CP0_LLADDR
> +       mtc0    zero, CP0_WATCHLO
> +       mtc0    zero, CP0_WATCHHI
> +       mtc0    zero, CP0_XCONTEXT
> +       mtc0    zero, CP0_FRAMEMASK
> +       mtc0    zero, CP0_DIAGNOSTIC
> +       mtc0    zero, CP0_DEBUG
> +       mtc0    zero, CP0_DEPC
> +       mtc0    zero, CP0_PERFORMANCE
> +       mtc0    zero, CP0_ECC
> +       mtc0    zero, CP0_CACHEERR
> +       mtc0    zero, CP0_TAGLO
> +
> +       .set    pop
> +.endm
> +
>  #endif /* __ASM_MACH_ATH79_PBL_MACROS_H */
> --
> 2.7.0
>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
