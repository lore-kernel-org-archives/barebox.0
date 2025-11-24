Delivery-date: Mon, 24 Nov 2025 20:58:57 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vNci9-004Ueg-1p
	for lore@lore.pengutronix.de;
	Mon, 24 Nov 2025 20:58:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vNci8-0004SW-Uz
	for lore@pengutronix.de; Mon, 24 Nov 2025 20:58:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ofyloLJAfdICZJrY+BuIK5ePNe34AoauxXBMFcunfZM=; b=OXtHWqoXN+ahhUWgOBObOi/KEG
	oW7hmHeiPj2m3Bnrdk9xTCcQJOAh+UuRrATE8bp1WAz3X9FpJ+DsMSTpUOOcETyaxhb7yDwhBXx6l
	6MxYnn3dgcqsf3jap2zWBwu2kieNV2YjABlIssX53rJ3y9rFbOtxtqiYt1e6siCGrlm/y/t+Fxzup
	IVXEgHeKWC/B+GBmO1BJG/comATd5f2DkHB66xAoT8ApKyvJPJVdvKYvnr2S+FhMBN2AH+WkU/C5N
	YGr2Zw3DQuZ+u2Ly7Mx06bFMyxE6fKnTlQcacmgXULjBZbfe0hQM3VCOzbBqU90Oa/QDv3EaKMDlk
	bwUls6SQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNchP-0000000CH28-44uK;
	Mon, 24 Nov 2025 19:58:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNchM-0000000CH1l-3QSY
	for barebox@lists.infradead.org;
	Mon, 24 Nov 2025 19:58:10 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1vNchJ-0004NE-R9; Mon, 24 Nov 2025 20:58:05 +0100
Message-ID: <540bcb3e-c678-410c-aaa9-e60e28bf62ff@pengutronix.de>
Date: Mon, 24 Nov 2025 20:58:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>, =?UTF-8?Q?Jan_L=C3=BCbbe?=
 <jlu@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
References: <20251117-tlv_bind_serial-v2-1-60c7b1e3e81b@pengutronix.de>
 <aRww5p7AxPtgEmgm@pengutronix.de>
 <539763d8-582a-4ec0-90b3-bdd265a493d9@pengutronix.de>
 <e630c09b-8eba-48aa-8f10-0d17a4d9df60@pengutronix.de>
 <11773b48d0ce0781f1ec24e3a98e81137f913de1.camel@pengutronix.de>
 <aSQ1AWPxHw4knocf@pengutronix.de>
Content-Language: en-US
From: Jonas Rebmann <jre@pengutronix.de>
In-Reply-To: <aSQ1AWPxHw4knocf@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251124_115808_878708_29D8E939 
X-CRM114-Status: GOOD (  21.59  )
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
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] tlv: Add tlv_bind_soc_uid mapping
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Jan,

On 2025-11-24 11:35, Sascha Hauer wrote:
> On Wed, Nov 19, 2025 at 04:15:40PM +0100, Jan Lübbe wrote:
>> On Tue, 2025-11-18 at 10:57 +0100, Jonas Rebmann wrote:
>>> On 2025-11-18 10:49, Jonas Rebmann wrote:
>>>> On 2025-11-18 09:40, Sascha Hauer wrote:
>>>> To me the big question is: What is a SoC UID?
>>>>
>>>> Is it an arbitrary string that happens to be, for many SoCs composed of
>>>> [0-9A-F] and efficiently represented in binary in the efuses? Then it
>>>> feels a bit surprising to me to compare this 'arbitrary vendor-provided
>>>> string' case-insensitively.
>>>>
>>>> But if we consider this an arbitrary block of binary data, typically
>>>> looked at in hexadecimal then I suggest we use the raw "bytes"-format I
>>>> sent an RFC patch for on Nov 12, and compare to
>>>> barebox_get_soc_uid_bin(). I originally wrote that RFC patch for storing
>>>> SoC UIDs but had a conversation with Ahmad that led me to view the SoC
>>>> UID as an arbitrary string. However now that we have
>>>> barebox_get_soc_uid_bin(), I'm tempted to change my mind.
>>>
>>> I did consider changing this for v2 however in your [PATCH v2 1/9]
>>> "introduce SoC UID" you mentioned that "Others even print the binary
>>> data as decimal (qcom).". If we where to use 'raw "bytes"-format' as in
>>> my RFC, the data YAMLs would have hexadecimal representation and I'm not
>>> sure if that could get too confusing. At least we could consider to add
>>> a (mandatory?) YAML-field that specifies the number system.
>>
>> As the UID is normally read from registers or messages exchanged with a security
>> enclave, each SOC vendor has already defined a binary format. We should just
>> store that unmodified in the TLV value instead of inventing a custom format.
> 
> The format is not custom, it's the format Linux provides in sysfs.
> 
> It might be confusing if the SOC UID we use has a different format.

After further discussion with Sascha and Ahmad, I will stick to
comparing strings in v3.

As there is neither a kernel interface nor a barebox shell interface to
read the binary representation of the SoC UID, or at least to read some
uniform (e.g. always hexadecimal) string representation of the SoC UID,
this would be too impractical. Instead we're taking care that the
soc_uid string representation in barebox always matches the
representation given in the kernel. This way, the serial_number/soc_uid
values easily read from barebox environment or kernel sysfs can be used
directly without SoC-specific parsing.

I would however rename this to `tlv_bind_soc_uid_string` so we can have
`tlv_bind_soc_uid_bin` in addition if needed later.

Regards,
Jonas

-- 
Pengutronix e.K.                           | Jonas Rebmann               |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |


