Delivery-date: Mon, 14 Apr 2025 17:09:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4LRQ-000gNj-0T
	for lore@lore.pengutronix.de;
	Mon, 14 Apr 2025 17:09:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4LRP-0004SL-Ht
	for lore@pengutronix.de; Mon, 14 Apr 2025 17:09:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TyyjaIk5WRJESVjaMu5sCHW5nSgczOGR+myxVe6HWT4=; b=cnJbv5OUcMjI41kHYPMyCjm23V
	VCDz9brO00i2bi5MMx6gDiym13PUwvPB2AQ+u0A2XgcKTZYZN897RfcV31g7coYomVYUAO4GP0OgA
	EkfPzrgJXK5ZGNkjz19Egx4J1tzN5RZ7ZsmvQY3DqlSflsSFqhWzQoe63tIg07HFNkP9VhpZD/Lxp
	cEBL8AtFrKZBgbhxK2h/5y3s8VA7Hix3/br/vVNwzR9xGpPgapMAuMcCentmwx0V3wdyRL1H9rsEl
	Ew+X9O133lHaX3oYP5xPJrxPygeZlbIUg9qS/j2iDFqaYdofU0AX3JutSvl92VYVXULIEfU92lv2V
	iIuyK9Qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4LQz-00000002Yn3-1T5Y;
	Mon, 14 Apr 2025 15:09:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4LFg-00000002VsV-42sD
	for barebox@lists.infradead.org;
	Mon, 14 Apr 2025 14:57:38 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4LFf-00081d-L2; Mon, 14 Apr 2025 16:57:35 +0200
Message-ID: <f6fbe760-c64a-4d73-b820-fda3f5c69e43@pengutronix.de>
Date: Mon, 14 Apr 2025 16:57:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20250411074045.2019372-1-a.fatoum@pengutronix.de>
 <20250411074045.2019372-5-a.fatoum@pengutronix.de>
 <Z_0glf7ptAh3RtAF@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <Z_0glf7ptAh3RtAF@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_075737_011151_FB09C9E8 
X-CRM114-Status: GOOD (  17.64  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 04/10] common: add barebox TLV support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 4/14/25 16:49, Sascha Hauer wrote:
> On Fri, Apr 11, 2025 at 09:40:39AM +0200, Ahmad Fatoum wrote:
>> barebox TLV is a scheme for storing factory data on non-volatile
>> storage. Unlike state, it's meant to be read-only and if content
>> is limited to already specified tags, it can be extended later on,
>> without modifying the bootloader binary.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>> +struct tlv_mapping barebox_tlv_v1_mappings[] = {
>> +	{ 0x0002, tlv_format_str, "device-hardware-release" },
>> +	{ 0x0003, tlv_format_dec, "factory-timestamp" },
> 
> The numbers in the examples suggest that the format is in epoch time,
> but shouldn't this be documented?

Good point. Yes, it's seconds since the UNIX epoch.
Will document it for v2.

>> +	{ 0x0004, tlv_handle_serial, "device-serial-number"},
>> +	{ 0x0005, tlv_format_dec, "modification" },
>> +	{ 0x0006, tlv_format_str, "featureset" },
> 
> I think things like "device-hardware-release", "modification" and "featureset"
> need (better) documentation, at least when they are supposed to be generic.

In the end the revision scheme and the concrete interpretation of bits
depends on the project, but I can add some generic documentation inline,
e.g.:

device-hardware-release: Detailed release information string for the device

modification: 0: Device is unmodified. Any set bits indicate a
board-specific modification after assembly

featureset: Any set bits indicate enablement of board-specific features

> 
>> +	{ 0x0007, tlv_format_str, "pcba-serial-number"},
>> +	{ 0x0008, tlv_format_str, "pcba-hardware-release"},
> 
> Assuming 'pcb' is for printed circuit board, what is 'a'?

assembly as in the PCB with electronics components attached.

Cheers,
Ahmad

> 
> Sascha
> 
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



