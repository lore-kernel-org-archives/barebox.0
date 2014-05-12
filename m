Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x22b.google.com ([2a00:1450:400c:c03::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wjl03-0004Iu-K7
 for barebox@lists.infradead.org; Mon, 12 May 2014 07:50:16 +0000
Received: by mail-we0-f171.google.com with SMTP id w62so6474534wes.30
 for <barebox@lists.infradead.org>; Mon, 12 May 2014 00:49:50 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20140512044059.GX5858@pengutronix.de>
References: <1399761724-4109-1-git-send-email-franck.jullien@gmail.com>
 <20140512044059.GX5858@pengutronix.de>
Date: Mon, 12 May 2014 09:49:50 +0200
Message-ID: <CAJfOKBzmAZxvOVEqSGaReS8-s6W3B0if4OnKC55RL0vLTDZGCA@mail.gmail.com>
From: Franck Jullien <franck.jullien@gmail.com>
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
Subject: Re: [PATCH] openrisc: move ethoc registration to device_initcall
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox <barebox@lists.infradead.org>

2014-05-12 6:40 GMT+02:00 Sascha Hauer <s.hauer@pengutronix.de>:
> On Sun, May 11, 2014 at 12:42:04AM +0200, Franck Jullien wrote:
>> Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
>> ---
>>  arch/openrisc/boards/generic/generic.c |   18 ++++++++++++------
>>  1 files changed, 12 insertions(+), 6 deletions(-)
>>
>> diff --git a/arch/openrisc/boards/generic/generic.c b/arch/openrisc/boards/generic/generic.c
>> index 9f68007..5c1698d 100644
>> --- a/arch/openrisc/boards/generic/generic.c
>> +++ b/arch/openrisc/boards/generic/generic.c
>> @@ -9,6 +9,18 @@ static struct NS16550_plat serial_plat = {
>>       .shift = 0,
>>  };
>>
>> +static int openrisc_devices_init(void)
>> +{
>> +#ifdef CONFIG_DRIVER_NET_ETHOC
>> +     add_generic_device("ethoc", DEVICE_ID_DYNAMIC, NULL,
>> +                        OPENRISC_SOPC_ETHOC_BASE, 0x1000,
>> +                        IORESOURCE_MEM, NULL);
>> +#endif
>> +     return 0;
>> +}
>> +
>> +device_initcall(openrisc_devices_init);
>
> What's wrong with the original console_initcall? Does this solve any
> issues?
>
> Sascha
>

It does not solve anything. However, it can lead to errors.
As a matter of fact I have a NOR on my board so I added
add_cfi_flash_device and devfs_add_partition just above the ethoc in
the console_initcall...and it doesn't work (because it's too early in
the boot process).

Anyway, don't apply this for now has I have some problems with
ethernet and it's may be related.

Franck.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
