Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XCQ1s-0005Dg-H8
 for barebox@lists.infradead.org; Wed, 30 Jul 2014 09:18:37 +0000
Message-ID: <1406711777.4654.2.camel@weser.hi.pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 30 Jul 2014 11:16:17 +0200
In-Reply-To: <1406709580-5585-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1406709580-5585-1-git-send-email-sebastian.hesselbarth@gmail.com>
Mime-Version: 1.0
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
Subject: Re: [PATCH v3 0/8] Marvell EBU PCIe driver
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

Am Mittwoch, den 30.07.2014, 10:39 +0200 schrieb Sebastian Hesselbarth:
> Third and hopefully last round of the Marvell EBU PCIe driver patch
> set. Compared to v2, I disabled MBUS error propagation on Armada
> 370/XP as it hangs the SoC on unanswered PCIe accesses. Also, 64b
> BARs are now properly handled. I added two more pci core fixes that
> move PCI device registration after BAR setup and temporarely disable
> PCI_COMMAND' IO and MEM bits during BAR setup.
> 
> The MVEBU PCIe driver now gained support for Armada XP PHY setup
> which is anticipating a minor DT binding tweak to allow more than
> one marvell,pcie-lane passed to the node. Also, PCI address space
> does now also start at where we see it on MBUS. Some devices were
> not so happy about starting at 0.
> 
> The whole series has been tested on Armada 370 Mirabox and
> Armada XP Lenovo Iomega ix4-300d (not mainline yet).
> 
> Sebastian
> 
This looks good to me.

Patches 3-7 are
Reviewed-by: Lucas Stach <l.stach@pengutronix.de

Series is
Acked-by: Lucas Stach <l.stach@pengutronix.de>

-- 
Pengutronix e.K.             | Lucas Stach                 |
Industrial Linux Solutions   | http://www.pengutronix.de/  |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
