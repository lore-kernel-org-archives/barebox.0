Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x244.google.com ([2a00:1450:400c:c09::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fXi6o-0001XB-Jf
 for barebox@lists.infradead.org; Tue, 26 Jun 2018 07:09:52 +0000
Received: by mail-wm0-x244.google.com with SMTP id p126-v6so567258wmb.2
 for <barebox@lists.infradead.org>; Tue, 26 Jun 2018 00:09:40 -0700 (PDT)
From: Nikita Yushchenko <nikita.yoush@cogentembedded.com>
References: <20180622163012.1590-1-nikita.yoush@cogentembedded.com>
 <20180625123433.jo75zl77bovldzc2@pengutronix.de>
 <1ef31458-200c-b132-5b86-fabdc92a810d@cogentembedded.com>
 <20180626060034.75o36ndv2bdawwk2@pengutronix.de>
 <ed26a296-8bf4-f328-c900-2606be033506@cogentembedded.com>
 <20180626064618.j6mjqjpmff46hqwd@pengutronix.de>
 <56f9d1d6-1129-b526-00d2-21fd17c93368@cogentembedded.com>
Message-ID: <db6e69a1-ee6a-d635-c57b-1edd913fee1c@cogentembedded.com>
Date: Tue, 26 Jun 2018 10:09:36 +0300
MIME-Version: 1.0
In-Reply-To: <56f9d1d6-1129-b526-00d2-21fd17c93368@cogentembedded.com>
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
Subject: Re: [PATCH] net: avoid assigning ethaddr to wrong devices
To: Sascha Hauer <sha@pengutronix.de>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, barebox@lists.infradead.org, Chris Healy <cphealy@gmail.com>



26.06.2018 10:05, Nikita Yushchenko wrote:
>>>> It's PowerPC hardware which on barebox is not probed from devicetree, so
>>>> indeed there is no device node.
>>>
>>> But if no device tree, then
>>>   alias = of_find_node_by_alias(of_get_root_node(), eth);
>>> should return NULL, and eth_is_stranger() should return false, thus
>>> making my patch no-op?
>>
>> Ok, you are right. I misread the code. You call of_find_node_by_alias()
>> on the internal device tree, not the one the Kernel is started with, so
>> indeed eth_is_stranger() should return false.
>>
>> Nevertheless I do not like this patch very much as it adds more code to
>> a place that is already hard to understand in all of its consequences.
>>
>> I would like to explore the route that we assign these dynamic devices
>> an id that is not present in any alias node. That could be done by
>> searching for the highest alias number and give the dynamic devices one
>> number higher. Would that be doable?
> 
> Dynamic device number is assigned via
> - setting id to DEVICE_ID_DYNAMIC, either by driver or by code at top of
> eth_register(),
> - replacing that with lowest currently-unused number at top of
> register_device()
> 
> Probably we can add one more magic value that driver could set into
> edev->dev.id before calling eth_register(), that will be replaced with
> lowest currently-unused number that does not have aliases. However, this
> will change eth numbering in existing setups and thus can break them.
> 
> Possible option could be a flag in edev that forbids setting/exporting
> ethaddr for this device. Doing so for usbnet seems safe. This will fix
> my case.

Thinking more on this, maybe cleaner is NOT to match by id of in-barebox
ethdevice when setting/exporting ethaddr by default, but explicitly
allow such matching for platforms that need it.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
