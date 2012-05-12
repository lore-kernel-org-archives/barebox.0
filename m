Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from inx.pm.waw.pl ([195.116.170.130])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1STHki-0003Ks-HR
 for barebox@lists.infradead.org; Sat, 12 May 2012 19:13:17 +0000
From: Krzysztof Halasa <khc@pm.waw.pl>
References: <m3sjfemhv5.fsf@intrepid.localdomain>
 <20120511184056.GO27341@pengutronix.de>
Date: Sat, 12 May 2012 21:09:35 +0200
In-Reply-To: <20120511184056.GO27341@pengutronix.de> (Sascha Hauer's message
 of "Fri, 11 May 2012 20:40:56 +0200")
Message-ID: <m3likx2p3k.fsf@intrepid.localdomain>
MIME-Version: 1.0
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] NOR flash: reduce size of cfiword_t if not using 64-bit
 bus.
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi,

Sascha Hauer <s.hauer@pengutronix.de> writes:

>> +++ b/drivers/nor/cfi_flash.h
>> @@ -30,7 +30,17 @@
>>  #include <linux/mtd/mtd.h>
>>  
>>  typedef unsigned long flash_sect_t;
>> +
>> +#if   defined(CONFIG_DRIVER_CFI_BANK_WIDTH_8)
>>  typedef u64 cfiword_t;
>> +#elif defined(CONFIG_DRIVER_CFI_BANK_WIDTH_4)
>> +typedef u32 cfiword_t;
>> +#elif defined(CONFIG_DRIVER_CFI_BANK_WIDTH_2)
>> +typedef u16 cfiword_t;
>> +#else
>> +typedef u8 cfiword_t;
>> +#endif
>
> Is this worth it? Do we safe binary size or what else is the reasoning
> for this patch?

Well, I haven't done any measurments :-(
But I guess long long operations on a 32-bit CPU aren't very effective.

Just checked, with WIDTH_2 on my IXP425 the barebox.bin shrunk from
239456 to 239264 bytes. That's 192 bytes saved with this patch.
-- 
Krzysztof Halasa

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
