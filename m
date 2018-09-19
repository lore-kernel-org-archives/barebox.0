Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g2X7T-0007lr-EG
 for barebox@lists.infradead.org; Wed, 19 Sep 2018 07:41:57 +0000
Date: Wed, 19 Sep 2018 09:41:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180919074143.GM4097@pengutronix.de>
References: <20180918052122.12248-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180918052122.12248-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 0/7] non-coherent Rx buffers in FEC and some small fixes
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Sep 17, 2018 at 10:21:15PM -0700, Andrey Smirnov wrote:
> Everyone:
> 
> This series was created while working on converting FEC driver to use
> non-coherent memory for Rx buffers as a part of addressing feedback
> for [1]. Patch 7/7 implements said change while the rest of the
> patches are just small improvements (IMHO, of course) that I made
> while looking at FEC's source code.
> 
> Tested by using TFTP on following boards:
> 
>   - NXP i.MX8MQ EVK
>   - ZII i.MX6Q RDU2
>   - ZII VF610 CFU1
> 
> Feedback is welcome!
> 

Applied, thanks

Sascha

> Thanks,
> Andrey Smirnov
> 
> [1] http://lists.infradead.org/pipermail/barebox/2018-August/034216.html
> 
> Andrey Smirnov (7):
>   net: fec_imx: Drop extra indentation level by exiting early
>   net: fec_imx: Don't check bd_status & FEC_RBD_ERR twice
>   net: fec_imx: Read data_length only once
>   net: fec_imx: Drop struct fec_frame
>   net: fec_imx: Drop frame_length
>   net: fec_imx: Make use of readx_poll_timeout() macros
>   net: fec_imx: Do not use DMA coherent memory for Rx buffers
> 
>  drivers/net/fec_imx.c | 141 +++++++++++++++++++++---------------------
>  1 file changed, 69 insertions(+), 72 deletions(-)
> 
> -- 
> 2.17.1
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
