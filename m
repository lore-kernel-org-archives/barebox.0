Delivery-date: Mon, 28 Sep 2026 14:10:53 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xBAC5-007Hi7-0N
	for lore@lore.pengutronix.de;
	Mon, 28 Sep 2026 14:10:53 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 91533201E30
	for <lore@pengutronix.de>; Mon, 28 Sep 2026 14:10:51 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=hxVFQD7m;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=Qd3XQKh8;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790597451;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=RjPg/rxMQjtQnNw2HEKHuvhiqfRtB0PJKirN5rdoZgM=;
	b=RUKjNCgtVgtBtyr/fQqMKy/Ij1eKNrHuZcjeOVZbVueGv3gAeamW8+LJMMkg/gevfBaaiA
	HiFFaD+8Q+ZA//e4sEA61qIyhBFG1pJHTDsY/qP1M0P0pw/2vg58Ce1ve7VcaSDpedXtmR
	pNjsxaP2+o7zhRgnRmfcuev7ye4elMFud7AoODVtZkfdX3O63HRBkI79s7HfefyoSMmFpC
	MW74uGJ6b7pASq9ZudjlL513bteeEvROsIXq3Dim3iag8YZYkvEOMT6fd62lqni8WcZEHA
	p2OVdUYm6ZQoO18gkt2aaNbmSTddnI5bIecjBhSKGtRFN5fYPHxLJ19z+b+BmA==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790597451; a=rsa-sha256;
	cv=fail;
	b=fxcArN0zVbF7u8Ufm2QNHZeGIHQfQ39xQzCVDx8EIT6doVfNi0hpn/HU9psZuCEupJi17/
	Zxw5t2j7FDSLA5otDHujqXWEvJy8RDHAe6VLs76dJYoq0xai6irFYSrGajOKcYkBZUECLV
	mQz1YpUjGH6UXx8EoAqRjOjyPYuYZncsVnBlv70I2JcPW+nW6bv2UllDLHsc2OrDUJDhlu
	gmyvFgtw0njudqBiwOcdLSIgUyOvJfIcderWBVaDaDXlqxBa3VQcF/m8jDj3e6nIVObI3x
	M/OqUdmB118GQQ/EURiplq+PvRMC8YyE8dJTccNyscXKOXGGcEjJi5Qx2oAQyA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=hxVFQD7m;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=Qd3XQKh8;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:To:Subject
	:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RjPg/rxMQjtQnNw2HEKHuvhiqfRtB0PJKirN5rdoZgM=; b=hxVFQD7mN7uHjf
	ee7rYC21jvbNECQwxYYPVazHgEOe+N6UTzxxDPJ029g/hmQ2Eqo/h/VtgjA9Ib+sXYdnRpoYJtIe9
	V0ySgjmJQQfyYMOlnDdm/rHlhx25RfDb50zOC1PKp1mnZdhyHcsFfT85P0rE59peNyrMXfAp8M9WN
	PgYarMillt028bWgR9MP7Ah+utw6twcqI4QEmmOyywN8f9hMujo/fk7+oO92+apoYIfoHCAHs2ILa
	MOJJZ8GJB5OqJF79EB0bRDi1XIXOIDlwsReZ89Nkk4w4HTUaCCVUUeYVXTUXWbFzoG2erkV0JwQW3
	JwDTcIbSE+Rwx/PVGkoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBAAq-00000000Wz9-12an;
	Mon, 28 Sep 2026 12:09:36 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBAAn-00000000Wyo-18tO
	for barebox@lists.infradead.org;
	Mon, 28 Sep 2026 12:09:34 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: afa@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 42B36200044;
	Mon, 28 Sep 2026 14:09:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790597371;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=RjPg/rxMQjtQnNw2HEKHuvhiqfRtB0PJKirN5rdoZgM=;
	b=Qd3XQKh80QzWiKF8qg5a2yD2Lr01JV4iGgy9A5G4+lp3aTRELJgqPpDqQrVLW3+qvE91hH
	pRkBS3MzGw8CQRdo9MpPiprMtDzz5GFtQXOwyCsF7mCuJTzvdDXpJbqaSiFZ8vrcXXFlwJ
	DZc/7nLkRMLU44XYLrBzC9NxQVbF15OT59VqUL1AX1JV5HMixAuWBShO7NVNv2MM4+buw7
	h4Xj+Rj/neBGazsbP9XUjZ3U3lXAbuJ7WetH19143Mcu3SlB81AOJZugpWFJhvFRlZcpKT
	r4DyslW5d2mmtLg3eYW4g2fxUC8Sw+6FcH7LyuuZ19Ot4plhv7Fl8e5bRxARDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790597371;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=RjPg/rxMQjtQnNw2HEKHuvhiqfRtB0PJKirN5rdoZgM=;
	b=FumTNsKqCNPSGTyV1DcAxY0DkMzlqO4sHtBpnZmom7QG8BuOHbTFjKBrsUDL07sgY283gd
	7Rgyc6eASeA1B90wvkLpexlSF5kCYEV1swH5cWD6wz6+0z3Ik8PgQW2mWQ1uPiKTqI2uY4
	YRlKYwpOY09XDtAL34myr1rteg0ipE9KqTxOrdd21Yn0hwr+6Vozfm9zCfsCRo67c6ld/T
	8Hq9QeR56ETLz/DCAQEOUwhovdJ/bYzLKc2m5VHrSfUSzRdaKu50Z9tbWnb85HDWCZyIch
	mLnfWdxZVuI42rcfYPIzu0X6RZ6adMOSVG3392TEAbV4BReWMLgB545nUgHKlg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790597371; a=rsa-sha256;
	cv=none;
	b=Y7agnP0wFftKUftdN226FL05zAtVUOVyd+vxBvdpYJFSgXvrJejy5bMKueTSO/jBL7Wo6R
	1VQqNJmRPzZgayzgq2ErLog1b6NesycDKf1MclUrXCrBMyC0r8/5ei/U8zSFwbSwxAQfBN
	mM2BU19s6oWN0H6LcV0Apo6eDT+XPEMsaS+hTdjhha97LYBsSdk7GgdP66ZiEUi0uQzKDM
	JqOOx2SXck0qHral8gWiYdBMn7vUPTiBK0yeMZIDTdacGbN1I6jmQQWsD3EgbKW4cKCeED
	qQIr6rLHROrA5Rn7e3eVNCDbo90Te/qNx/lOgO2s87QpCc1j9YUtJrJ3/4xFVw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=afa@pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
Message-ID: <71bd165f-172e-4bf9-851a-017c5c71f48c@pengutronix.de>
Date: Mon, 28 Sep 2026 14:09:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] nvme: check for readiness more quickly to speed up boot
To: Christian Berry <christiankbberry@gmail.com>
References: <20260927-nvme-ready-poll-v1-1-6a3f63b0ea3e@gmail.com>
 <d8a1924f-a798-438d-aeeb-4cc5139b254b@pengutronix.de>
 <CAH86aduF9cF54ew=75XAj=Wp1dScS5FMDWRSpF-FDaiEsg8mSQ@mail.gmail.com>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <CAH86aduF9cF54ew=75XAj=Wp1dScS5FMDWRSpF-FDaiEsg8mSQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260928_050933_485973_8CC61069 
X-CRM114-Status: GOOD (  20.32  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi, On 9/28/26 2:08 PM, Christian Berry wrote: > On 9/28/26
    10:19, Ahmad Fatoum wrote: > > Nitpick: I'd prefer mdelay(1); but you don't
    need to resend just for this. > > Thanks for the response, > > I wen [...]
    
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
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
Cc: BAREBOX <barebox@lists.infradead.org>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Spamd-Result: default: False [-56.61 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:pengutronix.de:reject}];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:900:1d::77:received];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS(0.00)[m:christiankbberry@gmail.com,m:barebox@lists.infradead.org,s:lore@pengutronix.de];
	RCPT_COUNT_TWO(0.00)[2];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	R_DKIM_REJECT(0.00)[pengutronix.de:s=20260414];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_MIXED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 91533201E30
X-Stat-Signature: ztsjz8kmaexd7hc4rnzirrmjw9c1kmu6

Hi,

On 9/28/26 2:08 PM, Christian Berry wrote:
>   On 9/28/26 10:19, Ahmad Fatoum wrote:
>   > Nitpick: I'd prefer mdelay(1); but you don't need to resend just for this.
> 
>   Thanks for the response,
> 
>   I went with udelay(1000) intentionally, to mirror Linux's
>   usleep_range(1000, 2000) in the equivalent NVMe readiness poll
>   (commit 3e98c2443f5c). mdelay(1) would work too, and I did consider
>   it over udelay(1000) but keeping the barebox and Linux implementations
>   easy to compare side by side seemed worth it. Happy to switch if you
>   feel strongly; otherwise, I'll leave it as-is per your note.

Fair enough. Thanks for the elaboration!

Cheers,
Ahmad

> 
>   Thanks again,
>   Christian
> 
> 
> On Mon, Sep 28, 2026 at 4:18 AM Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>>
>> On 9/28/26 1:03 AM, Christian Berry via B4 Relay wrote:
>>> From: Christian Berry <christiankbberry@gmail.com>
>>>
>>> nvme_wait_ready() polls the controller status every 100ms, although
>>> the controller may become ready much sooner. Every probe then waits
>>> at least 100ms longer than needed, and possibly twice, since both
>>> nvme_disable_ctrl() and nvme_enable_ctrl() wait for readiness.
>>>
>>> Poll every millisecond instead, as Linux does since commit
>>> 3e98c2443f5c ("nvme: Check for readiness more quickly, to speed up
>>> boot time"). The overall timeout is still based on elapsed time, so
>>> it is unaffected.
>>>
>>> Tested on an Arm64 SoC with a Samsung 980 SSD in a Gen3 x4
>>> configuration, where PCIe + NVMe probe time dropped from 165 ms to
>>> 65 ms.
>>>
>>> Signed-off-by: Christian Berry <christiankbberry@gmail.com>
>>
>> Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>>
>>> ---
>>>  drivers/nvme/host/core.c | 2 +-
>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
>>> index 345707ecfe..9686268d44 100644
>>> --- a/drivers/nvme/host/core.c
>>> +++ b/drivers/nvme/host/core.c
>>> @@ -173,7 +173,7 @@ static int nvme_wait_ready(struct nvme_ctrl *ctrl, u64 cap, bool enabled)
>>>               if ((csts & NVME_CSTS_RDY) == bit)
>>>                       break;
>>>
>>> -             mdelay(100);
>>> +             udelay(1000);
>>
>> Nitpick: I'd prefer mdelay(1); but you don't need to resend just for this.
>>
>> Cheers,
>> Ahmad
>>
>>>
>>>               if (is_timeout(start, timeout)) {
>>>                       dev_err(ctrl->dev,
>>>
>>> ---
>>> base-commit: 983608b439b803f72f12d56d0ab10bd6ba29e536
>>> change-id: 20260927-nvme-ready-poll-4bd640377bab
>>>
>>> Best regards,
>>
>> --
>> Pengutronix e.K.                  |                             |
>> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
>> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
>>

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



