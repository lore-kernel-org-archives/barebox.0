Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UPSeq-0001b6-9F
 for barebox@lists.infradead.org; Tue, 09 Apr 2013 07:07:56 +0000
Date: Tue, 9 Apr 2013 09:07:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130409070754.GB1906@pengutronix.de>
References: <1365337179-778-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1365337179-778-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH] mci: Fix bug if probe parameter is omitted
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Sun, Apr 07, 2013 at 04:19:39PM +0400, Alexander Shiyan wrote:
> barebox@Phytec phyCORE-i.MX27:/ mci0.probe=
> unable to handle NULL pointer dereference at address 0x00000000
> pc : [<a7f24700>]    lr : [<a7f193f4>]
> sp : a7fff8e0  ip : 00000000  fp : 00000001
> r10: 00000000  r9 : a6ffba8c  r8 : 00000000
> r7 : a7fffad0  r6 : a6ffbb04  r5 : a6fdd5cc  r4 : a6fdd658
> r3 : a7f18760  r2 : 00000000  r1 : 00000000  r0 : 00000000
> Flags: nZCv  IRQs off  FIQs off  Mode SVC_32
> [<a7f24700>] (simple_strtoul+0xc/0xc0) from [<a7f193f4>] (mci_set_probe+0xc94/0xd64)
> [<a7f193f4>] (mci_set_probe+0xc94/0xd64) from [<a7f252cc>] (dev_set_param+0x74/0x8c)
> [<a7f252cc>] (dev_set_param+0x74/0x8c) from [<a7f0606c>] (setenv+0x60/0xd8)
> [<a7f0606c>] (setenv+0x60/0xd8) from [<a7f00820>] (set_local_var.isra.3+0x5c/0x7c)
> [<a7f00820>] (set_local_var.isra.3+0x5c/0x7c) from [<a7f01a6c>] (run_list_real+0x494/0x934)
> [<a7f01a6c>] (run_list_real+0x494/0x934) from [<a7f01400>] (parse_stream_outer+0x198/0x270)
> [<a7f01400>] (parse_stream_outer+0x198/0x270) from [<a7f0209c>] (run_shell+0x3c/0x7c)
> [<a7f0209c>] (run_shell+0x3c/0x7c) from [<a7f05494>] (execute_command+0x38/0x78)
> [<a7f05494>] (execute_command+0x38/0x78) from [<a7f01db8>] (run_list_real+0x7e0/0x934)
> [<a7f01db8>] (run_list_real+0x7e0/0x934) from [<a7f019ec>] (run_list_real+0x414/0x934)
> [<a7f39578>] (unwind_backtrace+0x0/0xa8) from [<a7f24ed4>] (panic+0x28/0x3c)
> [<a7f24ed4>] (panic+0x28/0x3c) from [<a7f39a3c>] (do_exception+0x10/0x14)
> [<a7f39a3c>] (do_exception+0x10/0x14) from [<a7f39ac8>] (do_data_abort+0x2c/0x38)
> [<a7f39ac8>] (do_data_abort+0x2c/0x38) from [<a7f39788>] (data_abort+0x48/0x60)
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>

Applied to master. This shouldn't happen anymore when my parameter
update series is merged though.

Sascha

> ---
>  drivers/mci/mci-core.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
> index c8598c2..aef5c69 100644
> --- a/drivers/mci/mci-core.c
> +++ b/drivers/mci/mci-core.c
> @@ -1465,6 +1465,9 @@ static int mci_set_probe(struct device_d *mci_dev, struct param_d *param,
>  	if (rc != 0)
>  		return 0;
>  
> +	if (!val)
> +		return -EINVAL;
> +
>  	probe = simple_strtoul(val, NULL, 0);
>  	if (probe != 0) {
>  		rc = mci_card_probe(mci);
> -- 
> 1.8.1.5
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
