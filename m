Delivery-date: Tue, 04 Nov 2025 12:15:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vGF0U-00FCQ2-0v
	for lore@lore.pengutronix.de;
	Tue, 04 Nov 2025 12:15:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vGF0T-0002vW-Lr
	for lore@pengutronix.de; Tue, 04 Nov 2025 12:15:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oW6ovo+4TVpqgLopwtxvbTRxrSH+5LJhdxFACL2spQw=; b=mQJjBgIVcNKiP+g4DShMOSwWSD
	C1UuSfx/Qu6rbXYuA4pb6rUX5d0nI3NyF2dvgjt5SJEFbyWrkmMFiqKamr+NJDmZ9wKc8n2WZMLRF
	AKkOnv6Vw2ZXZ8P/rt6+M4SR1J4+AX8sIDOUoTk7bUNnkWgpCR73OMpuOZPDw9QZ4/WiQg3PtTlNv
	FpnElk5J7iw55Ft2imjWf82WntDoLYsLDEzjGzL4qho7gFMDDxMxK+QRLGjZ1NIGaHRu005skiC35
	8cJY/RcvmkVsGKf1kc1H1whP08DuC0xaxY9YQ5/7S821dEBfTnHbv3KRRJU4DR57fwiQa1J0X1ebg
	3so3CACA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGEzs-0000000BhJV-3PQr;
	Tue, 04 Nov 2025 11:14:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGEzo-0000000BhIa-3F0Q
	for barebox@lists.infradead.org;
	Tue, 04 Nov 2025 11:14:42 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1vGEzm-0002n0-FC; Tue, 04 Nov 2025 12:14:38 +0100
Message-ID: <d1f5865d-1223-4741-a744-4832a6504576@pengutronix.de>
Date: Tue, 4 Nov 2025 12:14:38 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>
References: <20251028-tlv-signature-v2-0-3bafce636ad7@pengutronix.de>
 <20251028-tlv-signature-v2-15-3bafce636ad7@pengutronix.de>
 <aQh_K6q-F2Og-vhb@pengutronix.de>
 <5d5a5331-9cc8-426a-85ea-cdb288fdf265@pengutronix.de>
 <aQnRVNvuEYy32a19@pengutronix.de>
From: Jonas Rebmann <jre@pengutronix.de>
Content-Language: en-US
In-Reply-To: <aQnRVNvuEYy32a19@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251104_031440_815718_1CDAF880 
X-CRM114-Status: GOOD (  25.47  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 15/17] crypto: concatenate fit development certificate
 with private key
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Sascha,

On 2025-11-04 11:11, Sascha Hauer wrote:
> On Mon, Nov 03, 2025 at 12:41:14PM +0100, Jonas Rebmann wrote:
>> Hi Sascha,
>>
>> On 2025-11-03 11:08, Sascha Hauer wrote:
>>> On Tue, Oct 28, 2025 at 07:03:20PM +0100, Jonas Rebmann wrote:
>>>> Merge the exemplary keys copied in from [1] into a single pem file,
>>>> in a manner similar to test/self/development_rsa2048.pem for consistency
>>>> and to reduce clutter a bit.
>>>>
>>>> While at it, rename them from "fit-" to "snakeoil-" as they are not only
>>>> used for fit, but also for tlv integration tests, and to indicate more
>>>> clearly that these are publicly known keys.
>>>
>>> Should we rather keep the "fit" name and add another key for tlv
>>> integration tests?
>>
>> I'd rather not add more 'compromised' keys to the repo. What would be
>> the gain?
> 
> My thinking was that with this we could make sure that during tests
> actually a key from the desired keyring is used.
> >> I think naming it snakeoil gives it the warning it deserves. We should
>> make it hard for anyone to confuse our CI/Development keys with their
>> production keys.
> 
> Indeed. I just don't like the term "snakeoil" here.
> 
>  From wikipedia:
> 
> "Snake oil" is a term used to describe deceptive marketing, health care fraud, or a scam.
> 
> We don't do anything like this here. We're not trying to sell snake oil.
> 
> I am open for something like "testing" or "development".

I thought this to be a conventional name specifically for keypairs
shipped with software like the debian packages qemu-efi-aarch64 and
ovmf:
https://packages.debian.org/search?searchon=contents&keywords=snakeoil&mode=filename&suite=stable&arch=any

The ssl-cert debian package runs make-ssl-cert generate-default-snakeoil
in its postinst script:

    Invoked with "generate-default-snakeoil", it will generate
    /etc/ssl/certs/ssl-cert-snakeoil.pem and /etc/ssl/private/ssl-cert-
    snakeoil.key.

Other packages do similar things.

I understand "snakeoil" in this context as: 'It may look like it heals
your confidentiality and integrity pains but will be greatly ineffective
for this, don't be deceived!'

> Also we might want to add a runtime message like:
> 
> "WARNING: This barebox binary contains well known keys and is unsecure"

This is a good idea and I'd also suggest in the future to write pytest
fixtures that let us generate testing key material on the fly. It seems
like a task for a different day so would you be ok with leaving it as-is
for now?

Regards,
Jonas

-- 
Pengutronix e.K.                           | Jonas Rebmann               |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |


