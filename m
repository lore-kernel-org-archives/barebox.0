Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-it1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hV1BT-0003gj-C0
 for barebox@lists.infradead.org; Sun, 26 May 2019 22:00:04 +0000
Received: by mail-it1-x144.google.com with SMTP id i63so21470668ita.3
 for <barebox@lists.infradead.org>; Sun, 26 May 2019 15:00:03 -0700 (PDT)
MIME-Version: 1.0
References: <20190521155626.9906-1-a.fatoum@pengutronix.de>
In-Reply-To: <20190521155626.9906-1-a.fatoum@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 26 May 2019 14:59:51 -0700
Message-ID: <CAHQ1cqEY0wCXTjEmSuNjdzB54zRO1RB8n4BMji9hewTEWg9SFA@mail.gmail.com>
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
Subject: Re: [PATCH v2 0/5] clk: imx6: work around LDB hang caused by ERR009219
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>, pza@pengutronix.de

On Tue, May 21, 2019 at 8:56 AM Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>
> Short version:
>
> barebox always reparents the ldb_di[01] clocks to pll5_video_div.
> Due to a hardware erratum, this can trigger a glitch that causes
> LDB lock up.
>
> Thus:
>
> 1) remove the automatic reparenting, like the kernel now does and
>    mark the affected clocks read only, so assigned-clock-parents
>    can't affect them
> 2) parse assigned-clock-parents in the clk-imx6 code as well, but
>    there use a convoluted non-glitchy work around to apply them
>
> Long version available alongside v1 here:
> https://www.spinics.net/lists/u-boot-v2/msg37658.html;
> and in the commit messages of the patches.
>
> Changes since v2:
>  - reordered/squashed commits after discussion with Sascha and Phillip
>  - removed superfluous comment
>  - add MUX_READ_ONLY at the correct place in the MUX_READ_ONLY arguments
>
> Except for the last two, the total diff, is exactly the same
> as v1's.
>
>
> Ahmad Fatoum (2):
>   clk: imx6: remove quirky clk_set_parent(LDB_diN_sel, pll5_video_div)
>   clk: imx6: define an enum for ldb mux inputs
>
> Fabio Estevam (1):
>   clk: imx6: Fix procedure to switch the parent of LDB_DI_CLK
>
> Philipp Zabel (2):
>   clk: imx6: Make the LDB_DI0 and LDB_DI1 clocks read-only
>   clk: imx6: Mask mmdc_ch1 handshake for periph2_sel and
>     mmdc_ch1_axi_podf
>
>  drivers/clk/imx/clk-imx6.c | 320 +++++++++++++++++++++++++++++++++++--
>  drivers/clk/imx/clk.h      |   8 +
>  2 files changed, 312 insertions(+), 16 deletions(-)
>

Tested this on non 6Q+ RDU2, seems to work as expected when the whole
series is applied.

Tested-by: Andrey Smirnov <andrew.smirnov@gmail.com>

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
