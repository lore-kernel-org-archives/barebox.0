Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vk0-x22e.google.com ([2607:f8b0:400c:c05::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aVtXy-0003O8-2s
 for barebox@lists.infradead.org; Wed, 17 Feb 2016 04:17:03 +0000
Received: by mail-vk0-x22e.google.com with SMTP id e6so4168926vkh.2
 for <barebox@lists.infradead.org>; Tue, 16 Feb 2016 20:16:41 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <1455676867.18517.64.camel@rtred1test09.kymeta.local>
References: <1455672559-25061-1-git-send-email-andrew.smirnov@gmail.com>
 <1455672559-25061-16-git-send-email-andrew.smirnov@gmail.com>
 <1455676867.18517.64.camel@rtred1test09.kymeta.local>
Date: Tue, 16 Feb 2016 20:16:40 -0800
Message-ID: <CAHQ1cqHx+YFiZDD35_t9rbKfca424u+EL_j2YE39_w0nwW=FPg@mail.gmail.com>
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
Subject: Re: [PATCH 15/18] [RFC] net: eth: Always use DEVICE_ID_DYNAMIC
To: Trent Piepho <tpiepho@kymetacorp.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Tue, Feb 16, 2016 at 6:40 PM, Trent Piepho <tpiepho@kymetacorp.com> wrote:
> On Tue, 2016-02-16 at 17:29 -0800, Andrey Smirnov wrote:
>> Assigning device IDs based on device tree aliases doesn't work very well
>> on platforms that have both NICs that are a part of a platform with
>> assigned aliases and NICs with DEVICE_ID_DYNAMIC policy of ID
>> assignement due to the nature of the interfaces they are connected
>> via (PCIe, USB, etc.). Consider the following scenario:
>>
>> A device with built-in Ethernet adapter aliased to "ethernet0" and a
>> Ethernet chip connected via PCIe. This gives us two possible probing
>> orders:
>>   1.
>>     - built-in adapter comes up first gets assigned id of 0 and device
>>       "dev0"
>>     - PCIe adapter comes up second gets assigned id of 1 and device
>>       "dev1"
>>     - everything is hunky-dory
>>
>>   2.
>>     - built-in adapter comes up first but its probing gets deffered
>>     - PCIe adapter comes up second gets assigned id of 0 and device
>>       "dev0"
>>     - built-in adapter gets probed the second time, sucessfuly
>>       initializes itself but fails to register Ethernet device because
>>       "dev0" is already taken
>>
>> This patch solves the problem by forcing all Ethernet adapters to
>> use dynamic ID allocation.
>
> A lot of systems depend on aliases/ethernet0 pointing to the proper
> ethernet adapter.  How will they work with this?
>
> How will a boot script know which ethernet device to use ethact on?
>
> Suppose someone who doesn't know much about device trees and hasn't
> looked at the SoC datasheet, which in my experience is about 80% of the
> barebox userbase, comes up to you and says, "This port on the board is
> labeled eth1, how do tell barebox to use it?"  Right now the answer is
> "ethact eth1" but after this change, which basically eliminates the OF
> alias system, the answer is????  I think it's going to be something that
> said developer doesn't like very much.

I agree with your points and this commit isn't really a proper fix, I
put an RFC tag there to indicate that this patch was more of "Hey
guys, there's this problem, let's discuss how we solve it" rather than
"There's your problem, here's the fix".

>
> Maybe a better solution would be to have dynamically allocated devices
> not use IDs that have been "reserved" by the existence of an OF alias?
> There wouldn't be some call to reserve an id, just the alias's existence
> would be sufficient. Common code that allocates IDs should have all the
> info it needs to check for an alias and then either use it or allocate
> an id not already aliased.

It is a fix, but only partial. To play devil's advocate, imagine a
board that has SoC with two PCIe Ethernet chips (think i210) attached
to it. Even if you query for aliases you get back to the same problem
where your silkscreen labels are not providing any good info to inform
general user what to give to "ethact" (granted it is possible to
assigned a DT node to PCI device and thus probably possible to create
an aliases for such interfaces, but it is very clunky in practice not
many .dts files has any provisions like that)

I think the most sound fix for this problem would be to embed the
NIC's topology information into its name (not unlike Consistent
Network Device Naming in Linux), this way there should never be a
question which physical interface corresponds to which device in BB.
However I am not sure how feasible it is to implement something like
this in BB.

IMHO one simpler fix for this would be to treat aliases not just a
source of device id, but as a source of both device name and ID. This
way built in device would change from being "eth0" to "ethernet0" and
not clash with "eth0", however having both "ethernet0" and "eth0" on
the same system is less than ideal (an this still doesn't solve the
PCI/USB networking problem).

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
