Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ig0-x244.google.com ([2607:f8b0:4001:c05::244])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aR320-00077m-NL
 for barebox@lists.infradead.org; Wed, 03 Feb 2016 19:24:01 +0000
Received: by mail-ig0-x244.google.com with SMTP id hb3so635381igb.0
 for <barebox@lists.infradead.org>; Wed, 03 Feb 2016 11:23:38 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20160203073619.GH4118@pengutronix.de>
References: <1454296213-12734-1-git-send-email-andrew.smirnov@gmail.com>
 <1454296213-12734-8-git-send-email-andrew.smirnov@gmail.com>
 <20160203073619.GH4118@pengutronix.de>
Date: Wed, 3 Feb 2016 11:23:38 -0800
Message-ID: <CAHQ1cqFg1+bna2eiR=d6p76=SxqUV-fSzUans57=iaJLL5RVgw@mail.gmail.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH v2 7/8] mdio_bus: Change PHY's naming scheme
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Tue, Feb 2, 2016 at 11:36 PM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> On Sun, Jan 31, 2016 at 07:10:12PM -0800, Andrey Smirnov wrote:
>> Change the way PHY devices are named upon creation. This commit replaces
>> sequentialy numbered "/dev/phy%d" with "/dev/mdio%d-phy%02x". This way
>> it is significanlty easier to identify which PHY in real-life (e.g. on a
>> schematic) corresponds to which device in /dev.
>>
>> Also, replace asprintf with xasprintf to provide some form of memory
>> allocation failure checking.
>>
>> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
>> ---
>>  drivers/net/phy/mdio_bus.c | 4 +++-
>>  1 file changed, 3 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/net/phy/mdio_bus.c b/drivers/net/phy/mdio_bus.c
>> index b74b27e..41bf018 100644
>> --- a/drivers/net/phy/mdio_bus.c
>> +++ b/drivers/net/phy/mdio_bus.c
>> @@ -333,7 +333,9 @@ static int mdio_bus_probe(struct device_d *_dev)
>>       dev_add_param_int_ro(&dev->dev, "phy_addr", dev->addr, "%d");
>>       dev_add_param_int_ro(&dev->dev, "phy_id", dev->phy_id, "0x%08x");
>>
>> -     dev->cdev.name = asprintf("phy%d", _dev->id);
>> +     dev->cdev.name = xasprintf("mdio%d-phy%02x",
>> +                                dev->bus->dev.id,
>> +                                dev->addr);
>
> While at it we can change the phy device name in the same way to be
> consistent:

Yeah, I agree, let's do this. Let me know if I should do v3 patch set.

Thanks,
Andrey

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
