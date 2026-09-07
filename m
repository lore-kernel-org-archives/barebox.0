Delivery-date: Mon, 07 Sep 2026 10:46:02 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x3UzK-0013Vk-1D
	for lore@lore.pengutronix.de;
	Mon, 07 Sep 2026 10:46:02 +0200
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=ejKjOI3b;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 09401201783
	for <lore@pengutronix.de>; Mon, 07 Sep 2026 10:46:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YQQ628e6ldxLVUaX1ZMLjz3d+bjMOlWaAuCIxXMtYoA=; b=ejKjOI3bXrO/15lscCf/dH/gJg
	/k4fzo3DaZIsYZQHkGQsPs9odFGoeNi/V43gOMCU+46ScLCJ3GawjVFKgUd2WmwTojANPp7Bxzbhp
	SCeDqOAsWzFbvdku9rf8DBGFxymT204/lDnORtH/Kb2bnN7bJWSHKd/63JigHyzmcMyle3Xv9lsMP
	LwAMOEh3+qpzJ2jwLSJssiAzDvCL/oZIWGGYVAJOVeGFJNqQSq6vIKZiyLRqHrOKaUvsNQtZO9urY
	Q+YUtc+sypQYMT0gxeNGcvGr76zuWbRIDUJGl1dbFZvbBH6b6ZjXWdu6ku6ZCGbgtLAdzWLJZqYI1
	+d8LBy6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3Uyy-00000006IwZ-3KB5;
	Mon, 07 Sep 2026 08:45:40 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3Uyv-00000006Iu2-05n3
	for barebox@lists.infradead.org;
	Mon, 07 Sep 2026 08:45:39 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: ske@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 21045201783;
	Mon, 07 Sep 2026 10:45:31 +0200 (CEST)
Message-ID: <6c2d2882-f66a-46b6-8d0d-52696fb97ace@pengutronix.de>
Date: Mon, 7 Sep 2026 10:45:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] fs: __read: fix EOF count clamping for negative file
 sizes
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "open list:BAREBOX" <barebox@lists.infradead.org>
References: <20260903-fix-fs_read_write_eof_checks-v1-0-7afd44db1793@pengutronix.de>
 <20260903-fix-fs_read_write_eof_checks-v1-1-7afd44db1793@pengutronix.de>
 <d8368237-5d77-41db-8eb7-534e60f5d9f1@pengutronix.de>
Content-Language: en-US, de-DE
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
In-Reply-To: <d8368237-5d77-41db-8eb7-534e60f5d9f1@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260907_014537_393088_C0F07BE8 
X-CRM114-Status: GOOD (  27.69  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Sascha, On 9/4/26 11:20, Sascha Hauer wrote: > Hi Stefan,
    > > On 2026-09-03 18:29, Stefan Kerkmann wrote: >> __read() clamps count
   to the bytes remaining until EOF, but compared >> the signed 64-bit f->f_pos/
    [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Server: mx1
X-Stat-Signature: 1aiz5zpqo7j6g89jq8hfxwctnrw3k4ph
X-Rspamd-Queue-Id: 09401201783
X-Spamd-Result: default: False [-57.61 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:900:1d::77:received];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.kerkmann@pengutronix.de,barebox-bounces@lists.infradead.org];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER(0.00)[s.kerkmann@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action

Hi Sascha,

On 9/4/26 11:20, Sascha Hauer wrote:
> Hi Stefan,
> 
> On 2026-09-03 18:29, Stefan Kerkmann wrote:
>> __read() clamps count to the bytes remaining until EOF, but compared
>> the signed 64-bit f->f_pos/f->f_size (loff_t) against count (size_t),
>> which is 32-bit on 32-bit arches and 64-bit on 64-bit arches.
>>
>> This made the comparison type targent dependent, breaking it for
>> negative file sizes except for the FILE_SIZE_STREAM sentinel.
>>
>> - On 32-bit arches count is converted to the signed 64-bit type of
>>   f->f_pos, so for e.g. f->f_size = -512 the comparison f->f_pos + count
>>   > f->f_size evaluated true. The clamp then assigned the negative
>>   difference of f->f_size - f->f_pos to the unsigned count, wrapping it
>>   to a value near 2^32 and turning a small read into a huge out of
>>   bounds read request.
>>
>> - On 64-bit arches size_t cannot be represented by signed 64-bit, so the
>>   arithmetic C conversions turned the whole comparison unsigned:
>>   f->f_size = -512 was reinterpreted as a value near 2^64, the
>>   comparison stayed false and the clamp never ran, leaving count
>>   unclamped and the bogus size undetected.
>>
>> __read() now rejects negative file sizes (except for the
>> FILE_SIZE_STREAM sentinel) with -EINVAL. Reads at or past the end of the
>> file (reachable via pread() with an offset beyond EOF) now return 0.
>> Remaining reads are clamped to the bytes left until EOF.
>>
>> Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
>> ---
>>  fs/fs.c | 12 ++++++++++--
>>  1 file changed, 10 insertions(+), 2 deletions(-)
>>
>> diff --git a/fs/fs.c b/fs/fs.c
>> index dc6c30802d..a8f2b78294 100644
>> --- a/fs/fs.c
>> +++ b/fs/fs.c
>> @@ -427,8 +427,16 @@ static ssize_t __read(struct file *f, void *buf, size_t count)
>>  	if (fsdrv != ramfs_driver)
>>  		assert_command_context();
>>  
>> -	if (f->f_size != FILE_SIZE_STREAM && f->f_pos + count > f->f_size)
>> -		count = f->f_size - f->f_pos;
>> +	if (f->f_size != FILE_SIZE_STREAM) {
>> +		if (f->f_size < 0) {
>> +			ret = -EINVAL;
>> +			goto out;
>> +		}
> 
> I think we should start by rejecting negative file sizes at open time as
> done in the patch I just sent. This is likely not the full solution to
> the problem as f_pos + count could still become negative, but we
> shouldn't allow to even open a file with negative file size.
> 

Agreed, that is cleaner and better. Depending on whether you incorporate the
checks into your series I can send another series that builds on top of yours.

> Sascha
> 
> --
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 

Best regards,
Stefan

-- 
Pengutronix e.K.                       | Stefan Kerkmann             |
Steuerwalder Str. 21                   | https://www.pengutronix.de/ |
31137 Hildesheim, Germany              | Phone: +49-5121-206917-128  |
Amtsgericht Hildesheim, HRA 2686       | Fax:   +49-5121-206917-9    |



