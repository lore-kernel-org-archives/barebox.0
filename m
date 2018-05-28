Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-it0-x243.google.com ([2607:f8b0:4001:c0b::243])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fNMVr-0006Et-B0
 for barebox@lists.infradead.org; Mon, 28 May 2018 18:04:56 +0000
Received: by mail-it0-x243.google.com with SMTP id p3-v6so15617408itc.0
 for <barebox@lists.infradead.org>; Mon, 28 May 2018 11:04:42 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20180528155153.6w32khhr3wjdktlo@pengutronix.de>
References: <20180526204451.16530-1-andrew.smirnov@gmail.com>
 <20180526204451.16530-48-andrew.smirnov@gmail.com>
 <20180528155153.6w32khhr3wjdktlo@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 28 May 2018 11:04:39 -0700
Message-ID: <CAHQ1cqFL4MnQDF5W7RynBX=HY9Tpbzmz7eYps2Njdy0iQR7VcQ@mail.gmail.com>
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
Subject: Re: [PATCH v2 47/48] ARM: i.MX8: Add i.MX8mq EVK support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, May 28, 2018 at 8:51 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Sat, May 26, 2018 at 01:44:50PM -0700, Andrey Smirnov wrote:
>> From: Sascha Hauer <s.hauer@pengutronix.de>
>>
>> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
>> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>> ---
>> diff --git a/Documentation/boards/imx.rst b/Documentation/boards/imx.rst
>> index 196513520..9ceb68bef 100644
>> --- a/Documentation/boards/imx.rst
>> +++ b/Documentation/boards/imx.rst
>> @@ -38,12 +38,19 @@ SD card::
>>    # otherwise:
>>    cat barebox-flash-image > /dev/sdd
>>
>> +NOTE: Commands above will not work on i.MX8
>> +
>>  The above will overwrite the MBR (and consequently the partition table)
>>  on the destination SD card. To preserve the MBR while writing the rest
>>  of the image to the card, use::
>>
>>    dd if=images/barebox-freescale-imx51-babbage.img of=/dev/sdd bs=1024 skip=1 seek=1
>>
>> +NOTE: MaskROM on i.MX8 expects image to start at +33KiB mark, so the
>> +following command has to be used instead:
>> +
>> +  dd if=images/barebox-nxp-imx8mq-evk.img of=/dev/sdd bs=1024 skip=1 seek=33
>
> Why don't you use my version of imx-image which already adds the
> necessary offset to the image?

I just wasn't aware it existed. I'd love to switch. Where can I find it?

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
