Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vsmx009.vodafonemail.xion.oxcs.net ([153.92.174.87])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO7bg-0006vj-Mx
 for barebox@lists.infradead.org; Mon, 13 Apr 2020 22:31:11 +0000
References: <c013449a-b775-b805-df78-48a908d506fb@arcor.de>
 <d5949d44-9377-98f4-029c-ae1b0debf7d1@pengutronix.de>
 <2179bad5-0ec6-a2ae-683f-f2f24e3aabfb@arcor.de>
 <56816c6f-86ac-e350-3d23-bf0ff1fe87d2@pengutronix.de>
 <6679e805-8f1e-0c02-cc73-e2d2ab4911c1@arcor.de>
 <63e3eb58-9f5b-54d6-e8cf-b7672fe55a4a@pengutronix.de>
 <9bd7f507-8f59-98ee-18af-48be3dba9372@arcor.de>
 <f075fcf2-5703-37ee-b197-84afe0585560@pengutronix.de>
 <3c69c3fb-d8bd-b39d-a0ea-704c8ad99dfc@arcor.de>
 <612deb15-d03a-e393-3e37-efed52c9c3ed@pengutronix.de>
 <facff2a6-0014-2858-25bd-de8190b5df0d@arcor.de>
 <621b0466-1176-b067-5bb1-9606bd695c8d@pengutronix.de>
 <f4cb5943-b968-90ee-f55e-7e705fae0d86@arcor.de>
 <956f428b-e2a7-fb8a-c073-ec90966af808@pengutronix.de>
From: Giorgio <giorgio.nicole@arcor.de>
Message-ID: <ebc7ff56-cb0e-58b7-6a33-52068c78e90b@arcor.de>
Date: Tue, 14 Apr 2020 00:30:40 +0200
MIME-Version: 1.0
In-Reply-To: <956f428b-e2a7-fb8a-c073-ec90966af808@pengutronix.de>
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
Subject: Re: imx7d dual core boot
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Ahmad,

On 4/7/20 3:43 PM, Ahmad Fatoum wrote:
> Hello,
> 
> On 4/7/20 2:28 PM, Giorgio wrote:
>>> Great. Even better than hardcoding the CLIENT_DOMAIN.
>>>
>> OK.
>>
>> To read the current value of DACR, in secure mode, we need a
>> get_domain(). I would add it to mmu.h, beside the set_domain().
> 
> sounds good.
> 
>>>> What do you mean with the 'other i.MX7 patches' ?
>>>
>>> Didn't you add support for some i.MX7 spi flash image format?
>>>
>>
>> That was an evil hack actually, just to verify why the normal barebox image
>> didn't worked. To really support booting barebox from the qspi flash
>> I think we need more *structural* changes to the way barebox starts.
>> For this I need *at least* some suggestions from someone that really knows
>> in detail how barebox works and how an image is built, like you or Sascha...
> 
> scripts/imx/imx-image.c is what's building the i.MX images. It receives
> the imxcfg specific to a board as argument. If you have extra configuration
> for the QSPI, you'll probably need to extend that, either with a new option
> or maybe by adding new directives to the existing imxcfg format.
> 

thank you for the suggestions, I already knew about the imx-image tool even
if not in detail; to add support for the QSPI boot we must for sure extend
the code there somehow.

> What other changes do you think will be necessary?
>
I have currently have a qspi-patched barebox image on my QSPI flash that the imx7d
is able to boot, but only due to an evil hack I only made to see if it was
the last problem I had.
According to the imx7d ref. manual (Rev. 1, 01/2018), at page 1233, the boot ROM
reads out the content of the QSPI flash and expects, at offset 0x00 (watch out here,
the ref. manual says actually offset 0x400 but it's an error), the QuadSPI Configuration
Parameters, a 512 bytes long binary table with HW parameters describing the flash.
Without this table the soc won't boot.
The problem is here that barebox already uses this offset range with other informations,
in particular the first 32bits (at offset 0x00) contain the asm opcode of a branch:
without this branch barebox will not boot up and this is my 'most evil hack': I let the
regular 'make' generate its barebox image, then replace the first 512 bytes with my
QuadSPI Configuration Parameters and then replace the first 32bits with the original branch
opcode.
Here the command lines I'm using:

make -j O=/tmp/bbuild/samx7 kontron-samx7_defconfig && make -j O=/tmp/bbuild/samx7
( dd if=/tmp/bbuild/samx7/barebox-flash-image bs=1 count=4 && dd if=arch/arm/boards/kontron-samx7/qspi_flash_header.bin bs=1 count=1020 skip=4 && dd if=/tmp/bbuild/samx7/barebox-flash-image bs=1 skip=1k ) > /tmp/bbuild/samx7/barebox-qspi-image

This hack only works because the 32bits I overwrite are not so important, as it seems.

Maybe you can say if it's possible, in case of a QSPI barebox image, to avoid the need
for the branch opcode at offset 0x00.



>> Maybe what can be committed is the dts block in imx7s.dtsi for the qspi that
>> enables using the flash as normal runtime mass storage. This should be not
>> so dangerous because the qspi becomes only active when its status is also enabled.
> 
> Funny that no one so far has been bothered to add it upstream ^^.
> You can add it to barebox arch/arm/dts/imx7s.dtsi, but as you might want to access
> it from Linux as well, you should consider posting a patch to add the qspi
> node to the upstream imx7s.dtsi.
> Shortly after landing in a Linux -rc, Sascha will import it along with other
> changes to barebox dts/ and we can drop the node then from arch/arm/dts again.
> 
yes, you are right here, I'll see if I find the proper mailing list for a patch.

>>>> I've also noticed that some asm() statements in sm.c lack the 'volatile'
>>>> attribute.
>>>
>>> Are they strictly necessary? My understanding is that we need
>>> asm volatile on no output operands, but side effects.
> 
>> I think for the current code in sm.c we don't strictly need the volatiles,
>> I noticed problems in debug code like this:
> 
>> Here the compiler could think he can call read_dacr() only once,
>> cache the result in a register and use its value two times. I verified
>> that for the previous debug code the volatile attribute makes a
>> difference.
> 
> Interesting. As arm_smccc_smc expands to an external function and barebox
> does no Link-Time Optimization, I'd have though arm_smccc_smc to be a barrier
> and everything would be reloaded afterwards.
> 
> That it's not, sounds quite broken..
> 
> Cheers
> Ahmad
> 

best regards,

giorgio

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
