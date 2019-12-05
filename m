Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icmB2-0005en-Vv
 for barebox@lists.infradead.org; Thu, 05 Dec 2019 08:07:58 +0000
Date: Thu, 5 Dec 2019 09:07:55 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191205080755.nc2ao3hjb5eli7ud@pengutronix.de>
References: <1575380921-160915-1-git-send-email-s.riedmueller@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1575380921-160915-1-git-send-email-s.riedmueller@phytec.de>
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
Subject: Re: [PATCH] ARM: dts: imx6qdl: phycore: Remove emmc vmmc-supply
To: Stefan Riedmueller <s.riedmueller@phytec.de>
Cc: barebox@lists.infradead.org

Hi Stefan,

On Tue, Dec 03, 2019 at 02:48:41PM +0100, Stefan Riedmueller wrote:
> There is no driver for the eMMC's vmmc-supply regulator in the barebox.
> Use a dummy regulator instead by simply deleting the vmmc-supply
> property.
> 
> Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
> ---
>  arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi b/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
> index 69f252b42382..974e271f453d 100644
> --- a/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
> +++ b/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
> @@ -112,6 +112,7 @@
>  };
>  
>  &usdhc4 {
> +	/delete-property/ vmmc-supply;

I don't like this approach very much. It's fine for barebox, but leads
to problems once you start Linux with the barebox device tree. I'd
rather go with the unmodified device trees (apart from the things
barebox changes to the device trees in order to start Linux).

One idea that comes to my mind is: Would it be possible to provide a
call like

int regulator_provide_dummy(struct device_node *np);

Boards could call this to let barebox provide a dummy regulator for the
given node (the "dlg,da9062" node in your case) and its child nodes.
In of_regulator_get() we then see if the desired regulator is a child
node of a node registered as dummy provider, then register a dummy
regulator and return it.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
