Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YGOkB-0008P5-66
 for barebox@lists.infradead.org; Wed, 28 Jan 2015 09:17:04 +0000
Date: Wed, 28 Jan 2015 10:16:41 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150128091641.GI12209@pengutronix.de>
References: <1422430228-15758-1-git-send-email-s.christ@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1422430228-15758-1-git-send-email-s.christ@phytec.de>
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
Subject: Re: [PATCH] imx6: add partitions on SPI NOR for PFLA02
To: Stefan Christ <s.christ@phytec.de>
Cc: barebox@lists.infradead.org

On Wed, Jan 28, 2015 at 08:30:28AM +0100, Stefan Christ wrote:
> Add partitions oftree and kernel on SPI NOR and increase size of barebox and
> barebox-environment partition.
> 
> Signed-off-by: Stefan Christ <s.christ@phytec.de>
> ---
>  arch/arm/dts/imx6qdl-phytec-pfla02.dtsi | 13 +++++++++++--
>  1 file changed, 11 insertions(+), 2 deletions(-)

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
