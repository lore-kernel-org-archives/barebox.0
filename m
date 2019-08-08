Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvbne-0005Wx-4W
 for barebox@lists.infradead.org; Thu, 08 Aug 2019 06:21:23 +0000
Date: Thu, 8 Aug 2019 08:21:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190808062118.iik3gmbrcfc3eyi6@pengutronix.de>
References: <cover.20f706d0d5a7ead5c114378becb025aefb9c7b8a.1565068235.git-series.r.czerwinski@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.20f706d0d5a7ead5c114378becb025aefb9c7b8a.1565068235.git-series.r.czerwinski@pengutronix.de>
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
Subject: Re: [PATCH v3 00/16] HAB for i.MX8MQ
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Aug 06, 2019 at 07:10:50AM +0200, Rouven Czerwinski wrote:
> This patch series adds HAB support for i.MX8MQ.
> This was tested on the NXP i.MX8MQ EVK. Other i.MX8MQ boards should
> still be supported but will require a lowlevel.c rework similar to this
> done for the i.MX8MQ.
> 
> The first part adds the necessary HAB interfaces for i.MX8MQ. Than the
> ability to read and copy the piggydata to the correct location in DRAM
> is added. Next imx-image is adjusted to support signing of the i.MX8MQ
> images. The fourth part is the addition of sha256 to the PBL. This is
> necessary since only the PBL is authenticated using HAB, the main
> barebox binary is than authenticated to a sha256sum built into the PBL.
> Finally the EVK board files are adjusted to the changes.

Applied, thanks

There was a merge conflict in arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
with ea8981915e ("ARM: nxp-imx8mq-evk: Do setup_c() before accessing global variables").
Please check if I got it right.

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
