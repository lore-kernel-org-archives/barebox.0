Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x232.google.com ([2a00:1450:400c:c05::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yp2fj-0004XH-6N
 for barebox@lists.infradead.org; Sun, 03 May 2015 22:47:40 +0000
Received: by widdi4 with SMTP id di4so103586841wid.0
 for <barebox@lists.infradead.org>; Sun, 03 May 2015 15:47:17 -0700 (PDT)
Message-ID: <5546A571.1000006@gmail.com>
Date: Mon, 04 May 2015 00:47:13 +0200
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
References: <1428627830-17281-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1428627830-17281-2-git-send-email-sebastian.hesselbarth@gmail.com>
 <554500FC.2050607@vanguardiasur.com.ar>
 <5545335E.1000700@vanguardiasur.com.ar> <5545EF64.4050107@gmail.com>
In-Reply-To: <5545EF64.4050107@gmail.com>
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
Subject: Re: [PATCH 01/13] net: phy: Support Marvell 88E1318S PHY
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc: barebox@lists.infradead.org

On 03.05.2015 11:50, Sebastian Hesselbarth wrote:
> On 02.05.2015 22:28, Ezequiel Garcia wrote:
>> On 05/02/2015 01:53 PM, Ezequiel Garcia wrote:
>>> On 04/09/2015 10:03 PM, Sebastian Hesselbarth wrote:
>>>> This adds support for the Marvell 88E1318S Gigabit Ethernet PHY.
>>>>
>>>> Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
> [...]
>>>
>>> With this commit, the Openblocks A6 PHY is not brought up, and so
>>> network is broken.
>>>
>>> I'll look into it (unless you have an idea),
>>>
>>
>> Hm.. the devicetree needs to specify the phy-mode:
>>
>> diff --git a/dts/src/arm/kirkwood-openblocks_a6.dts
>> b/dts/src/arm/kirkwood-openblocks_a6.dts
>> index fb9dc22..c53e37f 100644
>> --- a/dts/src/arm/kirkwood-openblocks_a6.dts
>> +++ b/dts/src/arm/kirkwood-openblocks_a6.dts
>> @@ -171,6 +171,7 @@
>>   &eth0 {
>>          status = "okay";
>>          ethernet0-port@0 {
>> +               phy-mode = "rgmii-id";
>>                  phy-handle = <&ethphy0>;
>>          };
>>   };
>>
>> However, network works really crappy even after this change (either in
>> barebox or in Linux).
>
> Ezequiel,
>
> RGMII phy-mode would have been my first guess.
>
> Can you define "crappy"  with respect to ethernet?
>
> The patch doesn't do anything different than the linux marvell phy
> code would do. Do you have access to A6's u-boot source and can match
> up the PHY init sequence?

Maybe we need some 1V8 RGMII setup for A6 too?

https://lkml.org/lkml/2015/5/3/159

It also uses 88e1318 PHY but on A370 and on Kirkwood we also have
IO Configuration 0 register 0xf10100e0, bit 7:
RGMII PADS Voltage, 0 = 3V3, 1 = 1V8

Maybe you double-check it on u-boot first?

Sebastian

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
