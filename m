Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h0oOm-0000zI-HM
 for barebox@lists.infradead.org; Mon, 04 Mar 2019 14:16:58 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=a3f-osx.local)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <a.fatoum@pengutronix.de>) id 1h0oOi-0003p8-Sv
 for barebox@lists.infradead.org; Mon, 04 Mar 2019 15:16:52 +0100
References: <20190219121018.29736-1-a.fatoum@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <f40efe6a-d95a-d017-4758-47397e447435@pengutronix.de>
Date: Mon, 4 Mar 2019 15:16:51 +0100
MIME-Version: 1.0
In-Reply-To: <20190219121018.29736-1-a.fatoum@pengutronix.de>
Content-Language: en-US
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
Subject: Re: [PATCH 1/2] images: pbl: verify CONFIG_BAREBOX_MAX_IMAGE_SIZE is
 not exceeded
To: barebox@lists.infradead.org

Hello,

On 19/2/19 13:10, Ahmad Fatoum wrote:
> For platforms such as the at91, the boot ROM imposes an upper limit
> on barebox file size.  Prior to 5a1a5ed253 ("ARM: images: use piggydata"),
> BAREBOX_MAX_PBLX_SIZE seems to have been the way to go for limiting
> the size of the final barebox binary when using the PBL.
> With pblx removed, this variable is of no use, so have the existing
> BAREBOX_MAX_IMAGE_SIZE replace its functionality.
> 
> Currently BAREBOX_MAX_IMAGE_SIZE is only checked against in the non-PBL
> case, so add a check in the PBL case as well.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/configs/am335x_mlo_defconfig |  2 +-
>  common/Kconfig                        | 10 ----------
>  images/Makefile                       |  1 +
>  3 files changed, 2 insertions(+), 11 deletions(-)
> 

any news on these two patches?

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
