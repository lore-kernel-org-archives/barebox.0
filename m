Delivery-date: Thu, 27 Oct 2022 09:54:56 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1onxj5-003qIe-WF
	for lore@lore.pengutronix.de; Thu, 27 Oct 2022 09:54:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1onxj4-0002s8-V8
	for lore@pengutronix.de; Thu, 27 Oct 2022 09:54:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+A8wH9iHFIUkC7/ocJNUu7IhITW83OuebRbWLOxIP5w=; b=pTvcsSecsIU9ZjePsyqaB69KKX
	jHOL4WThldI2Yvx8SqUub7bawptu1KzJWQbB+iGR96m1hFnvY7U3lBXiaM5fhSqWe74HZ21ZIeW+d
	KEB1epQmL4qUlUBVb8gnbs6tZGyXk03eHXyJPYfftuB1OdBohSeynz1peXMXU8frMxMG/6dKx+DJF
	87b2bvoCN602Vn9cJ3e1vCcpX9rlmNXPlHWPiFaFvYdeVCUDKItvEt8PiCKaj9Nkk++ONbVyxkP8h
	FmZw/ddXvuyVHbuhswQX0d4A+S0zbqU6H5P797CrzbgXYiQRwrzlU5m2JURj5zaCoNvPIqVrEpCRt
	OvJaufBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onxhv-00CFUw-Ms; Thu, 27 Oct 2022 07:53:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onxhn-00CFTO-UK
	for barebox@lists.infradead.org; Thu, 27 Oct 2022 07:53:39 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1onxhm-0002fH-GP; Thu, 27 Oct 2022 09:53:34 +0200
Message-ID: <bf2873ae-7bf0-0b2a-abb1-e824144d8b81@pengutronix.de>
Date: Thu, 27 Oct 2022 09:53:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20221026064205.2360041-1-a.fatoum@pengutronix.de>
 <20221026064205.2360041-3-a.fatoum@pengutronix.de>
 <20221027065651.GQ6702@pengutronix.de>
 <dc48c8c4-517c-349f-8582-1a718b4d699f@pengutronix.de>
 <20221027073334.GS6702@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20221027073334.GS6702@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221027_005336_041608_3CE2FF8A 
X-CRM114-Status: GOOD (  21.69  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 3/6] string: reduce strjoin runtime, drop trailing
 separator
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 27.10.22 09:33, Sascha Hauer wrote:
> On Thu, Oct 27, 2022 at 09:24:20AM +0200, Ahmad Fatoum wrote:
>> Hi,
>>
>> On 27.10.22 08:56, Sascha Hauer wrote:
>>> On Wed, Oct 26, 2022 at 08:42:02AM +0200, Ahmad Fatoum wrote:
>>>> The implementation of strjoin is a bit suboptimal. The destination
>>>> string is traversed from the beginning due to strcat and we have a
>>>> left-over separator at the end, while it should only be in-between.
>>>>
>>>> Fix this.
>>>
>>> Rather than fixing a just introduced function I would expect a patch
>>> introducing strjoin() and then another one converting the time command
>>> over to use it.
>>
>> What difference does it make?
> 
> You wouldn't have to fixup code you just introduced.

The alternative of changing stuff just to shift it around directly after
doesn't sound that much more appealing, but I can do that anyway.

> 
>>>
>>> 	for (i = 0; i < arrlen; i++) {
>>> 		p = stpcpy(p, arr[i]);
>>> 		if (i < arrlen - 1)
>>> 			p = stpcpy(p, separator);
>>> 	}
>>>
>>> That would also allow you to optimize the allocated buffer size above.
>>
>> I like my version more. I dislike these once-only checks inside loops.
> 
> No problem ;)
> 
> 	for (i = 0; i < arrlen - 1; i++) {
> 		p = stpcpy(p, arr[i]);
> 		p = stpcpy(p, separator);
> 	}
> 
> 	stpcpy(p, arr[i]);

I can do that, albeit with mempcpy. I already got separatorlen.

Cheers,
Ahmad

> 
> Sascha
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


