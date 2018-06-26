Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x243.google.com ([2a00:1450:400c:c09::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fXh5N-0001dN-BN
 for barebox@lists.infradead.org; Tue, 26 Jun 2018 06:04:18 +0000
Received: by mail-wm0-x243.google.com with SMTP id u18-v6so367170wmc.1
 for <barebox@lists.infradead.org>; Mon, 25 Jun 2018 23:04:06 -0700 (PDT)
References: <20180622163012.1590-1-nikita.yoush@cogentembedded.com>
 <20180625123433.jo75zl77bovldzc2@pengutronix.de>
 <1ef31458-200c-b132-5b86-fabdc92a810d@cogentembedded.com>
 <20180626060034.75o36ndv2bdawwk2@pengutronix.de>
From: Nikita Yushchenko <nikita.yoush@cogentembedded.com>
Message-ID: <ed26a296-8bf4-f328-c900-2606be033506@cogentembedded.com>
Date: Tue, 26 Jun 2018 09:04:02 +0300
MIME-Version: 1.0
In-Reply-To: <20180626060034.75o36ndv2bdawwk2@pengutronix.de>
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

>>>> It can happen that device tree contains ethernetN alias pointing to
>>>> valid device, but that device is not supported by [running instance of]
>>>> barebox. Then ethN remains unassigned, and can be later captured by
>>>> dynamically registered device such as usbnet.
>>>>
>>>> For such "stranger" device, ethaddr preconfigured for ethN should not be
>>>> assigned. Also, ethaddr of such device should not be written to
>>>> ethernetN node of device tree passed to kernel being booted.
>>>>
>>>
>>> There's only one usecase for matching edev->dev.id against the ethernetx
>>> alias which has been introduced with:
>>>
>>> | commit a78431c7fc42193be252417bf06f7cc61765a51e
>>> | Author: Renaud Barbier <renaud.barbier@ge.com>
>>> | Date:   Wed Sep 4 08:37:03 2013 +0200
>>> | 
>>> |     net, of: fixup MAC address by alias
>>> |     
>>> |     If a network device has not been registered from the devicetree, we may
>>> |     still find it by its alias in the devicetree. This way also platform based
>>> |     network devices can obtain a valid MAC address in the devicetree.
>>> |     
>>> |     Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
>>> |     Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>>>
>>> Your eth_is_stranger() returns true for the devices that Renaud wanted
>>> to support, so instead of applying your patch we could equally well
>>> revert that from Renaud.
>>>
>>> I don't have a good idea right now how to fix this. Maybe we have to
>>> make sure that ethernet devices from dynamic buses never get an id
>>> asigned that is also present in the aliases node.
>>
>> eth_is_stranger() for ethN returns true only if ethernetN alias exists
>> AND ethN either does not have device tree node, or has node different
>> from what is pointed by alias.
>>
>> My assumption was that if under linux ethdevice is configured via device
>> tree node with ethernetX alias, then under barebox it should also be
>> configured via device tree node with same alias.
>>
>> You mean, there is hardware that breaks this assumption?
>> Which hardware it is?
> 
> It's PowerPC hardware which on barebox is not probed from devicetree, so
> indeed there is no device node.

But if no device tree, then
  alias = of_find_node_by_alias(of_get_root_node(), eth);
should return NULL, and eth_is_stranger() should return false, thus
making my patch no-op?

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
