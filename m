Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail1.g1.pair.com ([66.39.3.162])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WPpx6-00036N-Gx
 for barebox@lists.infradead.org; Tue, 18 Mar 2014 09:04:53 +0000
Message-ID: <53280C1C.1040802@kosagi.com>
Date: Tue, 18 Mar 2014 17:04:28 +0800
From: Sean Cross <xobs@kosagi.com>
MIME-Version: 1.0
References: <20140313202719.GS17250@pengutronix.de>
 <532278F0.1040409@kosagi.com> <20140314082252.GW17250@pengutronix.de>
 <532679EC.4020806@kosagi.com> <20140317071857.GH17250@pengutronix.de>
 <5326A7CF.7020005@kosagi.com> <20140317105318.GJ17250@pengutronix.de>
 <5327BEFE.9020003@kosagi.com> <20140318083619.GS17250@pengutronix.de>
 <53280734.6000802@kosagi.com> <20140318085811.GU17250@pengutronix.de>
In-Reply-To: <20140318085811.GU17250@pengutronix.de>
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

On 18/3/14 4:58 PM, Sascha Hauer wrote:
> On Tue, Mar 18, 2014 at 04:43:32PM +0800, Sean Cross wrote:
>>> arm_add_mem_device("ram0", 0x10000000, SZ_2G + SZ_1G + SZ_512M + SZ_128M + SZ_1M);
>>>
>>> and this works on a board I have here (although that board doesn't even
>>> have that amount of memory)
>>
>> Oh, I didn't realize there was a requirement to align to the nearest
>> megabyte.
>>
>> In that case, you're right.  I tried this, and it works:
>>
>> arm_add_mem_device("ram0", 0x10000000, SZ_2G + SZ_1G + SZ_512M + SZ_256M
>> - SZ_1M);
>>
>> However, this fails:
>>
>> arm_add_mem_device("ram0", 0x10000000, SZ_2G + SZ_1G + SZ_512M + SZ_256M);
> 
> You are really exploring corner cases here ;)
> 
> Try this:
> 
> --------------------------8<--------------------
> 
> From 4a84905c61d4a4a895c83f4f156f60a7258e6413 Mon Sep 17 00:00:00 2001
> From: Sascha Hauer <s.hauer@pengutronix.de>
> Date: Tue, 18 Mar 2014 09:53:18 +0100
> Subject: [PATCH] ARM: MMU: Fix memory reaching to the end of address space
> 
> For memory reaching the end of the address space
> phys + bank->size overflows to 0. Fix this by right shifting
> phys and bank->size before adding them.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/cpu/mmu.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
> index 84daa3d..bf0141b 100644
> --- a/arch/arm/cpu/mmu.c
> +++ b/arch/arm/cpu/mmu.c
> @@ -200,7 +200,7 @@ static int arm_mmu_remap_sdram(struct memory_bank *bank)
>  {
>  	unsigned long phys = (unsigned long)bank->start;
>  	unsigned long ttb_start = phys >> 20;
> -	unsigned long ttb_end = (phys + bank->size) >> 20;
> +	unsigned long ttb_end = (phys >> 20) + (bank->size >> 20);
>  	unsigned long num_ptes = bank->size >> 10;
>  	int i, pte;
>  	u32 *ptes;
> 


That fixes the problem for booting with the MMU enabled.  Now I can use
the entire memory range.  Go ahead and add my tested-by:

Tested-by: Sean Cross <xobs@kosagi.com>

It's certainly looking a whole lot better now.  The board still suffers
from quirks, such as the 10-second delay during boot when the network
driver is enabled and the cable is unplugged (even if I have 'ip=none'
in my env/config file), and the following crash when I try to start up
USB now:

barebox@Kosagi i.MX6DL Novena Board:/ usb
USB: scanning bus for devices...
unable to handle paging request at address 0x4fe4bc03
pc : [<4fe0ce76>]    lr : [<4fe09171>]
sp : 4ffffd88  ip : 00000016  fp : 4fffff10
r10: 4cca08f4  r9 : 4fe4b6b8  r8 : 00200200
r7 : 00100100  r6 : 4fe4aa14  r5 : 00000000  r4 : 4be19f6c
r3 : 4fe4bc00  r2 : 00010011  r1 : 80088000  r0 : 00000000
Flags: Nzcv  IRQs off  FIQs off  Mode SVC_32
[<4fe0ce76>] (ehci_init+0x62/0xcc) from [<4fe08d5f>]
(usb_host_detect+0x83/0xb4)
[<4fe08d5f>] (usb_host_detect+0x83/0xb4) from [<4fe08dbd>]
(usb_rescan+0x2d/0x50)
[<4fe08dbd>] (usb_rescan+0x2d/0x50) from [<4fe1a5cd>] (do_usb+0x25/0x2c)
[<4fe1a5cd>] (do_usb+0x25/0x2c) from [<4fe029bd>]
(execute_command+0x21/0x48)
[<4fe029bd>] (execute_command+0x21/0x48) from [<4fe06efb>]
(run_list_real+0x54b/0x618)
[<4fe06efb>] (run_list_real+0x54b/0x618) from [<4fe06877>]
(parse_stream_outer+0x107/0x19c)
[<4fe06877>] (parse_stream_outer+0x107/0x19c) from [<4fe070cd>]
(run_shell+0x29/0x54)
[<4fe070cd>] (run_shell+0x29/0x54) from [<4fe00815>]
(start_barebox+0x99/0xd0)
[<4fe00815>] (start_barebox+0x99/0xd0) from [<4fe2eb05>] (__start+0xa9/0xbc)
[<4fe2eb05>] (__start+0xa9/0xbc) from [<4fe00005>]
(__bare_init_start+0x1/0xc)

[<4fe2e50d>] (unwind_backtrace+0x1/0x74) from [<4fe1c68d>] (panic+0x1d/0x34)
[<4fe1c68d>] (panic+0x1d/0x34) from [<4fe2e9c1>] (do_exception+0xd/0x10)
[<4fe2e9c1>] (do_exception+0xd/0x10) from [<4fe2ea29>]
(do_data_abort+0x21/0x2c)
[<4fe2ea29>] (do_data_abort+0x21/0x2c) from [<4fe2e6e8>]
(data_abort+0x48/0x60)

But the mystery of the MMU has been solved.


Sean

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
