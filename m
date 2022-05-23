Delivery-date: Mon, 23 May 2022 12:43:32 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nt5XA-006PwL-By
	for lore@lore.pengutronix.de; Mon, 23 May 2022 12:43:32 +0200
Received: from [2607:7c80:54:3::133] (helo=bombadil.infradead.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nt5X9-0004C0-1z
	for lore@pengutronix.de; Mon, 23 May 2022 12:43:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B0dS8LhFTK9mzsA+7mWhBnRtOBnYdXeyXRlNSs5oiUM=; b=Jgekr66jivkLJt
	+UMCRsfmaHz1LFwnA6g80nMFPBbkLcVZV2PCi8KLu8RXTUEdxoh3cDKmbtiie6vg6XeRPHiHYhqzE
	5fH1qy1dL9Ji7hzFzwfOWofO/+u1mfkH/tQK9qRNX9AhjVBf39H+MCXiitGmVowtBcUm1PBkSV9/J
	GKKKYs0k8WzS+kZBi3zbj/zUYip1lUoFYqJluX0EcP+2mtlr8SHpRd5bGUVYmGxXsLnt65OvK484u
	bDkIWkiXukiu/9Rw/gpxeR8zBjvClY5HfykiRG2M9qQZnfQ+zjM7l0rgyPH4XGq7IvPVxN/wxsghB
	jxrwsyl31zyaLEaZx+nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nt5Vm-003LEE-7a; Mon, 23 May 2022 10:42:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nt4OJ-002r9U-Fi
 for barebox@lists.infradead.org; Mon, 23 May 2022 09:30:21 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77]
 helo=[127.0.0.1]) by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1nt4OG-0006aS-C6; Mon, 23 May 2022 11:30:16 +0200
Message-ID: <c9ecf954-af9d-cdc6-083a-7df248ddfcae@pengutronix.de>
Date: Mon, 23 May 2022 11:30:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20220523072125.776735-1-a.fatoum@pengutronix.de>
 <20220523080009.2jya2x4nb7d5xpty@pengutronix.de>
 <7964f3ba-1c1c-af00-bbcb-12eb297716dc@pengutronix.de>
 <20220523082221.4qusbcylocpldf5u@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220523082221.4qusbcylocpldf5u@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220523_023019_619117_FE4641A3 
X-CRM114-Status: GOOD (  18.56  )
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
X-Host-Lookup-Failed: Reverse DNS lookup failed for 2607:7c80:54:3::133 (failed)
X-Broken-Reverse-DNS: no host name for IP address 2607:7c80:54:3::133
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,PTX_BROKEN_RDNS,RDNS_NONE,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] usb: usb251xb: remove duplicate status line on probe
 success
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 23.05.22 10:22, Marco Felsch wrote:
> On 22-05-23, Ahmad Fatoum wrote:
>> Hello Marco,
>>
>> On 23.05.22 10:00, Marco Felsch wrote:
>>> Hi Ahmad,
>>>
>>> On 22-05-23, Ahmad Fatoum wrote:
>>>> A successful probe results in two lines logged:
>>>>
>>>>   usb251xb usb2514b0: Hub configuration was successful.
>>>
>>> The configuration (and this line) can be skipped if you specify
>>> "skip-config".
>>>
>>>>   usb251xb usb2514b0: Hub probed successfully
>>>>
>>>> There is no case where the first line is printed, but not the other and
>>>> they say about the same thing anyway, so drop the latter.
>>>
>>> The config step can fail. What about lower down the log level for the
>>> config step to dev_dbg() instead?
>>
>> If the config step fails we will get an error message from driver core.
>> A driver with skip-config doesn't do anything useful that warrants
>> a probed successfully message, so I think it's safe to drop it.
> 
> Hm.. with skip-config the driver still brings the hub out of reset and
> into a working state. Anyway just wanted to pointed out, that there are
> use-cases where the message is not printed twice.

Would you prefer I consolidate the logs messages into a single line instead?

> 
> Regards,
>   Marco
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

