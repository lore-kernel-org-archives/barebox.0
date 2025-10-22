Delivery-date: Wed, 22 Oct 2025 12:44:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBWKO-00AZw8-0t
	for lore@lore.pengutronix.de;
	Wed, 22 Oct 2025 12:44:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBWKN-00030K-O0
	for lore@pengutronix.de; Wed, 22 Oct 2025 12:44:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/GxeVoAN6KOTVtMXFByjRmJyryJL0/i4RTekQmaYAtM=; b=ORDGkHrpDIzldQHeYs1a2d+i75
	b+Uxx/IsSPdFs/ivWy2BYdm+T4ojeE+YgNY+Fnhx9oozjV504nQPe3c6fzNEfER6E9ESGWLkUQ5fy
	yUjcSFcmc9TvV5jAjIaBMc/SgQXFbrZUtP8QbuyOgDh1DncDlNX+WaneuOS9sLzLybk3wauSqTINB
	Q7zTgi+OYiq/N7CTBBRjjMZe+McYDqMTQUs6WS8Gbq9T0+Ntv7LePEQ235eimUXTgDcKNhp0asbWd
	Ygundocr9cu3VA0XxyH4es9HMOPTVPIe87FmKPJYcQzhCaEj2Vclc2HczXD4SCw6QxrFtDtN9YYMP
	Iux2PTnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBWJr-00000002WmW-0wex;
	Wed, 22 Oct 2025 10:43:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBWJo-00000002Wm9-2l2u
	for barebox@lists.infradead.org;
	Wed, 22 Oct 2025 10:43:50 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1vBWJm-0002vD-Rw; Wed, 22 Oct 2025 12:43:46 +0200
Message-ID: <03fc4cb8-beca-4ddb-96aa-27ecf3fa1ad3@pengutronix.de>
Date: Wed, 22 Oct 2025 12:43:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Ahmad Fatoum <a.fatoum@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20251014-tlv-signature-v1-0-7a8aaf95081c@pengutronix.de>
 <20251014-tlv-signature-v1-9-7a8aaf95081c@pengutronix.de>
 <7d50c7d4-06a2-40d4-9b77-114c5ab923ba@pengutronix.de>
From: Jonas Rebmann <jre@pengutronix.de>
Content-Language: en-US
In-Reply-To: <7d50c7d4-06a2-40d4-9b77-114c5ab923ba@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251022_034348_720869_EA5ACF18 
X-CRM114-Status: GOOD (  11.12  )
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
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 09/15] common: tlv: Add TLV-Signature support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Ahmad,

Just answering to what I don't immediately apply for v2:

On 2025-10-22 12:00, Ahmad Fatoum wrote:
>> +/*
>> + * Retrieve length of header+TLVs (offset of spki hash part of signature if available)
>> + */
>> +
>> +static inline size_t tlv_spki_hash_offset(const struct tlv_header *header)
>> +{
>> +	size_t ret = size_add(sizeof(struct tlv_header), get_unaligned_be32(&header->length_tlv));
>>   
>>   	return ret; /* SIZE_MAX on overflow */
> 
> Shouldn't you then check for SIZE_MAX at callsites?

I chose not to implement this check in all places using those
size/offset helpers.

In "[PATCH 01/15] common: clean up TLV code", I check early in the TLV
handling, that tlv_total_len() doesn't overflow. Later on, it is
guaranteed that calls to tlv_total_len(), tlv_spki_hash_offset() and the
such cannot overflow.

If I where to check at callsites of tlv_spki_hash_offset() I'd need to
check at all callsites of all TLV size/offset helperss, which seemed
unnecessary.

What do you think?

Regards,
Jonas

-- 
Pengutronix e.K.                           | Jonas Rebmann               |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |


