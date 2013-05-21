Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x22d.google.com ([2a00:1450:4013:c01::22d])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ueg7x-0001BO-LT
 for barebox@lists.infradead.org; Tue, 21 May 2013 06:32:54 +0000
Received: by mail-ea0-f173.google.com with SMTP id n15so135826ead.4
 for <barebox@lists.infradead.org>; Mon, 20 May 2013 23:32:31 -0700 (PDT)
Message-ID: <519B14FC.5060002@gmail.com>
Date: Tue, 21 May 2013 08:32:28 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
References: <1368987835-13323-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1368987835-13323-6-git-send-email-sebastian.hesselbarth@gmail.com>
 <20130521062810.GE32299@pengutronix.de>
In-Reply-To: <20130521062810.GE32299@pengutronix.de>
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

On 05/21/2013 08:28 AM, Sascha Hauer wrote:
> Sebastian,
>
>> +static int armada_370_xp_init_soc(void)
>>   {
>>   	unsigned long phys_base, phys_size;
>>
>> -	mvebu_init_clocks();
>> +	armada_370_xp_init_clocks();
>>   	add_generic_device("mvebu-timer", DEVICE_ID_SINGLE, NULL,
>> -			   MVEBU_TIMER_BASE, 0x30, IORESOURCE_MEM,
>> -			   NULL);
>> -	mvebu_memory_find(&phys_base,&phys_size);
>> +			   (unsigned int)ARMADA_370_XP_TIMER_BASE, 0x30,
>> +			   IORESOURCE_MEM, NULL);
>> +	armada_370_xp_memory_find(&phys_base,&phys_size);
>>   	arm_add_mem_device("ram0", phys_base, phys_size);
>> +	armada_370_xp_add_uart();
>
> How do you want to support a board which uses another UART instead of
> uart0 when you call this from SoC code?
>
> I don't think this line should be here.

Sascha,

there is a CONFIG_MVEBU_CONSOLE_UART introduced in patch 3. You can
select the debug console which defaults to 0 for all SoCs.

It is converted to the console uart above:

+#define CONSOLE_UART_BASE	\
+	ARMADA_370_XP_UARTn_BASE(CONFIG_MVEBU_CONSOLE_UART)

Sebastian

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
