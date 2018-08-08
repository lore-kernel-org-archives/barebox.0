Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fnI3R-0003H2-IP
 for barebox@lists.infradead.org; Wed, 08 Aug 2018 06:34:47 +0000
Date: Wed, 8 Aug 2018 08:34:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180808063431.uqu3r2x3gr73l54s@pengutronix.de>
References: <20180720010357.22822-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180720010357.22822-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH v2 00/12] ARM: i.MX8MQ and EVK support, part II
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Jul 19, 2018 at 06:03:45PM -0700, Andrey Smirnov wrote:
> Everyone:
> 
> This is part II of i.MX8MQ EVK board support patches. This time this
> is bits and pieces that were necessary in order to allow booting
> vendor Linux kernel availible here (tag: rel_imx_4.9.51_8mq_ga):
> 
>     https://source.codeaurora.org/external/imx/linux-imx
> 
> Sources for ATF were taken from here (tag: rel_imx_4.9.51_8mq_ga):
> 
>     https://source.codeaurora.org/external/imx/imx-atf
> 
> This patchest is also availible at:
> 
>     https://github.com/ndreys/barebox/tree/imx8m-support-part-II-v2
> 
> Feedback is welcome!
> 
> Changes since [v1]:
> 
>     - Opcode patching is replaced with placing barebox image at the
>       right spot
> 
>     - ATF loading code is converted into a function (was a macro
>       originally)
> 
>     - It is now up to the user to check current EL when calling
>       imx8mq_atf_load_bl31()
> 
>     - Other various small change as per Sascha's feedback
> 
> [v1] http://lists.infradead.org/pipermail/barebox/2018-June/033922.html
> 
> Thanks,
> Andrey Smirnov

Applied with some typos fixed, thanks

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
