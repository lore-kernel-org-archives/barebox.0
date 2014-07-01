Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from bamako.nerim.net ([178.132.17.28])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X1sVe-0003zx-C9
 for barebox@lists.infradead.org; Tue, 01 Jul 2014 07:29:47 +0000
Message-ID: <53B26353.2040008@kalray.eu>
Date: Tue, 01 Jul 2014 09:29:23 +0200
From: =?UTF-8?B?Q2zDqW1lbnQgTMOpZ2Vy?= <clement.leger@kalray.eu>
MIME-Version: 1.0
References: <1403735538-25437-1-git-send-email-antonynpavlov@gmail.com>	
 <1403735538-25437-2-git-send-email-antonynpavlov@gmail.com>
 <1404123503.4305.16.camel@weser.hi.pengutronix.de>
In-Reply-To: <1404123503.4305.16.camel@weser.hi.pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC v3 1/5] PCI: initial commit
To: Lucas Stach <l.stach@pengutronix.de>, Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

> +int
> +pci_read_config_byte(struct pci_dev *dev, u8 where, u8 *val)
> +{
> +	return pci_bus_read_config_byte(dev->bus, dev->devfn, where, val);
> +}
> +
> +int
> +pci_read_config_word(struct pci_dev *dev, u8 where, u16 *val)
> +{
> +	return pci_bus_read_config_word(dev->bus, dev->devfn, where, val);
> +}
> +
> +int
> +pci_read_config_dword(struct pci_dev *dev, u8 where, u32 *val)
> +{
> +	return pci_bus_read_config_dword(dev->bus, dev->devfn, where, val);
> +}
> +
> +int
> +pci_write_config_byte(struct pci_dev *dev, u8 where, u8 val)
> +{
> +	return pci_bus_write_config_byte(dev->bus, dev->devfn, where, val);
> +}
> +
> +int
> +pci_write_config_word(struct pci_dev *dev, u8 where, u16 val)
> +{
> +	return pci_bus_write_config_word(dev->bus, dev->devfn, where, val);
> +}
> +
> +int
> +pci_write_config_dword(struct pci_dev *dev, u8 where, u32 val)
> +{
> +	return pci_bus_write_config_dword(dev->bus, dev->devfn, where, val);
> +}
>
I would suggest replacing the "u8 where" (in pci_read/write_config and 
others) by "int where" to allow future access to PCIe extended 
configuration space (up to offset 0x1000).

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
