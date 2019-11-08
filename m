Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSyVK-0003Rf-MD
 for barebox@lists.infradead.org; Fri, 08 Nov 2019 07:16:24 +0000
Date: Fri, 8 Nov 2019 08:16:16 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191108071616.6d44hnk7tgvhrhzw@pengutronix.de>
References: <20191107211119.68064-1-dev@lynxeye.de>
 <20191107211119.68064-12-dev@lynxeye.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191107211119.68064-12-dev@lynxeye.de>
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
Subject: Re: [PATCH 11/18] ARM: zynq: fixup SLCR ranges
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On Thu, Nov 07, 2019 at 10:11:12PM +0100, Lucas Stach wrote:
> Linux uses some kind of MFD scheme for the devices in the SLCR register
> range, which involves adding the parent register base address to the
> register offset of the child devices, as described in DT. This needs
> non-standard code in each of those child device drivers.
> 
> Instead of replicating this weird driver code, fix up the SLCR parent
> device DT ranges to do the translation.
> 
> Signed-off-by: Lucas Stach <dev@lynxeye.de>
> ---
>  arch/arm/dts/zynq-7000.dtsi | 4 ++++
>  arch/arm/dts/zynq-zed.dts   | 1 +
>  2 files changed, 5 insertions(+)
>  create mode 100644 arch/arm/dts/zynq-7000.dtsi
> 
> diff --git a/arch/arm/dts/zynq-7000.dtsi b/arch/arm/dts/zynq-7000.dtsi
> new file mode 100644
> index 000000000000..a4555a7a1b6c
> --- /dev/null
> +++ b/arch/arm/dts/zynq-7000.dtsi
> @@ -0,0 +1,4 @@
> +
> +&slcr {
> +	ranges = <0x0 0xf8000000 0x1000>;
> +};

Does this mean Linux won't start with this device tree anymore?

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
