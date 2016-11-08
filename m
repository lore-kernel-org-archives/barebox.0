Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp93.iad3a.emailsrvr.com ([173.203.187.93])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c45ID-0004Ng-BO
 for barebox@lists.infradead.org; Tue, 08 Nov 2016 12:14:24 +0000
References: <29eaf37e-819f-dfdd-0403-350682193845@mev.co.uk>
 <20161108080856.qyorpnvj4serg6ym@pengutronix.de>
From: Ian Abbott <abbotti@mev.co.uk>
Message-ID: <d728234e-959a-c21d-7df1-b530355425de@mev.co.uk>
Date: Tue, 8 Nov 2016 12:13:58 +0000
MIME-Version: 1.0
In-Reply-To: <20161108080856.qyorpnvj4serg6ym@pengutronix.de>
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
Subject: Re: Designware MAC reset timeout after Linux reboot
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 08/11/16 08:08, Sascha Hauer wrote:
> Hi Ian,
>
> On Mon, Nov 07, 2016 at 05:56:51PM +0000, Ian Abbott wrote:
>> Hi everyone,
>>
>> I'm using barebox 2016.10.0 with some custom BSP patches for my Cyclone V
>> socfpga based board.  I've noticed that after issuing a reboot in Linux,
>> followed by an 'ifup eth0' command in barebox, I get a "eth0: MAC reset
>> timeout" error, which causes dwc_ether_init() to bail out early. My Linux
>> kernel is Linux 4.1.17, plus LTSI-4.1.17 patches, plus Altera patches from
>> linux-socfpga kernel branch socfpga-4.1.22-ltsi, in that order (git rebase
>> is a wonderful thing!).
>>
>> Socfpga has two Ethernet MAC controllers.  Like several other Cyclone V
>> boards, my board's device tree disables the first one (&gmac0) and aliases
>> ethernet0 to the second one (&gmac1).
>>
>> I don't need the ethernet to work to boot Linux, and Linux manages to
>> reinitialize the ethernet okay, so it's more of a inconvenience to me than a
>> show-stopper - I just need to power-cycle the board if I want ethernet
>> access in barebox.
>
> Have you searched in the Linux code what it does differently so that it
> can successfully reset the MAC?

The Linux code paths are more convoluted, including calls into the reset 
manager.  I found the code that resets the MAC DMA controller though - 
see below....

>> I am aware of Trent Piepho's patch (commit
>> f0ae0c33f52ced89da080673ca89a3c5f2ea70e6) which brings the PHY out of
>> power-down mode before resetting the MAC DMA controller.  In fact, the PHY
>> doesn't seem to be in power-down mode in my case, as the value read from the
>> MII_BMCR in phy_resume() is 0x1140 (BMCR_ANENABLE | BMCR_FULLDPLX |
>> BMCR_SPEED1000).
>>
>> There must be something else stopping the software reset of the MAC
>> completing successfully, but I'm not sure what.  The Cyclone V Hard
>> Processor System Technical Reference Manual says this about the MAC DMA
>> software reset bit:
>>
>> | Note: * The Software reset system is driven only by this bit. *
>> | The reset operation is completed only when all resets in all
>> | active clock domains are de-asserted. Therefore, it is
>> | essential that all the PHY inputs clocks (applicable for the
>> | selected PHY interface) are present for the software reset
>> | completion.
>>
>> Perhaps the timeout isn't waiting long enough.  If I interrupt the 'ifup
>> eth0' command and display the approriate 'Bus_Mode' register (0xff703000)
>> with the 'md' command, the DMAMAC_SRST bit (bit 0) is no longer set:
>>
>> barebox@xxxx:/ md -l 0xff703000+4
>> ff703000: 00020100
>
> The timeout is 10ms, this should be way enough. The return value of
> dwc_ether_init() is not checked, so the driver happily continues with
> further register writes, I assume there must be something that clears
> this bit afterwards, either directly or indirectly.

The bit is supposed to clear itself, but I guess something else could be 
clearing it too.

The code to reset the MAC DMA controller in Linux kernel 4.1 is 
dwmac1000_dma_init() in 
"drivers/net/ethernet/stmicro/stmmac/dwmac1000_dma.c".  In Linux kernel 
4.6, the function is dwmac_dma_reset() in "dwmac_lib.c".  In both cases, 
the code to reset the DMA controller is basically as follows:

	u32 value = readl(ioaddr + DMA_BUS_MODE);
	int limit;

	/* DMA SW reset */
	value |= DMA_BUS_MODE_SFT_RESET;
	writel(value, ioaddr + DMA_BUS_MODE);
	limit = 10;
	while (limit--) {
		if (!(readl(ioaddr + DMA_BUS_MODE) & DMA_BUS_MODE_SFT_RESET))
			break;
		mdelay(10);
	}
	if (limit < 0)
		return -EBUSY;

It's interesting that it only bothers to check for reset completion 
every 10 ms (timing out after 100 ms), so it must be expecting it to 
take a while!

I'll experiment with the timeout on my board to see if the bit ever 
clears itself.

-- 
-=( Ian Abbott @ MEV Ltd.    E-mail: <abbotti@mev.co.uk> )=-
-=(                          Web: http://www.mev.co.uk/  )=-

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
