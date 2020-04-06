Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx009.vodafonemail.xion.oxcs.net ([153.92.174.39])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLTTg-0006LT-RE
 for barebox@lists.infradead.org; Mon, 06 Apr 2020 15:15:58 +0000
References: <c013449a-b775-b805-df78-48a908d506fb@arcor.de>
 <d5949d44-9377-98f4-029c-ae1b0debf7d1@pengutronix.de>
 <2179bad5-0ec6-a2ae-683f-f2f24e3aabfb@arcor.de>
 <56816c6f-86ac-e350-3d23-bf0ff1fe87d2@pengutronix.de>
 <6679e805-8f1e-0c02-cc73-e2d2ab4911c1@arcor.de>
 <63e3eb58-9f5b-54d6-e8cf-b7672fe55a4a@pengutronix.de>
 <9bd7f507-8f59-98ee-18af-48be3dba9372@arcor.de>
 <f075fcf2-5703-37ee-b197-84afe0585560@pengutronix.de>
From: Giorgio <giorgio.nicole@arcor.de>
Message-ID: <3c69c3fb-d8bd-b39d-a0ea-704c8ad99dfc@arcor.de>
Date: Mon, 6 Apr 2020 17:15:37 +0200
MIME-Version: 1.0
In-Reply-To: <f075fcf2-5703-37ee-b197-84afe0585560@pengutronix.de>
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

I've also tried the arm_v7_defconfig + my board specific code but it does not
solve the problem.

The setup I'm using to build barebox just include support for my board; in my
board code, under arch/arm/boards/kontron-samx7, I've nothing special, just
a custom init script in the environment.

To trigger the code that makes barebox hang I use now the command
'smc -n': it calls armv7_secure_monitor_install() and then __mmu_cache_on()
that finally jumps to 'v7_mmu_cache_on'.

Searching in the Armv7-A ref. man. here:

https://static.docs.arm.com/ddi0406/cd/DDI0406C_d_armv7ar_arm.pdf

at B4.1.43 (page B4 - 1554) I found that the reset value of this cp15 reg.
is UNKNOWN and I can also verify this. Moreover the reg. must also be
banked: there is a copy in secure mode and one in nonsecure mode.
My test consists in reading the register just before and just after
the call to arm_smccc_smc(0, 0, 0, 0, 0, 0, 0, 0, &res):

static u32 read_dacr(void)
{
	unsigned int reg;

	asm volatile ("mrc p15, 0, %0, c3, c0, 0\n" : "=r"(reg));
	return reg;
}

...

int __armv7_secure_monitor_install(void)
{
...
	printf("%s: 1) dacr: 0x%08x\n",__func__,read_dacr());

	/* Initialize the secure monitor */
	arm_smccc_smc(0, 0, 0, 0, 0, 0, 0, 0, &res);

	/* We're in nonsecure mode now */

	printf("%s: 2) dacr: 0x%08x\n",__func__,read_dacr());
	
	return 0;
}

and here is what I get:

samx7: / smc -n
__armv7_secure_monitor_install: 1) dacr: 0x00000001
__armv7_secure_monitor_install: 2) dacr: 0xdbf7afaa

If I write a 0x1 or a 0x3 to DACR just before enabling the MMU in
nonsecure mode then barebox does not hang.

giorgio

On 2020-04-06 08:16, Ahmad Fatoum wrote:
> Hello Giorgio,
> 
> On 4/3/20 3:47 PM, Giorgio wrote:
>> Hi Ahmad,
>>
>> thank you for the detailed explanations, I'll have a look
>> at the armv7 ref. manual for more background.
>>
>> I wanted just to note, the problem is specifically linked
>> to enabling the MMU:
>>
>> in arch/arm/cpu/cache-armv7.S:
>>
>>
>> 		orrne	r0, r0, #1		@ MMU enabled
>> ...
>> 		mcr	p15, 0, r0, c1, c0, 0	@ load control register
>>
>> without the 'orrne ...' the imx7 does not hang.
> 
> I can't reproduce this exact problem. My setup:
> 
> - i.MX7D sabresd board,
> - imx_v7_defconfig
> - check out of upstream/next, commit 5931fe40 ("Merge branch 'for-next/zii' into next")
> - revert of commit 8b2104d ("driver: Call of_clk_set_defaults for each probed device")
> - nv bootm.secure_state=nonsecure
> 
> With this, I didn't observe any barebox hangs[1] while preparing a Linux net boot.
> What's your setup?
> 
> [1]: Linux still hangs due to what I assume to be a psci issue, kernel log says
>      "unsupported enable-method property: psci" before getting stuck durcing SDHCI probe
> 

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
