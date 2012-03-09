Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S64NY-0003BH-JG
 for barebox@lists.infradead.org; Fri, 09 Mar 2012 18:17:25 +0000
Date: Fri, 9 Mar 2012 19:17:22 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120309181722.GL3852@pengutronix.de>
References: <1331236232-32735-1-git-send-email-antonynpavlov@gmail.com>
 <1331236232-32735-6-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1331236232-32735-6-git-send-email-antonynpavlov@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC V2 5/6] net: add Realtek 8139 Ethernet controller support
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Mar 08, 2012 at 11:50:31PM +0400, Antony Pavlov wrote:
> This driver is based on Linux 2.6.39 8139too driver.
> 
> +
> +static void rtl8139_chip_reset(struct rtl8139_priv *priv)
> +{
> +	int i;
> +
> +#ifdef RTL8139_DEBUG
> +	printf("rtl8139_chip_reset()\n");
> +#endif

Please use dev_dbg()

> +
> +	/* Soft reset the chip. */
> +	RTL_W8(priv, ChipCmd, CmdReset);
> +
> +	/* Check that the chip has finished the reset. */
> +	for (i = 1000; i > 0; i--) {
> +		//barrier();
> +		if ((RTL_R8(priv, ChipCmd) & CmdReset) == 0)
> +			break;
> +		udelay(10);
> +	}

while (!is_timeout(start, 10 * MSECOND)

> +static struct pci_driver rtl8139_eth_driver = {
> +	.name = "rtl8139_eth",
> +	.id_table = rtl8139_pci_tbl,
> +	.probe = rtl8139_probe,
> +};
> +
> +static int rtl8139_init(void)
> +{
> +	pci_register_driver(&rtl8139_eth_driver);
> +
> +	add_generic_device("rtl8139_eth", -1, NULL, 0xb0000000, 16,
> +		IORESOURCE_MEM, NULL);

This makes me wonder. I assumed the PCI core would register the device.
Or is this just a leftover from an earlier version?

SAscha


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
