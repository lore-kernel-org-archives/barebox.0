Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-oi0-x243.google.com ([2607:f8b0:4003:c06::243])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dfpRr-0001Ms-CB
 for barebox@lists.infradead.org; Thu, 10 Aug 2017 15:32:37 +0000
Received: by mail-oi0-x243.google.com with SMTP id q70so929124oic.2
 for <barebox@lists.infradead.org>; Thu, 10 Aug 2017 08:32:14 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CAArhpou1i_1F9NpQtsxKepR+FjL_sxaOKm53UauOBkHtqGZbaw@mail.gmail.com>
References: <CAArhposKY9Ai1OFPX+w2f4ajuw_D8jRTc2tttdiJcO8djj01eg@mail.gmail.com>
 <CAHQ1cqHjrpK34E=zWGQYp_koRA6yTqHGhm0P4v=K59ieyC7qnA@mail.gmail.com>
 <CAArhpoukunr4DBJhy2etw4svK9+yCdY98oMc1ANUJdrqmNsyTQ@mail.gmail.com>
 <CAHQ1cqEp1X49ODABcz9nb3t7i5PhnN0oRBtA_O5DACFnwdUq1w@mail.gmail.com>
 <CAArhposCe9LMLSvYc5026KK9no8U1aV7Er2OiANWKr=xPWUAFw@mail.gmail.com>
 <CAHQ1cqHroKuwj8bKNKjMXiuNiMe_=JBmiONJ_ymNHaGmFv-XMw@mail.gmail.com>
 <7360e7wsyx.fsf@pengutronix.de>
 <CAArhpou1i_1F9NpQtsxKepR+FjL_sxaOKm53UauOBkHtqGZbaw@mail.gmail.com>
From: Mabcded Babcde <thepusherpushes@gmail.com>
Date: Thu, 10 Aug 2017 17:32:12 +0200
Message-ID: <CAArhpouUPq9uyp_UgMXCQRLEueqOH6oM1sQVtv=vX0tEgvR+Fg@mail.gmail.com>
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
Subject: Re: [PATCH] Add new command fs2bridge for socfpga
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, "barebox@lists.infradead.org" <barebox@lists.infradead.org>

2017-08-04 15:13 GMT+02:00 Mabcded Babcde <thepusherpushes@gmail.com>:
> 2017-08-01 11:13 GMT+02:00 Steffen Trumtrar <s.trumtrar@pengutronix.de>:
>>
>> Hi!
>>
>> Andrey Smirnov <andrew.smirnov@gmail.com> writes:
>>
>>> On Sun, Jul 30, 2017 at 2:17 PM, Mabcded Babcde
>>> <thepusherpushes@gmail.com> wrote:
>>>> 2017-07-28 15:42 GMT+02:00 Andrey Smirnov <andrew.smirnov@gmail.com>:
>>>>> On Fri, Jul 28, 2017 at 6:24 AM, Mabcded Babcde
>>>>> <thepusherpushes@gmail.com> wrote:
>>>>>> 2017-07-27 20:49 GMT+02:00 Andrey Smirnov <andrew.smirnov@gmail.com>:
>>>>>>> On Thu, Jul 27, 2017 at 9:20 AM, Mabcded Babcde
>>>>>>> <thepusherpushes@gmail.com> wrote:
>>>>>>>> Hi,
>>>>>>>> this patch adds a new command to barebox. It is used to enable or
>>>>>>>> disable the fpga-to-sdram bridges on socfpgas. The patch is based on a
>>>>>>>> manual from altera
>>>>>>>> (https://www.altera.com/support/support-resources/knowledge-base/embedded/2016/how-and-when-can-i-enable-the-fpga2sdram-bridge-on-cyclone-v-soc.html)
>>>>>>>> and a implementation for u-boot
>>>>>>>> (https://github.com/rogerq/u-boot/blob/master/arch/arm/mach-socfpga/misc.c).
>>>>>>>> The fpga2sdram fpga configuration can only be set when the SDRAM
>>>>>>>> interface is idle. So it is necessary to use the on-chip ram.
>>>>>>>
>>>>>>> And by "on-chip ram" you mean i-cache and not SRAM block used by first
>>>>>>> stage bootloader, correct? I am just a bit confused by the wording.
>>>>>>>
>>>>>>
>>>>>> Sorry, my fault. I meant i-cache.
>>>>>>
>>>>>>>> To bring all fpga2sdram bridges out of reset it is necessary to write 0x3FFF to
>>>>>>>> the register. Only the fpga2sdram bridges are enabled or disabled but
>>>>>>>> no other bridges like the axi bridges.
>>>>>>>
>>>>>>> Linux kernel already has:
>>>>>>>
>>>>>>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/fpga/altera-fpga2sdram-bridge.txt?h=v4.13-rc2
>>>>>>>
>>>>>>> so, IMHO, it would be better to implement  a compatible driver and, if
>>>>>>> ability to change the value at run-time is needed, add "enable"
>>>>>>> property to it rather than introducing a separate command.
>>>>>>>
>>>>>>
>>>>>> But how can I ensure that the SDRAM is idle? I quote Altera:
>>>>>> "First time enabling of the FPGA2SDRAM bridge within Linux is not
>>>>>> supported as the SDRAM subsystem cannot be easily put into a
>>>>>> guaranteed idle state."
>>>>>>
>>>>>
>>>>> I feel like we are talking about different things. What I am trying to
>>>>> say that instead of adding this functionality to Barebox as a
>>>>> standalone command, it would be better to add it _to Barebox_ as a
>>>>> driver that claims compatibility with "altr,socfpga-fpga2sdram-bridge"
>>>>> and implements all of the necessary logic there. It would be the same
>>>>> code running in the boot-loader but triggered to executed via
>>>>> different means, so it should literally be the same in terms of SDRAM
>>>>> access quiescence. A somewhat relative example of that approach would
>>>>> be "drivers/firmware/socfpga.c".
>>>>
>>>> Ok, I hardcoded my code from the command to drivers/firmware/socfpga.c
>>>> for testing purposes. That didn't seem to work.
>>>
>>> I'd double check that CONFIG_FIRMWARE and
>>> CONFIG_FIRMWARE_ALTERA_SOCFPGA are set to "y".
>>>
>>>> However how would I
>>>> enable or disable the bridge? With a parameter? Where can I add it and
>>>> change it?
>>>>
>>>>>
>>>
>>> The driver in firmware/socfpga.c should create a "fpga0" device, after
>>> which, you cat set that device's variables/attributes by simply doing:
>>>
>>> fpga0.variable_name = value
>>>
>>> and get them via
>>>
>>> echo ${fpga0.variable_name}
>>>
>>
>> The right approach should be adding a proper bridge driver like in the
>> kernel. Then in the fpgamgr_program_finish enable all registered
>> bridges. And set the APPFLYCFG bit in the bridge driver.
>> Or do I miss something?
>>
>> The cacheline magic seems rather fragile and therefore just running a
>> function (with almost the same assembler code) from OCRAM seems to be the
>> more robust option.
>>
>> As a matter of fact, I already have the bridge drivers ported to
>> barebox. I can post the series as an RFC as I haven't tested it since I
>> rebased it to v2017.07.0.
>
> I built Barebox successfully with your drivers, but the fpga-bridge
> wasn't enabled. And where is the OCRAM part in your driver?

In socfpga-fpgasdram-bridge.c ALT_SDR_CTL_FPGAPORTRST_PORTRSTN_MSK is
defined, but not used.
In the same file the socfpga_sdram_apply_staticcfg part is missing in
static inline int _alt_fpga2sdram_enable_set(struct
alt_fpga2sdram_data *priv, bool enable)

>
>>
>>
>> Regards,
>> Steffen
>>
>> --
>> Pengutronix e.K.                           | Steffen Trumtrar            |
>> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
>> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

Best regards,
Mathieu

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
