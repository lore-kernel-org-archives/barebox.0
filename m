Delivery-date: Mon, 21 Jun 2021 08:44:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvDfI-0005tB-3U
	for lore@lore.pengutronix.de; Mon, 21 Jun 2021 08:44:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lvDfH-0004OF-3r
	for lore@pengutronix.de; Mon, 21 Jun 2021 08:44:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=QXJfAn+KrdL+Ze78P0TCijOgChJZjFFCyA00IE0c4Og=; b=LlqEUdoL7+Dw9corLtpNuqJY+8
	UHUkMsIqn1NySMbq0W+hc2q/5KfmbfXTvxDgEyWQv36CUPGSwriG4HexQOdQ2L6m0+BPquwjtQKCY
	8+7++IjXV9++fr0hsqFsjd7mHDL02fKVdDAb0oX6GrVTHldWLlYNVAVR8UVyqfwlPIAMczeas6VeJ
	pkGPBQxFtTCqIRUT/pon1Q43zTwigGJwS1JeM8rUeFxGAlmEUNn/duUnmT+GCCD7hHmUomn4Rw3c7
	YjgFbi5cDZ0i5K0/HuEb4zRU9qS3RYo6cosMAd9bH4QES5WMbq/xFSYun+0LcztcqXjdEEUvQmMFf
	b99zfN1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvDdy-002MOl-4v; Mon, 21 Jun 2021 06:42:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvDdt-002MLw-7k
 for barebox@lists.infradead.org; Mon, 21 Jun 2021 06:42:46 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lvDdr-0004L5-Ku; Mon, 21 Jun 2021 08:42:43 +0200
To: Trent Piepho <trent.piepho@igorinstitute.com>,
 Michael Grzeschik <m.grzeschik@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
References: <20210615153223.9329-1-m.grzeschik@pengutronix.de>
 <CAMHeXxNpR01tPQ-M2-Oj8S4s9QxS-i7Vw+H3ED1NH8uO9rZekQ@mail.gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <ace6de12-bbf5-78bc-b976-ef8a53a672af@pengutronix.de>
Date: Mon, 21 Jun 2021 08:42:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <CAMHeXxNpR01tPQ-M2-Oj8S4s9QxS-i7Vw+H3ED1NH8uO9rZekQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210620_234245_345970_153F408E 
X-CRM114-Status: GOOD (  30.92  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] net/eth: read default mac-address default from dts
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On 15.06.21 22:32, Trent Piepho wrote:
> Once upon a time, it was common for kernel dts files to be booted with
> u-boot to include an all zero mac address property, since u-boot could
> not unpack/pack the fdt.  It could only find an existing property and
> change bytes already present, thus adding a blank mac address to be
> patched.  Barebox has a much better fdt fixup system and does not need
> this.
> 
> But maybe these blank mac address properties are still there in some
> of the dts files, which mostly come from the kernel dts sources?
> Might be worth ignoring an all zero address rather than calling it
> found.
> 
> Unless of_get_mac_address() already includes such logic in a way that works ok?

of_get_mac_address does indeed check for valid MAC addresses, but some device trees
contain dummy mac-addresses that pass the validity check, e.g.
[ 00 10 18 36 23 1a ] in some broadcom DTSIs. I haven't checked whether there is
any board we support that's affected by this.

> On Tue, Jun 15, 2021 at 12:49 PM Michael Grzeschik
> <m.grzeschik@pengutronix.de> wrote:
>>
>> Since we have the functino of_get_mac_address we can
>> use it to set the default mac address vom the dts.
>>
>> Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
>> ---
>>  net/eth.c | 9 +++++++++
>>  1 file changed, 9 insertions(+)
>>
>> diff --git a/net/eth.c b/net/eth.c
>> index 84f99d3aa8..baebf89d89 100644
>> --- a/net/eth.c
>> +++ b/net/eth.c
>> @@ -11,6 +11,7 @@
>>  #include <net.h>
>>  #include <dma.h>
>>  #include <of.h>
>> +#include <of_net.h>
>>  #include <linux/phy.h>
>>  #include <errno.h>
>>  #include <malloc.h>
>> @@ -431,6 +432,14 @@ int eth_register(struct eth_device *edev)
>>         if (!ret)
>>                 found = 1;
>>
>> +       if (!found && edev->parent) {
>> +               const u8 *maddr = of_get_mac_address(edev->parent->device_node);
>> +               if (maddr) {
>> +                       memcpy(ethaddr, maddr, ETH_ALEN);
>> +                       found = 1;
>> +               }
>> +       }

For the fetch-ethaddr-from-nvmem patches Sascha just merged, I elected to
parse the device tree in a postenvironment call to allow existing board
code, OTP drivers and network drivers to specify a mac address first, so
existing behavior isn't changed. I'd suggest you go the same route.
That would mean changing of_get_mac_addr_nvmem to of_get_mac_address in
this file in next.

>> +
>>         if (!found) {
>>                 ret = edev->get_ethaddr(edev, ethaddr);
>>                 if (!ret)
>> --
>> 2.29.2
>>
>>
>> _______________________________________________
>> barebox mailing list
>> barebox@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/barebox
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

