Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Wdvpn-0005Rg-G7
 for barebox@lists.infradead.org; Sat, 26 Apr 2014 06:11:36 +0000
Date: Sat, 26 Apr 2014 08:10:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140426061047.GB5858@pengutronix.de>
References: <1398412667-18820-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1398412667-18820-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH 0/2] clk: fixed-factor: add DT init function
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Apr 25, 2014 at 11:57:45AM +0400, Antony Pavlov wrote:
> This short patchseries imports DT init function for fixed-factor clocks
> from linux kernel.
> 
> Antony Pavlov (2):
>   clk: move of_clk_get_parent_name() to common clk code
>   clk: fixed-factor: add DT init function

Applied, thanks

Sascha

> 
>  drivers/clk/clk-fixed-factor.c | 36 ++++++++++++++++++++++++++++++++++++
>  drivers/clk/clk.c              | 20 ++++++++++++++++++++
>  drivers/clk/socfpga.c          | 19 -------------------
>  include/linux/clk.h            |  1 +
>  4 files changed, 57 insertions(+), 19 deletions(-)
> 
> -- 
> 1.9.0
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
