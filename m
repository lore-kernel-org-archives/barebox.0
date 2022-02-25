Delivery-date: Fri, 25 Feb 2022 11:48:28 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nNY9E-009pMl-Ii
	for lore@lore.pengutronix.de; Fri, 25 Feb 2022 11:48:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nNY9D-0001Yh-9w
	for lore@pengutronix.de; Fri, 25 Feb 2022 11:48:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4ZyE6b/qvZLkXKWWVXRQy2hOSuuZQ39xrbJK7DYxjF4=; b=gqBSsEaqFOx8hG
	byJsXnOSGbWj2e7sIa6yOaphk8j6VdJqC+VHUs6XJq7nb5nNrLOmr/C0C4yuHOPsWod31yXnu47U4
	+pxV1jLEJb3EJOi1EtqqPNS7C0Y1P/fULe7a2dHEV+C2RMifBUY3tZYD6pBQUsH9gGpDi3yO+uIBl
	/JNJK4gP3IGt/vdULczsK76Xhh+3PKTCbevMUNkYoMsH4TvEqF4QLYr5832t6hDrv0R1Em2ZgaRuY
	hGVKfG2KP4F3iXfRyJq7froLZ65ek78U/FdADETE166dUa72at6Cff1TPda4hHI2h5cV/aVak8uIC
	RArOgiKYMKQ5AKl3Jh5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNY7u-004VWO-4c; Fri, 25 Feb 2022 10:47:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNY6w-004VE7-RS
 for barebox@lists.infradead.org; Fri, 25 Feb 2022 10:46:08 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <bst@pengutronix.de>)
 id 1nNY6u-0001Hg-Ux; Fri, 25 Feb 2022 11:46:05 +0100
Message-ID: <7013be85-751c-b20c-6dff-469ce7401a54@pengutronix.de>
Date: Fri, 25 Feb 2022 11:46:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.1
Content-Language: en-US
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20220225100344.4166248-1-bst@pengutronix.de>
 <20220225102552.o4emeawwdhv6ybbv@pengutronix.de>
From: Bastian Krause <bst@pengutronix.de>
In-Reply-To: <20220225102552.o4emeawwdhv6ybbv@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220225_024606_984090_E398CE64 
X-CRM114-Status: GOOD (  15.90  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] arch: arm: mach-imx: document field return in CSF template
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 2/25/22 11:25, Marc Kleine-Budde wrote:
> On 25.02.2022 11:03:44, Bastian Krause wrote:
>> Activating the field return configuration returns a locked-down board
>> (nearly) to its open state. In order to burn the FIELD_RETURN fuse, the
>> CSF must contain a specific unlock command with the device's UID.
>>
>> Signed-off-by: Bastian Krause <bst@pengutronix.de>
>> ---
>>   .../include/mach/habv4-imx6-gencsf-template.h        | 12 ++++++++++++
>>   1 file changed, 12 insertions(+)
>>
>> diff --git a/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf-template.h b/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf-template.h
>> index a60b485292..45da2981cb 100644
>> --- a/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf-template.h
>> +++ b/arch/arm/mach-imx/include/mach/habv4-imx6-gencsf-template.h
>> @@ -39,6 +39,18 @@ hab Engine = SETUP_HABV4_ENGINE
>>   hab Features = SETUP_HABV4_FEATURES
>>   #endif
>>   
>> +/*
>> +// allow fusing FIELD_RETURN
>> +// # ocotp0.permanent_write_enable=1
>> +// # mw -l -d /dev/imx-ocotp 0xb8 0x1
>> +hab [Unlock]
>> +hab Engine = OCOTP
>> +hab Features = FIELD RETURN
>> +// device-specific UID:
>> +// $ dd if=/sys/bus/nvmem/devices/imx-ocotp0/nvmem bs=4 skip=1 count=2 status=none | hexdump -ve '1/1 "0x%.2x, "' | sed 's/, $//'
>> +hab UID = 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08
> 
> You probably want to comment this all out in the template...

I don't get it, that's all inside the /* commented section */.

Bastian

> 
>> +*/
>> +
>>   hab [Install Key]
>>   /* verification key index in key store (0, 2...4) */
>>   hab Verification index = 0
>> -- 
>> 2.30.2
>>
>>

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

