Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD34N-0003Pq-JM
 for barebox@lists.infradead.org; Wed, 25 Sep 2019 08:54:45 +0000
References: <20190924132918.28710-1-bst@pengutronix.de>
 <20190924132918.28710-4-bst@pengutronix.de>
 <CAHQ1cqGrgqbTMGwRbNBVZZmPh+5gL3+qusKwNC6Q9iP9zoRweQ@mail.gmail.com>
From: Bastian Krause <bst@pengutronix.de>
Message-ID: <08e62315-25d1-71e3-b804-24be46c84d55@pengutronix.de>
Date: Wed, 25 Sep 2019 10:54:41 +0200
MIME-Version: 1.0
In-Reply-To: <CAHQ1cqGrgqbTMGwRbNBVZZmPh+5gL3+qusKwNC6Q9iP9zoRweQ@mail.gmail.com>
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
Subject: Re: [PATCH v3 3/4] nvmem: ocotp: set unique id as machine-id hashable
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

Hey Andrey,

On 9/24/19 7:18 PM, Andrey Smirnov wrote:
> On Tue, Sep 24, 2019 at 6:29 AM Bastian Krause <bst@pengutronix.de> wrote:
>>
>> Pass the OCOTP unique id as hashable information to machine id
>> generation.
>>
>> Signed-off-by: Bastian Krause <bst@pengutronix.de>
>> ---
>>  drivers/nvmem/ocotp.c | 24 ++++++++++++++++++++++++
>>  1 file changed, 24 insertions(+)
>>
>> diff --git a/drivers/nvmem/ocotp.c b/drivers/nvmem/ocotp.c
>> index 3f9f162860..d5e9d72a52 100644
>> --- a/drivers/nvmem/ocotp.c
>> +++ b/drivers/nvmem/ocotp.c
>> @@ -29,6 +29,7 @@
>>  #include <regmap.h>
>>  #include <linux/clk.h>
>>  #include <mach/ocotp.h>
>> +#include <machine_id.h>
>>  #include <linux/nvmem-provider.h>
>>
>>  /*
>> @@ -77,6 +78,9 @@
>>  #define MAC_OFFSET_1                   (0x24 * 4)
>>  #define MAX_MAC_OFFSETS                        2
>>  #define MAC_BYTES                      8
>> +#define UNIQUE_ID_NUM                  2
>> +/* 0 <= n < UNIQUE_ID_NUM */
>> +#define UNIQUE_ID(n)                   (OCOTP_WORD(0x410 + 0x10 * (n)) | OCOTP_BIT(0) | OCOTP_WIDTH(32))
> 
> There already OCOTP_UNIQUE_ID() in
> arch/arm/mach-imx/include/mach/ocotp-fusemap.h might make sense to
> re-use it.

Yes.

> 
>>
>>  enum imx_ocotp_format_mac_direction {
>>         OCOTP_HW_TO_MAC,
>> @@ -548,6 +552,23 @@ static int imx_ocotp_read(struct device_d *dev, const int offset, void *val,
>>         return regmap_bulk_read(priv->map, offset, val, bytes);
>>  }
>>
>> +static int imx_ocotp_set_unique_machine_id(void)
> 
> The return value of this function is not used anywhere in this patch.
> Maybe it would make sense to convert it to void and simplify the rest
> of the code?

You're right, will include it in v4.

Thanks!

Regards,
Bastian

-- 
Pengutronix e.K.
Industrial Linux Solutions
http://www.pengutronix.de/
Peiner Str. 6-8, 31137 Hildesheim, Germany
Amtsgericht Hildesheim, HRA 2686

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
