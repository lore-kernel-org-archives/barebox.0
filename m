Delivery-date: Fri, 14 Nov 2025 14:51:32 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vJuD6-000vRf-2Z
	for lore@lore.pengutronix.de;
	Fri, 14 Nov 2025 14:51:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vJuD6-0007EA-7q
	for lore@pengutronix.de; Fri, 14 Nov 2025 14:51:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JY3GToHroLylj4dq8xH6dxLqUIRJNiHeTPm8B44XfI4=; b=oBOnqZ9RwX6I0q3/BgLhaRMhFm
	qgGajqSs3ghgaR/LtVLnp8okntMTZY8tDc787B/DwXUE9EV/kgWPHinaRi+iLitRpzusgmzGWdmDb
	QRC9gTXb2pncPnbqERHRqpk+DagxFvqHp3cVt7OcZDb5fEMC1sRcLaNDSlh8//ZY4x8012b4TSacF
	R1Fyim9abuEzOKUCqZslt2uNTq1BWPJd5kyahvZC2dpIXTYimM6UJoNc/3/FJI/fF9pdUW7wMAsCL
	oMWC9LCWj/UF5xRPIafaWjQIJg3VyZ93ZvGLwrqDsiqsUidyLCRUaLOT+5qklxhzYarD/uRLa0ZU+
	l9vJk76w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJuCb-0000000CIOa-0I4M;
	Fri, 14 Nov 2025 13:51:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJuCY-0000000CIO0-01He
	for barebox@lists.infradead.org;
	Fri, 14 Nov 2025 13:50:59 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vJuCV-00076M-2W; Fri, 14 Nov 2025 14:50:55 +0100
Message-ID: <430aa916-86e8-42b3-a272-d870be5b2e67@pengutronix.de>
Date: Fri, 14 Nov 2025 14:50:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jonas Rebmann <jre@pengutronix.de>, Sascha Hauer
 <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20251112-tlv_bind_serial-v1-1-638cf222553a@pengutronix.de>
 <a6d6bbcb-96b7-4a43-9322-c42562cd1bf1@pengutronix.de>
 <a706647c-82ed-4923-a6dd-6e0d3818d11c@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <a706647c-82ed-4923-a6dd-6e0d3818d11c@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251114_055058_046968_C152A82D 
X-CRM114-Status: GOOD (  19.41  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] tlv: Add tlv_bind_serial mapping
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 11/14/25 11:24 AM, Jonas Rebmann wrote:
> Hi Ahmad,
> 
> On 2025-11-13 10:11, Ahmad Fatoum wrote:
>>> +    struct bus_type *bus;
>>> +    struct device_d *socdev;
>>> +    const char *soc_serial;
>>> +    char *tlv_serial = basprintf("%.*s", len, val);
>>
>> strndup would also work here.
> 
> Since a such basprintf is used in __tlv_format_str() and
> tlv_format_blob(), I found it adequate to do it the same way.

No idea why I did it that way, but ye either works.

> 
>>> +
>>> +    bus = get_bus_by_name("soc");
>>> +    if (!bus) {
>>> +        pr_err("No 'soc' bus found\n");
>>
>> goto out and use a common error message? That way you also cover the
>> case of no socdev existing.
> 
> Ah indeed, will do that in v2.
> 
>>> +        return -EACCES;
>>> +    }
>>> +
>>> +    for_each_device(socdev) {
>>> +        soc_serial = dev_get_param(socdev, "serial_number");
>>> +        if (!soc_serial)
>>> +            continue;
>>> +
>>> +        if (streq_ptr(tlv_serial, soc_serial))
>>> +            return __tlv_format_str(dev, map, len, val) ? 0 : -ENOMEM;
>>
>>     return tlv_format_str(...) directly instead?
>>
>> I talked with Sascha yesterday and I believe he is implementing a common
>> get_soc_uid(). If so, that might be suitable for use here.
> 
> Sounds good! When I wrote this code, I was unsure whether multiple SoC
> UIDs or a soc1.serial_number are cases we ever want to care about. If
> not, I would habe only tested against the one/first serial_number here
> and then break the loop...
> 
> Will update to get_soc_uid() if that's posted before v2.

See Sascha's series on the mailing list.

Cheers,
Ahmad

> 
> Regards,
> Jonas
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



