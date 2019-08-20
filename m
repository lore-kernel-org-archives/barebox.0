Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0CZo-0003wM-Pj
 for barebox@lists.infradead.org; Tue, 20 Aug 2019 22:26:06 +0000
Received: by mail-io1-xd43.google.com with SMTP id z3so699257iog.0
 for <barebox@lists.infradead.org>; Tue, 20 Aug 2019 15:26:04 -0700 (PDT)
MIME-Version: 1.0
References: <20190820221638.19492-1-cory.tusar@zii.aero>
In-Reply-To: <20190820221638.19492-1-cory.tusar@zii.aero>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 20 Aug 2019 15:25:52 -0700
Message-ID: <CAHQ1cqH-6-c8WvJfm7zqsRy6hM0HTfUbs27RBqL_=8ZfwXvr0g@mail.gmail.com>
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
Subject: Re: [PATCH] Documentation: zii-vf610-dev: Fix 'halt' in openocd
 configuration script
To: Cory Tusar <Cory.Tusar@zii.aero>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Chris Healy <Chris.Healy@zii.aero>

On Tue, Aug 20, 2019 at 3:17 PM Cory Tusar <Cory.Tusar@zii.aero> wrote:
>
> When attempting to use the existing configuration file to bootstrap
> an SCU4 AIB board, openocd would consistently fail on the 'halt' command
> with a "Target not examined yet" error.  Dumping target information
> showed that vf610.cpu1 was the active target, rather that vf610.cpu0.
>
> Adding a command prior to the halt to explicitly set the target core
> resulted in proper operation.
>
> Tested with openocd-0.10.0+dev-00924-g16496488 on a Zodiac SCU4 AIB.
>
> Signed-off-by: Cory Tusar <cory.tusar@zii.aero>
> ---
>  Documentation/boards/imx/zii-vf610-dev/openocd.cfg | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/boards/imx/zii-vf610-dev/openocd.cfg b/Documentation/boards/imx/zii-vf610-dev/openocd.cfg
> index 222f48711..5127c7623 100644
> --- a/Documentation/boards/imx/zii-vf610-dev/openocd.cfg
> +++ b/Documentation/boards/imx/zii-vf610-dev/openocd.cfg
> @@ -258,6 +258,7 @@ proc safe_reset {} {
>  proc start_barebox { } {
>         set VF610_DDR_BASE_ADDR 0x80000000
>         echo "Bootstrap: Loading Barebox"
> +       targets vf610.cpu0

There's nothing wrong with this fix as is, however I think this is
something that should be fixed in OpenOCD itself. Both
tcl/target/imx6.cfg and tcl/target/vybrid_vf6xx.cfg are missing proper
"targets" directive, compared to e.g. tcl/target/imx7.cfg.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
