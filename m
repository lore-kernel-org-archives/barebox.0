Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jpwN6-0006Wt-8W
 for barebox@lists.infradead.org; Mon, 29 Jun 2020 16:11:06 +0000
References: <925732743.424285.1592919941556@mail.vodafone.de>
 <CAOMZO5AeTg2afd+xVmNr=GxOM=s7qdzUhMqz2AHpTx_MPGWbPg@mail.gmail.com>
 <245646662.425432.1592925096458@mail.vodafone.de>
 <d999acb9-ed34-7b02-42cf-675a152ddee3@pengutronix.de>
 <517310923.70062.1593427992397@mail.vodafone.de>
 <595dc8c8-09c8-81ad-d730-23781e207cbd@pengutronix.de>
 <429834562.114102.1593444620511@mail.vodafone.de>
 <aac7feb5-604f-2914-bfbd-75f0271401ad@pengutronix.de>
 <1874617325.108865.1593446626706@mail.vodafone.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <21c2fc40-e385-b05e-6392-55ad219597da@pengutronix.de>
Date: Mon, 29 Jun 2020 18:11:01 +0200
MIME-Version: 1.0
In-Reply-To: <1874617325.108865.1593446626706@mail.vodafone.de>
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
Subject: Re: reset / watchdog on an imx7d soc
To: Giorgio Dal Molin <giorgio.nicole@arcor.de>, Fabio Estevam <festevam@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

On 6/29/20 6:03 PM, Giorgio Dal Molin wrote:
> Hi,
> 
>> On June 29, 2020 at 5:35 PM Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>>
>>
>> Hello Giorgio,
>>
>> On 6/29/20 5:30 PM, Giorgio Dal Molin wrote:
>>> Hi,
>>>
>>>> On June 29, 2020 at 3:30 PM Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>>>>
>>>>
>>>> Hello,
>>>>
>>>> On 6/29/20 12:53 PM, Giorgio Dal Molin wrote:
>>>>> Hi,
>>>>>
>>>>>> On June 29, 2020 at 10:44 AM Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>>>>>>
>>>>>>
>>>>>> Hello Giorgio,
>>>>>>
>>>>>> On 6/23/20 5:11 PM, Giorgio Dal Molin wrote:
>>>>>>> Hi Fabio,
>>>>>>>
>>>>>>> thank you for your quick reply.
>>>>>>>
>>>>>>> I've already found the errata you linked in your mail but I had no success
>>>>>>> applying the suggestion there; maybe I'm doing it wrong.
>>>>>>> Let's take the Option 3 there:
>>>>>>
>>>>>> Does reset within Linux (with say the imx_v6_v7_defconfg) work?
>>>>>
>>>>> No. I see the same behavior also with the kernel: after a 'shutdown -r'
>>>>> the system 'goes down' but doesn't reboot, it just hang:
>>>>>
>>>>> ~ # shutdown -r
>>>>> system is going down for reboot NOW
>>>>> ...
>>>>> [   46.248222] 000: ci_hdrc ci_hdrc.0: remove, state 1
>>>>> [   46.248253] 000: usb usb1: USB disconnect, device number 1
>>>>> [   46.248263] 000: usb 1-1: USB disconnect, device number 2
>>>>>
>>>>>
>>>>> The same happens if I kill the 'watchdog' process: after ~2 seconds
>>>>> the system just hangs.
>>>>>
>>>>> I'm sure there must be a solution because the original u-boot bootloader
>>>>> for the cpu module I'm using reboots the system as expected, through the wdog1;
>>>>> unfortunately it's not so trivial to find what makes the difference.
>>>>
>>>> Linux probably attempts reset via PSCI. Check for psci_system_reset
>>>> in your vendor's U-Boot and transplant it into barebox.
>>>
>>> U-Boot has actually a psci_system_reset(), it also rely on wdog1:
>>>
>>> __secure void psci_system_reset(void)
>>> {
>>> 	struct wdog_regs *wdog = (struct wdog_regs *)WDOG1_BASE_ADDR;
>>>
>>> 	/* make sure WDOG1 clock is enabled */
>>> 	writel(0x1 << 28, CCM_BASE_ADDR + CCM_ROOT_WDOG);
>>> 	writel(0x3, CCM_BASE_ADDR + CCM_CCGR_WDOG1);
>>> 	writew(WCR_WDE, &wdog->wcr);
>>>
>>> 	while (1)
>>> 		wfi();
>>> }
>>>
>>> It is also compiled in the uboot image, because if I add a syntax error in
>>> its body the compiler tells me; anyway I think it's not called when I issue
>>> the 'reset' command at the prompt because the 'reset' works properly even if
>>> I comment out the whole body of the function or if I add an endless loop like
>>> while(1); to it.
>>
>> Yes. It should be called by the kernel when CONFIG_ARM_PSCI_FW=y
>> and the device tree has the correct node. 
>>> Anyway I ported it to barebox, defining a void psci_system_reset(void) in
>>> arch/arm/mach-imx/imx7.c:
>>>
>>> ...
>>> #define CCM_BASE_ADDR   0x30380000
>>> #define CCM_ROOT_WDOG   0xbb80
>>> #define CCM_CCGR_WDOG1  0x49c8
>>> #define WCR_WDE	        0x04
>>> #define WDOG1_WCR       0x30280000
>>> #define wfi() __asm__ __volatile__ ("wfi" : : : "memory")
>>>
>>> static void imx7_system_reset(void)
>>> {
>>> 	printf("%s: called now.\n",__func__);
>>>
>>> 	// make sure WDOG1 clock is enabled
>>> 	writel(0x1 << 28, CCM_BASE_ADDR + CCM_ROOT_WDOG);
>>> 	writel(0x3, CCM_BASE_ADDR + CCM_CCGR_WDOG1);
>>> 	writew(WCR_WDE, WDOG1_WCR);
>>>
>>> 	while (1)
>>> 		wfi();
>>> };
>>>
>>> static struct psci_ops imx7_psci_ops = {
>>> 	.cpu_on = imx7_cpu_on,
>>> 	.cpu_off = imx7_cpu_off,
>>> 	.system_reset = imx7_system_reset,
>>> };
>>>
>>> and the following case to smc.c:
>>>
>>> static int do_smc(int argc, char *argv[])
>>> {
>>> ...
>>> 		case 'r':
>>> 			printf("issue psci reset...\n");
>>> 			arm_smccc_smc(ARM_PSCI_0_2_FN_SYSTEM_RESET,
>>> 				      0, 0, 0, 0, 0, 0, 0, &res);
>>> 			printf("reset issued...\n");
>>> 			break;
>>> ...
>>>
>>> to be able to call it.
>>> Now, using the modified 'smc' command I can see my printf's:
>>>
>>> samx7: / smc -n
>>> samx7: / smc -r
>>> issue psci reset...
>>> psci_system_reset called.
>>> imx7_system_reset: called now.
>>>
>>> but the soc still just hangs.
>>
>> What does U-Boot's reset commando do on an i.MX7?
> 
> It ends up calling this function in the imx_watchdog.c:
> 
> void __attribute__((weak)) reset_cpu(ulong addr)
> {
> 	struct watchdog_regs *wdog = (struct watchdog_regs *)WDOG1_BASE_ADDR;
> 
> 	printf("%s: called now\n",__func__);
> 	udelay(500);
> 
> 	clrsetbits_le16(&wdog->wcr, WCR_WT_MSK, WCR_WDE);
> 
> 	writew(0x5555, &wdog->wsr);
> 	writew(0xaaaa, &wdog->wsr);	/* load minimum 1/2 second timeout */
> 	while (1) {
> 		/*
> 		 * spin for .5 seconds before reset
> 		 */
> 	}
> }
> 
> I added the printf / udelay to be sure. WCR_WT_MSK is (0xff << 8).

Hmm and same code doesn't reset it in barebox? That's strange.
Is there something in the DCD table that you are missing in barebox?

> 
> What I also observed is that if I upload the uboot image with the imx-usb-loader it boots
> and runs normally but the reset in this case also just hangs the soc without rebooting it,
> like barebox; so there must be a difference between an 'usb uploaded' boot and a 'qspi native'
> boot.

Are you sure it's not resetting to serial download mode again?

> 
> giorgio
> 
>>
>>>
>>> giorgio
>>>
>>>>
>>>>>
>>>>> giorgio
>>>>>
>>>>>
>>>>>>
>>>>>> -- 
>>>>>> Pengutronix e.K.                           |                             |
>>>>>> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
>>>>>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>>>>>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>>>>>>
>>>>>> _______________________________________________
>>>>>> barebox mailing list
>>>>>> barebox@lists.infradead.org
>>>>>> http://lists.infradead.org/mailman/listinfo/barebox
>>>>>
>>>>
>>>> -- 
>>>> Pengutronix e.K.                           |                             |
>>>> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
>>>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>>>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>>>>
>>>> _______________________________________________
>>>> barebox mailing list
>>>> barebox@lists.infradead.org
>>>> http://lists.infradead.org/mailman/listinfo/barebox
>>>
>>
>> -- 
>> Pengutronix e.K.                           |                             |
>> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>>
>> _______________________________________________
>> barebox mailing list
>> barebox@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/barebox
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
