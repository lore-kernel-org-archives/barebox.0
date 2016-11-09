Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp133.dfw.emailsrvr.com ([67.192.241.133])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c4Taw-0002k9-7o
 for barebox@lists.infradead.org; Wed, 09 Nov 2016 14:11:21 +0000
References: <29eaf37e-819f-dfdd-0403-350682193845@mev.co.uk>
 <20161108080856.qyorpnvj4serg6ym@pengutronix.de>
 <d728234e-959a-c21d-7df1-b530355425de@mev.co.uk>
From: Ian Abbott <abbotti@mev.co.uk>
Message-ID: <a4d5227a-4df6-5d3d-d8dd-14ff97be721f@mev.co.uk>
Date: Wed, 9 Nov 2016 14:10:52 +0000
MIME-Version: 1.0
In-Reply-To: <d728234e-959a-c21d-7df1-b530355425de@mev.co.uk>
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

On 08/11/16 12:13, Ian Abbott wrote:
> On 08/11/16 08:08, Sascha Hauer wrote:
>> Hi Ian,
>>
>> On Mon, Nov 07, 2016 at 05:56:51PM +0000, Ian Abbott wrote:

>>> Perhaps the timeout isn't waiting long enough.  If I interrupt the 'ifup
>>> eth0' command and display the approriate 'Bus_Mode' register
>>> (0xff703000)
>>> with the 'md' command, the DMAMAC_SRST bit (bit 0) is no longer set:
>>>
>>> barebox@xxxx:/ md -l 0xff703000+4
>>> ff703000: 00020100
>>
>> The timeout is 10ms, this should be way enough. The return value of
>> dwc_ether_init() is not checked, so the driver happily continues with
>> further register writes, I assume there must be something that clears
>> this bit afterwards, either directly or indirectly.
>
> The bit is supposed to clear itself, but I guess something else could be
> clearing it too.
>
> The code to reset the MAC DMA controller in Linux kernel 4.1 is
> dwmac1000_dma_init() in
> "drivers/net/ethernet/stmicro/stmmac/dwmac1000_dma.c".  In Linux kernel
> 4.6, the function is dwmac_dma_reset() in "dwmac_lib.c".  In both cases,
> the code to reset the DMA controller is basically as follows:
>
>     u32 value = readl(ioaddr + DMA_BUS_MODE);
>     int limit;
>
>     /* DMA SW reset */
>     value |= DMA_BUS_MODE_SFT_RESET;
>     writel(value, ioaddr + DMA_BUS_MODE);
>     limit = 10;
>     while (limit--) {
>         if (!(readl(ioaddr + DMA_BUS_MODE) & DMA_BUS_MODE_SFT_RESET))
>             break;
>         mdelay(10);
>     }
>     if (limit < 0)
>         return -EBUSY;
>
> It's interesting that it only bothers to check for reset completion
> every 10 ms (timing out after 100 ms), so it must be expecting it to
> take a while!
>
> I'll experiment with the timeout on my board to see if the bit ever
> clears itself.
>

The problem seems to be related to some other problems I've been having 
with the Ethernet on this prototype board, which is something to do with 
the PHY chip's passive support components (inductors, capacitors, etc.) 
This problem manifests as lower-than-expected 'iperf' times when the 
Ethernet port is plugged into certain models of Ethernet switch.

I experimented with the timeout in mac_reset() in designware.c, setting 
it to 1 second, and printing out a debug message with the time taken for 
the reset to complete.

After 20 trials of rebooting from Linux to barebox and issuing the 'ifup 
eth0' command, I got a pretty random spread of times between 29.3 and 
850.2 ms, with a mean of 312.5 ms.  (It looks like a pretty linear 
distribution.  Some other stats: Q1: 141.4 ms, Median: 240.1 ms, Q3: 
480.2 ms, SD: 211.9 ms.)

I ran another trial with the is_timeout() call replaced with 
is_timeout_non_interruptible() and got a similar random spread of times 
(but smaller than the first trial) from 11.4 ms to 654.6 ms, with a mean 
of 266.2 ms.

Both of those trials were performed with the Ethernet port connected to 
a 1000 Base-T Ethernet switch.

Now here's the kicker.... If I plug it into a different brand of 1000 
Base-T Ethernet switch, the mac_reset() times (after rebooting from 
Linux) are more like 360 ns (not ms!).  If I plug it into a 100 Base-T 
switch, the times are more more like 900 ns to 2300 ns.  If I disconnect 
it completely, the times are about 360 ns.

For comparison, after running 'ifup eth0' after powering up into 
barebox, the mac_reset() times are about 360 ns independent of what the 
Ethernet port is plugged into.


I'm still not sure what state my Linux kernel is leaving the Ethernet 
controller and PHY in following a reboot, but I'm reasonably confident 
the problem is related to the PHY hardware components on my board.

-- 
-=( Ian Abbott @ MEV Ltd.    E-mail: <abbotti@mev.co.uk> )=-
-=(                          Web: http://www.mev.co.uk/  )=-

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
