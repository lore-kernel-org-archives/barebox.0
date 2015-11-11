Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yk0-x235.google.com ([2607:f8b0:4002:c07::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZwQ3L-0000Zy-Bw
 for barebox@lists.infradead.org; Wed, 11 Nov 2015 07:42:48 +0000
Received: by ykba77 with SMTP id a77so36604757ykb.2
 for <barebox@lists.infradead.org>; Tue, 10 Nov 2015 23:42:26 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <1447204155-16773-3-git-send-email-antonynpavlov@gmail.com>
References: <1447204155-16773-1-git-send-email-antonynpavlov@gmail.com>
 <1447204155-16773-3-git-send-email-antonynpavlov@gmail.com>
From: Yegor Yefremov <yegorslists@googlemail.com>
Date: Wed, 11 Nov 2015 08:42:06 +0100
Message-ID: <CAGm1_kvW8McKJ4SHKvdGJN_Xy-cyJupXarMCWAdX=hvh=gWx5w@mail.gmail.com>
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
Subject: Re: [PATCH 2/3] MIPS: black-swift: skip pbl lowlevel init if running
 from RAM
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Nov 11, 2015 at 2:09 AM, Antony Pavlov <antonynpavlov@gmail.com> wrote:
> Black Swift has 16 MiB flash boot ROM that can be remapped to 0xbf000000.
>
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  arch/mips/boards/black-swift/include/board/board_pbl_start.h | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/arch/mips/boards/black-swift/include/board/board_pbl_start.h b/arch/mips/boards/black-swift/include/board/board_pbl_start.h
> index f78e0d9..7394092 100644
> --- a/arch/mips/boards/black-swift/include/board/board_pbl_start.h
> +++ b/arch/mips/boards/black-swift/include/board/board_pbl_start.h
> @@ -28,9 +28,12 @@
>
>         mips_disable_interrupts
>
> +       pbl_blt 0xbf000000 skip_pll_ram_config t8
> +
>         pbl_ar9331_pll
>         pbl_ar9331_ddr2_config
>
> +skip_pll_ram_config:
>         pbl_ar9331_uart_enable
>         debug_ll_ar9331_init
>         mips_nmon
> --
> 2.6.2

Tested-by: Yegor Yefremov <yegorslists@googlemail.com>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
