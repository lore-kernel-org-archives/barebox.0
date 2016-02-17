Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aVs33-0003Gq-6t
 for barebox@lists.infradead.org; Wed, 17 Feb 2016 02:41:02 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Wed, 17 Feb 2016 02:40:37 +0000
Message-ID: <1455676867.18517.64.camel@rtred1test09.kymeta.local>
References: <1455672559-25061-1-git-send-email-andrew.smirnov@gmail.com>
 <1455672559-25061-16-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1455672559-25061-16-git-send-email-andrew.smirnov@gmail.com>
Content-Language: en-US
Content-ID: <1E16C3E27B7BA041AD786D6FBA8266B1@kymetacorp.com>
MIME-Version: 1.0
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
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Tue, 2016-02-16 at 17:29 -0800, Andrey Smirnov wrote:
> Assigning device IDs based on device tree aliases doesn't work very well
> on platforms that have both NICs that are a part of a platform with
> assigned aliases and NICs with DEVICE_ID_DYNAMIC policy of ID
> assignement due to the nature of the interfaces they are connected
> via (PCIe, USB, etc.). Consider the following scenario:
> 
> A device with built-in Ethernet adapter aliased to "ethernet0" and a
> Ethernet chip connected via PCIe. This gives us two possible probing
> orders:
>   1.
>     - built-in adapter comes up first gets assigned id of 0 and device
>       "dev0"
>     - PCIe adapter comes up second gets assigned id of 1 and device
>       "dev1"
>     - everything is hunky-dory
> 
>   2.
>     - built-in adapter comes up first but its probing gets deffered
>     - PCIe adapter comes up second gets assigned id of 0 and device
>       "dev0"
>     - built-in adapter gets probed the second time, sucessfuly
>       initializes itself but fails to register Ethernet device because
>       "dev0" is already taken
> 
> This patch solves the problem by forcing all Ethernet adapters to
> use dynamic ID allocation.

A lot of systems depend on aliases/ethernet0 pointing to the proper
ethernet adapter.  How will they work with this?

How will a boot script know which ethernet device to use ethact on?

Suppose someone who doesn't know much about device trees and hasn't
looked at the SoC datasheet, which in my experience is about 80% of the
barebox userbase, comes up to you and says, "This port on the board is
labeled eth1, how do tell barebox to use it?"  Right now the answer is
"ethact eth1" but after this change, which basically eliminates the OF
alias system, the answer is????  I think it's going to be something that
said developer doesn't like very much.

Maybe a better solution would be to have dynamically allocated devices
not use IDs that have been "reserved" by the existence of an OF alias?
There wouldn't be some call to reserve an id, just the alias's existence
would be sufficient. Common code that allocates IDs should have all the
info it needs to check for an alias and then either use it or allocate
an id not already aliased.

While statically assigned ids are not nice in our dynamic discovery
software world of pointers, until one makes PCBs out of eInk displays
that dynamically update their silk screens, I think it's something we
still need to live with.
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
