Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S648U-0007wa-F8
 for barebox@lists.infradead.org; Fri, 09 Mar 2012 18:01:51 +0000
Date: Fri, 9 Mar 2012 19:01:48 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120309180148.GK3852@pengutronix.de>
References: <1331236232-32735-1-git-send-email-antonynpavlov@gmail.com>
 <1331236232-32735-2-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1331236232-32735-2-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [RFC V2 1/6] PCI: initial commit (draft)
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Mar 08, 2012 at 11:50:27PM +0400, Antony Pavlov wrote:
> used shorten version of linux-2.6.39 pci_ids.h
> 
> +
> +static int pci_init(void)
> +{
> +	pcibios_init();
> +
> +	if (!pci_present()) {
> +		printf("PCI: No PCI bus detected\n");
> +		return 0;
> +	}
> +
> +	/* give BIOS a chance to apply platform specific fixes: */
> +	//pcibios_fixup();
> +
> +	return 0;
> +}
> +postcore_initcall(pci_init);

Here the logic is the wrong way round. The initcall should be in your
architecture code which then calls register_pci_controller().

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
