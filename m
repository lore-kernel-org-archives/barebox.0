Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x232.google.com ([2a00:1450:400c:c00::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YhfJs-0001BK-68
 for barebox@lists.infradead.org; Mon, 13 Apr 2015 14:26:36 +0000
Received: by wgso17 with SMTP id o17so83007116wgs.1
 for <barebox@lists.infradead.org>; Mon, 13 Apr 2015 07:26:14 -0700 (PDT)
Message-ID: <552BD204.5060808@gmail.com>
Date: Mon, 13 Apr 2015 16:26:12 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
References: <1428627766-17178-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1428627766-17178-2-git-send-email-sebastian.hesselbarth@gmail.com>
 <20150413065403.GX9742@pengutronix.de>
In-Reply-To: <20150413065403.GX9742@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/4] base: Introduce deferred probing
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 13.04.2015 08:54, Sascha Hauer wrote:
> On Fri, Apr 10, 2015 at 03:02:43AM +0200, Sebastian Hesselbarth wrote:
>> As expected, we would need deferred probing sooner or later. This is
>> a first approach to allow devices to return -EPROBE_DEFER and get
>> sorted into a list of deferred devices that will be re-probed later.
[...}
>> +static int device_probe_deferred(void)
>> +{
>> +	struct device_d *dev, *tmp;
>> +	struct driver_d *drv;
>> +	int retries = 10;
>> +
>> +	do {
>> +		if (list_empty(&deferred))
>> +			break;
>> +
>> +		list_for_each_entry_safe(dev, tmp, &deferred, active) {
>> +			list_del(&dev->active);
>> +
>> +			if (dev->bus) {
>> +				bus_for_each_driver(dev->bus, drv) {
>> +					if (!match(drv, dev))
>> +						break;
>> +				}
>> +				device_probe(dev);
>> +			}
>> +		}
>> +	} while (retries--);
>
> Instead of a hardcoded loop counter I think this should be "while at least
> one device successfully probed". Also if probe fails and the return
> value is still -EPROBE_DEFER you have to add the device to the deferred
> list again.

Sascha,

agreed. I'll have another look at how deferred probing is handled here
and resend once I have implemented your comments above.

Sebastian


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
