Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zx2MV-0004BO-H8
 for barebox@lists.infradead.org; Fri, 13 Nov 2015 00:37:08 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Fri, 13 Nov 2015 00:36:22 +0000
Message-ID: <1447374984.4553.133.camel@rtred1test09.kymeta.local>
Content-Language: en-US
Content-ID: <E5D617A7A9C4DF4DB3AD031F7204C0EE@kymetacorp.com>
MIME-Version: 1.0
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
Subject: MCI bus-width host caps via device tree don't work properly for dw
 and imx
To: barebox <barebox@lists.infradead.org>

I found my 4-bit connected eMMC chip wasn't working because barebox was
trying to run it in 8-bit mode.  I had the proper bus-width property in
the device tree, but this doesn't work.

The problem is that mci_of_parse() uses bus-width to _add_ 8-bit and/or
4-bit caps to the host.  It doesn't remove any host_caps the driver
already has set.  So if the driver supports 8-bit but the DT bus-width
is 4, you still get a driver that thinks 8-bit will work.

You can see this in dw_mmc.c, dw_mmc_probe() sets:
host->mci.host_caps = MMC_CAP_4_BIT_DATA | MMC_CAP_8_BIT_DATA
then later
mci_of_parse(&host->mci);
return mci_register(&host->mci);

The mci_of_parse call will not remove the 4 and 8 bits caps.  There is
the same problem in imx-esdhc.c.  The other two users of mci_of_parse,
mxs.c and tegra-sdmmc.c, don't have this problem, since they don't set
any bus-width host_caps in the driver and depend on the DT or
platform_data to have this info.

With drivers split 50/50, which is the right way?  Don't have the driver
report what bits it supports and depend on the device tree to have that
information?  Or have of_mci_parse remove widths that aren't indicated
as supported in the DT, so that the DT can remove widths the hardware
indicates it supports.
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
