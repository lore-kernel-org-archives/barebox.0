Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.22])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UfVoZ-0005Pl-Ml
 for barebox@lists.infradead.org; Thu, 23 May 2013 13:44:20 +0000
Received: from mailout-de.gmx.net ([10.1.76.27]) by mrigmx.server.lan
 (mrigmx001) with ESMTP (Nemesis) id 0LeOot-1U7pYJ0ZkD-00q9vp for
 <barebox@lists.infradead.org>; Thu, 23 May 2013 15:43:58 +0200
Message-ID: <519E1D19.4090402@rempel-privat.de>
Date: Thu, 23 May 2013 15:43:53 +0200
From: Oleksij Rempel <linux@rempel-privat.de>
MIME-Version: 1.0
References: <1369208989-14369-1-git-send-email-linux@rempel-privat.de>
 <1369208989-14369-2-git-send-email-linux@rempel-privat.de>
 <20130523133545.GR32299@pengutronix.de>
In-Reply-To: <20130523133545.GR32299@pengutronix.de>
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
Subject: Re: [RFC, PATCH v2 1/3] MIPS: add Atheros ar531x family support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Am 23.05.2013 15:35, schrieb Sascha Hauer:
> Hi Oleksij,
>
> On Wed, May 22, 2013 at 09:49:47AM +0200, Oleksij Rempel wrote:
>> Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
>> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
>> +
>> +/*
>> + * This table is indexed by bits 5..4 of the CLOCKCTL1 register
>> + * to determine the predevisor value.
>> + */
>> +static int CLOCKCTL1_PREDIVIDE_TABLE[4] = { 1, 2, 4, 5 };
>> +
>> +static unsigned int
>> +ar2312_cpu_frequency(void)
>> +{
>> +	unsigned int predivide_mask, predivide_shift;
>> +	unsigned int multiplier_mask, multiplier_shift;
>> +	unsigned int clockCtl1, preDivideSelect, preDivisor, multiplier;
>
> No CamelCase please.

ok. i'll fix it.

>> +static int platform_init(void)
>> +{
>> +	add_generic_device("ar2312_reset", DEVICE_ID_SINGLE, NULL,
>> +			KSEG1ADDR(AR2312_RESETTMR), 0x4,
>> +			IORESOURCE_MEM, NULL);
>> +	watchdog_init();
>> +	flash_init();
>> +	ether_init();
>
> Whether or not the flash/ethernet/serial device is available is board
> specific, not SoC specific, so this should be done in board code. It's
> good to provide helpers to make this simple for the board code though,
> so a good option would be to add a SoC prefix to the functions and call
> it from board code.

Probably it will make sense to have generic type of board. Because this 
will work with most configurations. Since it is WiSoC (Wireless SoC), 
ethernet is on chip too.

> Otherwise I am fine with this patch, but maybe Antony still has some
> comments.


-- 
Regards,
Oleksij

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
