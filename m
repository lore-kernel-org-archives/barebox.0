Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kcQBY-00067j-4r
 for barebox@lists.infradead.org; Tue, 10 Nov 2020 09:43:32 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
References: <20201109134430.21156-1-r.czerwinski@pengutronix.de>
 <20201109134430.21156-3-r.czerwinski@pengutronix.de>
 <907efaaf5e29ed99229c20ad2398e13b26965827.camel@lynxeye.de>
 <8df4ad110b83b139381e58bad3e7db82426f9371.camel@pengutronix.de>
 <20201110074811.GM29830@pengutronix.de>
 <20201110091543.GP29830@pengutronix.de>
 <25af706b-3cb1-c7d0-579a-b900ef674692@pengutronix.de>
Message-ID: <0e23114b-624f-c789-531f-1d65fd8cbf92@pengutronix.de>
Date: Tue, 10 Nov 2020 10:43:30 +0100
MIME-Version: 1.0
In-Reply-To: <25af706b-3cb1-c7d0-579a-b900ef674692@pengutronix.de>
Content-Language: en-US
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
Subject: Re: [PATCH 2/8] mtd: cfi_flash: allow 0x0 mapping
To: Sascha Hauer <s.hauer@pengutronix.de>, Rouven Czerwinski <r.czerwinski@pengutronix.de>
Cc: barebox@lists.infradead.org

On 11/10/20 10:36 AM, Ahmad Fatoum wrote:
> Hi,
> 
> On 11/10/20 10:15 AM, Sascha Hauer wrote:
>> On Tue, Nov 10, 2020 at 08:48:11AM +0100, Sascha Hauer wrote:
>>> On Tue, Nov 10, 2020 at 07:33:53AM +0100, Rouven Czerwinski wrote:
>>>> On Mon, 2020-11-09 at 14:52 +0100, Lucas Stach wrote:
>>>>> Am Montag, den 09.11.2020, 14:44 +0100 schrieb Rouven Czerwinski:
>>>>>> Annotate the different read and write functions with
>>>>>> zero_page_{access/faulting}. This allows the cfi_flash driver to be used
>>>>>> on the QEMU virt machine with an enabled MMU.
>>>>>
>>>>> I don't like this zero-page access allow in a driver at all. If you
>>>>> have some free address space somewhere, you could also solve this issue
>>>>> by remapping the IO resource to somewhere else in the address space,
>>>>> deviating from the 1:1 mapping. The Tegra PCIe host driver does this,
>>>>> if you need some inspiration.
>>>>
>>>> I totally agree, remapping the IO region sounds like a much better
>>>> choice.
>>>
>>> But where should it be mapped to? Just 4k upwards and hope that the area
>>> just above the cfi flash isn't occupied by something else?
>>
>> Ok, here's the plan:
>>
>> In a board specific initcall map the memory to wherever it's convenient,
>> modify the address of the CFI flash in the device node and add a big
>> comment that there's nothing to see here.
> 
> The device tree specification defines a "virtual-reg property [that] specifies
> an effective address that maps to the first physical address specified in
> the reg property of the device node.  This property enables boot programs to
> provide client programs with virtual-to-physical mappings that have been set up".
> 
> So, how about a tad more generic approach:
> 
> - barebox device tree extends cfi-flash node with virtual-reg of appropriate
>   location
> - Define a of_iomap() function that

Or rather a  more generic name, like dev_ioremap?.(In that case
!CONFIG_OF is the same as MMU off).

>   - MMU off => does normal request_iomem_region when MMU is off
>   - MMU on  => remaps reg to virtual-reg and does request_iomem_region
> 
> Advantages:
>   - No extra board code
>   - Reusable for others as well
>   - No device tree patching necessary
> 
> I am not familiar with the PowerPC support in barebox, but if we keep the MMU
> on, then the use of virtual-reg is correct and if we turn it off, it doesn't
> hurt to have it, so we should be within spec.
> 
> Let me know what you think.
> Cheers,
> Ahmad
> 
>>
>> Sascha
>>
>>
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
