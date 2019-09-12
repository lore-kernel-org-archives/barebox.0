Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8J7A-0007W6-4K
 for barebox@lists.infradead.org; Thu, 12 Sep 2019 07:02:10 +0000
Date: Thu, 12 Sep 2019 09:01:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190912070153.2nocas4oybad7aow@pengutronix.de>
References: <20190912065412.9459-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190912065412.9459-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH v2 0/2] ARM: imx6: add new MarsBoard support
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, eric@eukrea.com

On Thu, Sep 12, 2019 at 08:54:10AM +0200, Ahmad Fatoum wrote:
> I've picked up v1 of the patch from here:
> https://barebox.infradead.narkive.com/mn9ZpGu6/patch-2-3-marsboard-add-new-board
> 
> and worked in the review feedback from back then.
> 
> v1 -> v2:
>  - rebased on current upstream/next
>  - removed seperate defconfig and added board to imx_v7_defconfig (Lucas)
>  - added boot mode documentation
>  - removed redundant VPU/IPU AXI configurations from DCD-Table (Sascha)
>  - removed setting console in linux bootargs (Sascha)
>  - have board-specific environment use bbenv-y in Makefile (Sascha)
>  - added barebox device tree that includes kernel device tree
>  - used imx6_uart_setup_ll and imx_setup_pad for debug_ll UART
>  - used compressed DTB
>  - used imx6q_barebox_entry instead of hardcoding RAM size
> 
> Ahmad Fatoum (2):
>   ARM: imx6: add Embest MarSBoard support
>   ARM: imx_v7_defconfig: enable Embdest MarS board
> 

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
