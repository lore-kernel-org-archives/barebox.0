Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h0iKz-0002XM-Mv
 for barebox@lists.infradead.org; Mon, 04 Mar 2019 07:48:39 +0000
Date: Mon, 4 Mar 2019 08:48:35 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190304074835.2glepvcxlivahavn@pengutronix.de>
References: <20190227132215.9765-1-tomaz.solc@tablix.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190227132215.9765-1-tomaz.solc@tablix.org>
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
Subject: Re: [PATCH v2 0/3] VideoCore FDT interop for Raspberry Pi
To: Tomaz Solc <tomaz.solc@tablix.org>
Cc: barebox@lists.infradead.org

On Wed, Feb 27, 2019 at 02:22:12PM +0100, Tomaz Solc wrote:
> Changes from the first patch series:
> 
>  - Drop of_bootargs command in favour of automatically extracting VideoCore
>    bootargs to vc.bootargs global in board initialization. Sorry for forgetting
>    to update the copyright header in of_bootargs.c. This file is gone now.
>  - Replace printf() with pr_err() for printing error messages in rpi-common.c.
> 
> Best regards
> Tomaz
> 
> Tomaz Solc (3):
>   ARM: start: save end of memory passed to start.
>   ARM: rpi: save fdt that was passed from VideoCore
>   ARM: rpi: save bootargs from VC FDT to vc.bootargs

Applied, thanks

Sascha


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
