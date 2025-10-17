Delivery-date: Fri, 17 Oct 2025 11:09:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v9gSp-008lst-0D
	for lore@lore.pengutronix.de;
	Fri, 17 Oct 2025 11:09:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v9gSo-0007aR-EX
	for lore@pengutronix.de; Fri, 17 Oct 2025 11:09:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:References:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=l2Yh91WM/aPUiaad+5MMJAqhjsnPzhObekwv6Y0lfiM=; b=OQ5Q7QnBpsDgWT8i0f5g3BKpvR
	fFKJ87fTwkUchcSpGrfPE0A47MwNQR/++qFyOVmCfnhY9F+HjfPWpAt3UtZ5jRzeiR7sjmoeXH5B0
	6HVaT8AK1WAgL+rb1QcJSNMA3lPktPCYyD+k5b33bpUjbnrMUOjf/R67mKafYCsXzBQbaO7pxOKtr
	Hihmz1LzRTfJWCIpRj8RaB0j+RufVCDsIF9r/BJcQU4MFiav8HMpzWseEPgEUWrkzLc9VeQLBXxup
	EZf6CbYLuLaWAH1H2ubuBeuKvCeKQAtB0+RnOhVp7wTtdgZunY7dWU+a2lqEkQodC8wL4T4kOcZs1
	5jEAJsRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9gSH-00000007DmV-3auw;
	Fri, 17 Oct 2025 09:08:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9gSD-00000007DjP-269Y
	for barebox@lists.infradead.org;
	Fri, 17 Oct 2025 09:08:56 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1v9gSA-0007Lz-12; Fri, 17 Oct 2025 11:08:50 +0200
Message-ID: <f336cedd-3815-4ff2-9984-2b9c9d220785@pengutronix.de>
Date: Fri, 17 Oct 2025 11:08:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Jonas Rebmann <jre@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20251014-tlv-signature-v1-0-7a8aaf95081c@pengutronix.de>
 <20251014-tlv-signature-v1-9-7a8aaf95081c@pengutronix.de>
Content-Language: en-US
In-Reply-To: <20251014-tlv-signature-v1-9-7a8aaf95081c@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251017_020853_540784_81BE03B9 
X-CRM114-Status: GOOD (  20.69  )
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

Hi,

On 2025-10-14 13:03, Jonas Rebmann wrote:
> Implement TLV signature using the existing placeholders for it. Use the
> existing cryptographic primitives and public key handling used for
> fitimage verification.
> 
> Signature is verified and then must be valid iff CONFIG_TLV_SIGNATURE is
> enabled and a keyring is selected for the decoder. SHA256 hashing is
> hardcoded for now.
> 
> As 16 bit are well sufficient to store the length of the signature
> section in bytes, reduce it to its least significant 16 bit and reserve
> the remaining 16 bit for future use.
> 
> As sig_len where the only reserved bits left, and where zero-reserved,
> this leaves more wiggle room to still expand the format in the future.
> 
> Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
> ---
>   common/Kconfig       |  4 +++
>   common/tlv/parser.c  | 84 ++++++++++++++++++++++++++++++++++++++++++++++++++++
>   include/tlv/format.h | 22 ++++++++++----
>   3 files changed, 105 insertions(+), 5 deletions(-)
> 
> [...]
> 
> diff --git a/common/tlv/parser.c b/common/tlv/parser.c
> index f74ada99d7..0a23beba4e 100644
> --- a/common/tlv/parser.c
> +++ b/common/tlv/parser.c
> 
> [...]
> 
> @@ -17,6 +93,7 @@ int tlv_parse(struct tlv_device *tlvdev,
>   	struct tlv_mapping *map = NULL;
>   	struct tlv_header *header = tlv_device_header(tlvdev);
>   	u32 magic;
> +	u16 reserved;
>   	size_t size;
>   	int ret = 0;
>   	u32 crc = ~0;
> @@ -24,6 +101,7 @@ int tlv_parse(struct tlv_device *tlvdev,
>   	magic = be32_to_cpu(header->magic);
>   
>   	size = tlv_total_len(header);
> +	reserved = get_unaligned_be16(&header->reserved);
>   
>   	if (size == SIZE_MAX) {
>   		pr_warn("Invalid TLV header, overflows\n");
> @@ -36,6 +114,12 @@ int tlv_parse(struct tlv_device *tlvdev,
>   		return -EILSEQ;
>   	}
>   
> +	if (decoder->signature_keyring) {
> +		ret = tlv_verify(header, decoder->signature_keyring);
> +		if (ret)
> +			return ret;
> +	}

At some point I accidentally dropped the special handling of a signed
TLV matched to a decoder that has signature disabled. I believe it is
correct that we keep parsing without signature verification but that v2
should add a warning e.g.:

	} else if (get_unaligned_be16(&header->length_sig)) {
		pr_warn("Skipping verification of TLV signature: "
			"No keyring selected in decoder with magic %08x\n",
			decoder->magic);
	}


> +
>   	for_each_tlv(header, tlv) {
>   		struct tlv_mapping **mappings;
>   		u16 tag = TLV_TAG(tlv);
> [...]

Regards,
Jonas

-- 
Pengutronix e.K.                           | Jonas Rebmann               |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |


