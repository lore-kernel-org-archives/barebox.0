Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtprelay0088.hostedemail.com ([216.40.44.88]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cRznz-0003L1-09
 for barebox@lists.infradead.org; Fri, 13 Jan 2017 11:14:01 +0000
References: <20170112122005.805-1-abbotti@mev.co.uk>
 <20170113073700.j3djezdqqkncucyh@pengutronix.de>
From: Ian Abbott <abbotti@mev.co.uk>
Message-ID: <3814a039-6263-cb8d-2311-65e2addcb67d@mev.co.uk>
Date: Fri, 13 Jan 2017 11:13:34 +0000
MIME-Version: 1.0
In-Reply-To: <20170113073700.j3djezdqqkncucyh@pengutronix.de>
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
Subject: Re: [PATCH] of_path: only handle no driver for device if it is on a
 bus
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 13/01/17 07:37, Sascha Hauer wrote:
> On Thu, Jan 12, 2017 at 12:20:05PM +0000, Ian Abbott wrote:
>> This fixes a regression in __of_find_path() for flash devices created by
>> the cadence-quadspi driver, which do not have 'dev->driver' set.  Such
>> devices do not have 'dev->bus' set either, so we can use that to qualify
>> the existing test.
>>
>> Signed-off-by: Ian Abbott <abbotti@mev.co.uk>
>> ---
>>  drivers/of/of_path.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/of/of_path.c b/drivers/of/of_path.c
>> index 946b9c7aa..e0b2dc124 100644
>> --- a/drivers/of/of_path.c
>> +++ b/drivers/of/of_path.c
>> @@ -66,7 +66,7 @@ static int __of_find_path(struct device_node *node, const char *part, char **out
>>  			return -ENODEV;
>>  	}
>>
>> -	if (!dev->driver)
>> +	if (dev->bus && !dev->driver)
>>  		return -ENODEV;
>
> I am not entirely happy with this patch. Let's hope it won't fall on our
> feet later. Applied for now, let's see.

Thanks!  A slightly more robust test, that would still allow drivers to 
control their own bus-less child devices, would be to find the device or 
its nearest ancestor that exists and has ->bus set or ->driver set, and 
that check it has->driver set.  That's awkward to explain in English (or 
German!), so:

	struct device_d *bdev;

	/* ... assuming dev exists ... */

	for (bdev = dev; bdev->parent && !bdev->bus && !bdev->driver;
	     bdev = bdev->parent)
		;
	if (!bdev->driver)
		return -ENODEV;	/* or perhaps -EPROBE_DEFER */

Perhaps that's overkill!

-- 
-=( Ian Abbott @ MEV Ltd.    E-mail: <abbotti@mev.co.uk> )=-
-=(                          Web: http://www.mev.co.uk/  )=-

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
