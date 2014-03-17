Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail1.g1.pair.com ([66.39.3.162])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WPPAT-00077k-Uo
 for barebox@lists.infradead.org; Mon, 17 Mar 2014 04:28:54 +0000
Message-ID: <532679EC.4020806@kosagi.com>
Date: Mon, 17 Mar 2014 12:28:28 +0800
From: Sean Cross <xobs@kosagi.com>
MIME-Version: 1.0
References: <53211233.5070806@kosagi.com>
 <20140313073817.GR17250@pengutronix.de> <53218604.6080702@kosagi.com>
 <20140313202719.GS17250@pengutronix.de> <532278F0.1040409@kosagi.com>
 <20140314082252.GW17250@pengutronix.de>
In-Reply-To: <20140314082252.GW17250@pengutronix.de>
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
Subject: Re: Porting barebox to Novena: misc questions
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 14/3/14 4:22 PM, Sascha Hauer wrote:
> On Fri, Mar 14, 2014 at 11:35:12AM +0800, Sean Cross wrote:
>> On 14/3/14 4:27 AM, Sascha Hauer wrote:
>>> On Thu, Mar 13, 2014 at 06:18:44PM +0800, Sean Cross wrote:
>>>> On 13/3/14 3:38 PM, Sascha Hauer wrote:
>>>>> Hi Sean,
>>>>>
>>>>> On Thu, Mar 13, 2014 at 10:04:35AM +0800, Sean Cross wrote:
>>>>>> The "usb" command just hangs the system.  It should at least detect the
>>>>>> other ASIX Ethernet port.  I have &usbh1 configured identically to
>>>>>> sabrelite.  Is there something else I need to configure?
>>>>>
>>>>> This usually means the phys are not configured correctly. Are you
>>>>> probing from devicetree?
>>>>
>>>> I am probing from devicetree.  I don't see phys mentioned anywhere
>>>> except in the imx6qdl.dtsi file, which means that in theory there
>>>> shouldn't be anything for me to modify.
>>>
>>> I can try to reproduce this tomorrow on a sabrelite board.
>>>
>>>> Board: Kosagi i.MX6DL Novena Board
>>>> detected i.MX6 DualLite revision 1.1
>>>> ERROR: out of memory
>>>>
>>>> [<5062e9ed>] (unwind_backtrace+0x1/0x74) from [<5061c525>] (panic+0x1d/0x34)
>>>> [<5061c525>] (panic+0x1d/0x34) from [<5061cc27>] (xmemalign+0xf/0x14)
>>>> [<5061cc27>] (xmemalign+0xf/0x14) from [<5062f687>] (mmu_init+0x16b/0x1f8)
>>>> [<5062f687>] (mmu_init+0x16b/0x1f8) from [<50600797>]
>>>> (start_barebox+0x1b/0xd0)
>>>> [<50600797>] (start_barebox+0x1b/0xd0) from [<5062efcd>] (__start+0x91/0xa4)
>>>> [<5062efcd>] (__start+0x91/0xa4) from [<50600005>]
>>>> (__bare_init_start+0x1/0xc)
>>>> ### ERROR ### Please RESET the board ###
>>>>
>>>> If I also enable early MMU, it hangs much much earlier.  When I dug into
>>>> it, it looked like it was trying to place a TTB just outside of the
>>>> allocated memory region, for some reason.
>>>>
>>>> This is with me passing SZ_1G to barebox_arm_entry().  If I pass
>>>> something small like SZ_64M, it hangs completely.  If I instead pass it
>>>> SZ_128M, it works just fine, but of course the MMU still doesn't work.
>>>
>>> I suspect you have some memory setting that doesn't work in your
>>> .config. Could you post it? Particularly the addresses in your backtrace
>>> are outside the reachable memory (0x10000000 + 1GiB = 0x50000000). This
>>> should not happen. Do you have CONFIG_RELOCATABLE enabled? If not, make
>>> sure CONFIG_ARCH_TEXT_BASE is inside the memory you pass to
>>> barebox_arm_entry(). Otherwise the autodetection for usable malloc area
>>> space might produce wrong results.
>>
>> You're on the right track.  Earlier on I started calling
>> barebox_arm_entry(0x10000000 + 0x800000, SZ_1G, fdt), because otherwise
>> it would fail in mysterious ways.  Now that I've got ram passing working
>> correctly, I've set it back to 0x10000000, and I'm able to get further.
>>  I've also increased the MALLOC_SIZE from 8MB to 64MB, which has made
>> some out-of-memory errors go away.
>>
>> Now, it gets much further, even with CONFIG_MMU_EARLY enabled.  Now it
>> crashes with an error that I see SabreSD was getting at one point, but
>> I'm not sure how they resolved it:
>>
>> Board: Kosagi i.MX6DL Novena Board
>> detected i.MX6 DualLite revision 1.1
>> BUG: failure at arch/arm/cpu/mmu.c:122/find_pte()!
>> BUG!
> 
> This can mean that dma_alloc_coherent() is called too early, before
> mmu_init(). That's quite unlikely since the chipidea probe is in
> device_initcall, way after mmu_initcall. Other possibility is that
> mmu_init failed due to missing memory banks.
> 
> Please apply "ARM: MMU: Add some debugging aids and hints" I just sent
> to the list. It adds more sanity checks and hopefully gives more clue
> what is wrong.
> 
>> CONFIG_PBL_IMAGE=y
>> CONFIG_PBL_MULTI_IMAGES=y
>> CONFIG_PBL_RELOCATABLE=y
>> CONFIG_IMAGE_COMPRESSION=y
>> # CONFIG_IMAGE_COMPRESSION_LZ4 is not set
>> CONFIG_IMAGE_COMPRESSION_LZO=y
>> # CONFIG_IMAGE_COMPRESSION_GZIP is not set
>> # CONFIG_IMAGE_COMPRESSION_NONE is not set
>> CONFIG_MMU=y
>> CONFIG_MMU_EARLY=y
>> CONFIG_HAVE_CONFIGURABLE_TEXT_BASE=y
>> CONFIG_TEXT_BASE=0x17800000
>> CONFIG_BAREBOX_MAX_PBL_SIZE=0xffffffff
>> CONFIG_BAREBOX_MAX_BARE_INIT_SIZE=0xffffffff
>> CONFIG_STACK_SIZE=0x400000
> 
> This is too much 0x8000 should be enough.
> 
>> CONFIG_MALLOC_SIZE=0x4000000
> 
> You can also set this to 0x0 in which case barebox will pick a memory
> region inside available SDRAM.
> 
> Your stack size / malloc size settings shouldn't make problems though.

Hi Sascha,

I've applied the patch you sent, along with a separate modification that
prints out the progress of request_sdram_region:

diff --git a/common/memory.c b/common/memory.c
index c82bbaa..d509af7 100644
--- a/common/memory.c
+++ b/common/memory.c
@@ -145,14 +145,20 @@ struct resource *request_sdram_region(const char
*name, re
 {
        struct memory_bank *bank;

+       printf("Trying to request region %s (from 0x%08lx:0x%08lx):",
+               name, start, start + size - 1);
        for_each_memory_bank(bank) {
                struct resource *res;

                res = request_region(bank->res, name, start, start +
size - 1);
-               if (res)
+               if (res) {
+                       printf(" ok\n");
                        return res;
+               }
+               printf(" no");
        }

+       printf(" fail\n");
        return NULL;
 }

Here is the resulting output and BUG from this run:

barebox 2014.03.0-00628-g7fed07d-dirty #158 Mon Mar 17 12:25:45 SGT 2014


Board: Kosagi i.MX6DL Novena Board
detected i.MX6 DualLite revision 1.1
Trying to request region ttb (from 0x4fff4000:0x4fff7fff): ok
Trying to request region malloc space (from 0x4be00000:0x4fdfffff): ok
Trying to request region barebox (from 0x4fe00000:0x4fe4b4a7): ok
Trying to request region barebox data (from 0x4fe4b4a8:0x4fe5c8f7): ok
Trying to request region bss (from 0x4fe5c8f8:0x4fe6214f): ok
Trying to request region stack (from 0x4fff8000:0x4fffffff): ok
mmu: find_pte: TTB for address 0x4cd1e000 is not of type table
mmu: Memory banks:
mmu: #0 0x10000000 - 0xffffffff
BUG: failure at arch/arm/cpu/mmu.c:153/find_pte()!
BUG!
[<4fe2e9cd>] (unwind_backtrace+0x1/0x74) from [<4fe1c525>] (panic+0x1d/0x34)
[<4fe1c525>] (panic+0x1d/0x34) from [<4fe2f4d5>] (remap_range+0x65/0xdc)
[<4fe2f4d5>] (remap_range+0x65/0xdc) from [<4fe2f7d1>]
(dma_alloc_coherent+0x2d/0x34)
[<4fe2f7d1>] (dma_alloc_coherent+0x2d/0x34) from [<4fe0d689>]
(ehci_register+0x41/0xa8)
[<4fe0d689>] (ehci_register+0x41/0xa8) from [<4fe0936f>]
(imx_chipidea_probe+0x123/0x168)
[<4fe0936f>] (imx_chipidea_probe+0x123/0x168) from [<4fe07de7>]
(platform_probe+0x9/0xa)
[<4fe07de7>] (platform_probe+0x9/0xa) from [<4fe07bf9>]
(device_probe+0x11/0x44)
[<4fe07bf9>] (device_probe+0x11/0x44) from [<4fe07c53>]
(match.part.3+0x27/0x30)
[<4fe07c53>] (match.part.3+0x27/0x30) from [<4fe07cb5>]
(register_driver+0x59/0x74)
[<4fe07cb5>] (register_driver+0x59/0x74) from [<4fe00797>]
(start_barebox+0x1b/0xd0)
[<4fe00797>] (start_barebox+0x1b/0xd0) from [<4fe2efc5>] (__start+0xa9/0xbc)
[<4fe2efc5>] (__start+0xa9/0xbc) from [<4fe00005>]
(__bare_init_start+0x1/0xc)
### ERROR ### Please RESET the board ###



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
