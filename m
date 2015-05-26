Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Yx8Am-00045f-Dm
 for barebox@lists.infradead.org; Tue, 26 May 2015 06:17:09 +0000
Date: Tue, 26 May 2015 08:16:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150526061645.GX6325@pengutronix.de>
References: <1432296555-48594-1-git-send-email-w.egorov@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1432296555-48594-1-git-send-email-w.egorov@phytec.de>
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
Subject: Re: [PATCH 1/2] ARM: dts: Add an am33xx include file for MLO size
 reduction
To: Wadim Egorov <w.egorov@phytec.de>
Cc: barebox@lists.infradead.org

On Fri, May 22, 2015 at 02:09:14PM +0200, Wadim Egorov wrote:
> AM335x's MLO size limit is 109K.
> The am33xx.dtsi file adds spare and never used nodes to the dtb.
> With this patch we add a file to remove the unused nodes and reduce the
> size of the dtb.
> 
> Including this file will reduce the lzo packed MLO size about 8K.
> 
> Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
> ---
>  arch/arm/dts/strip-am33xx.dtsi | 66 ++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 66 insertions(+)
>  create mode 100644 arch/arm/dts/strip-am33xx.dtsi
> 
> diff --git a/arch/arm/dts/strip-am33xx.dtsi b/arch/arm/dts/strip-am33xx.dtsi

You remove the UARTs not used on *Phytec* boards, they could well be
used on other boards. While I agree for the CAN nodes and many others,
UARTs should be kept. Also the GPIOs can be very useful in the MLO. I
suggest that you either change the name of this file to something less
generic (am33xx-phytec-strip.dtsi) or you make a generic more generic
file and remove the unused UARTs / GPIOs in the board specific dts file.
Whatever you do, please keep the am33xx- at the beginning of the
filename.

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
