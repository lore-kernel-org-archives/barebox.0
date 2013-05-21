Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-f48.google.com ([74.125.83.48])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UegDi-0001Lc-Ou
 for barebox@lists.infradead.org; Tue, 21 May 2013 06:38:51 +0000
Received: by mail-ee0-f48.google.com with SMTP id b47so138147eek.7
 for <barebox@lists.infradead.org>; Mon, 20 May 2013 23:38:29 -0700 (PDT)
Message-ID: <519B1662.7070502@gmail.com>
Date: Tue, 21 May 2013 08:38:26 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
References: <1368987835-13323-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1368987835-13323-6-git-send-email-sebastian.hesselbarth@gmail.com>
 <20130521062810.GE32299@pengutronix.de>
 <20130521063331.GF32299@pengutronix.de>
In-Reply-To: <20130521063331.GF32299@pengutronix.de>
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
Subject: Re: [PATCH 05/11] arm: mvebu: convert Armada 370/XP to common init
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

On 05/21/2013 08:33 AM, Sascha Hauer wrote:
> On Tue, May 21, 2013 at 08:28:10AM +0200, Sascha Hauer wrote:
>> Sebastian,
>>
>>> +static int armada_370_xp_init_soc(void)
>>>   {
>>>   	unsigned long phys_base, phys_size;
>>>
>>> -	mvebu_init_clocks();
>>> +	armada_370_xp_init_clocks();
>>>   	add_generic_device("mvebu-timer", DEVICE_ID_SINGLE, NULL,
>>> -			   MVEBU_TIMER_BASE, 0x30, IORESOURCE_MEM,
>>> -			   NULL);
>>> -	mvebu_memory_find(&phys_base,&phys_size);
>>> +			   (unsigned int)ARMADA_370_XP_TIMER_BASE, 0x30,
>>> +			   IORESOURCE_MEM, NULL);
>>> +	armada_370_xp_memory_find(&phys_base,&phys_size);
>>>   	arm_add_mem_device("ram0", phys_base, phys_size);
>>> +	armada_370_xp_add_uart();
>>
>> How do you want to support a board which uses another UART instead of
>> uart0 when you call this from SoC code?
>
> Ok, I see. You use CONFIG_MVEBU_CONSOLE_UART to determine an UART base.
> What's the rationale for doing this? We don't want to have compile time
> decisions for things we know at runtime.

How do you know the UART console by runtime? It can be on any UART
possible. Anyway, as we are moving to DT with the next patches, all
enabled uarts will be registered.

But leaves the question, how to get the correct UART for console?

Sebastian

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
