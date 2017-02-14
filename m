Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.87 #1 (Red Hat Linux))
 id 1cdbNt-0001Ao-CW
 for barebox@lists.infradead.org; Tue, 14 Feb 2017 11:35:03 +0000
References: <4bcf7de3-5ced-3575-9495-c1f4f20ce60c@phytec.de>
 <20170213192247.gjld5b33genwav2a@pengutronix.de>
 <6ff1f0fb-5847-e927-0602-a61c35a58e5b@phytec.de>
 <20170214104833.k5oubzucxb3o67rf@pengutronix.de>
From: Wadim Egorov <w.egorov@phytec.de>
Message-ID: <b0644455-f83d-99ea-bda7-757d31fed4db@phytec.de>
Date: Tue, 14 Feb 2017 12:34:37 +0100
MIME-Version: 1.0
In-Reply-To: <20170214104833.k5oubzucxb3o67rf@pengutronix.de>
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
Subject: Re: barebox PBL question
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>



On 14.02.2017 11:48, Sascha Hauer wrote:
> On Tue, Feb 14, 2017 at 10:54:49AM +0100, Wadim Egorov wrote:
>> On 13.02.2017 20:22, Sascha Hauer wrote:
>>> On Mon, Feb 13, 2017 at 04:13:48PM +0100, Wadim Egorov wrote:
>>>> Hi,
>>>>
>>>> I would like to add SPL support for the RK3288 SoC to barebox. But I am
>>>> facing
>>>> a few problems.
>>>>
>>>> The maximum size of the SPL image which the ROM code will read is 32KB.
>>>> I was thinking to use the PBL feature for the SPL part. But using the
>>>> the pbl code (with decompression) seems to be not a good idea, because
>>>> it's size
>>>> is already about 30K. I think this is an overhead.
>>> In a test build here the pbl code is 6KiB. The rest is the devicetree
>>> included in the binary (which I disabled in the test build). The dtb can
>>> be compressed which should give you enough space even in 32KiB.
>> OK, I think I checked the wrong file size. pblb is the bare binary file
>>
>>>> But now I wonder how to generate two different images with a single build.
>>>> A SPL image, which should not exceed 32K and a barebox.
>>>>
>>>> I have problems to fully understand the PBL mechanism.
>>>> Why are the builds always adding the barebox.bin images to the PBL part?
>>> The idea is to create an image that contains the PBL and attached to it
>>> the compressed barebox image. If your ROM only allows a certain image
>>> size then make sure the PBL is small enough and tell the ROM to only
>>> load the PBL part of the image. Ideally the PBL then detects from where
>>> the PBL is loaded (by reading back the bootsource the SoC provides) and
>>> reads the rest of the image into SDRAM (or, for sake of simplicity, the
>>> whole image inculding PBL again)
>> ty for clarification
>>
>>>> Here is an example, cat .zbarebox.cmd
>>>>
>>>> ld -EL  -Map arch/arm/pbl/zbarebox.map --gc-sections -static -o
>>>> arch/arm/pbl/zbarebox -e pbl_start -T arch/arm/pbl/zbarebox.lds
>>>> --start-group  common/built-in-pbl.o [...]  arch/arm/pbl/piggy.shipped.o
>>>> --end-group
>>>>
>>>> piggy.shipped.o is barebox.bin, which is added in piggy.shipped.S:
>>>>
>>>> .incbin "arch/arm/pbl/piggy.shipped"
>>> You should use PBL_MULTI_IMAGES instead. In fact, the existing Rockchip
>>> port already does this.
>>>
>>> I think your entry function should look something like:
>>>
>>> ENTRY_FUNCTION(start_rk3288_phycore_som, r0, r1, r2)
>>> {
>>> 	arm_cpu_lowlevel_init();
>>>
>>> 	if (inside_sdram(get_pc()))
>>> 		barebox_arm_entry(0x0, SZ_1G, fdt);
>>>
>>> 	rk3288_phycore_setup_sdram();
>>>
>>> 	jump_back_to_rom();
>>> }
>>>
>>> I don't know how jump_back_to_rom() should be implemented. Do you have
>>> to return from the entry function to the ROM or does the ROM provide some API
>>> which can be used to chainload the rest of the image?
>> No, there is no API in the ROM.
>> In u-boot the spl will return to bootrom in board_init_f(), then bootrom
>> loads u-boot binary.
> The ENTRY_FUNCTION macro is not prepared for returning to the caller.
>
> You'll have to replace it with something like:
>
> void __section(.text_head_entry_start_rk3288_phycore_som)
> start_start_imx6q_sabrelite(uint32_t r0, uint32_t r1, uint32_t r2)
>
> This makes sure the link register is preserved and is jumped to at the
> end of the function.
>
> You could also send me some hardware, I could provide some better help
> then. I know this early bringup can be tricky ;)

I will send you our hardware. After the redesign :)

>
> Sascha
>


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
