Delivery-date: Tue, 17 Jun 2025 11:02:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRSDC-008DQw-1a
	for lore@lore.pengutronix.de;
	Tue, 17 Jun 2025 11:02:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRSDB-0001TX-TP
	for lore@pengutronix.de; Tue, 17 Jun 2025 11:02:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=55wgcsln9iGkGKTjkUTFPzo4AZt7MjkE4dSNDOLmk1M=; b=pwY1sHck5rvX5Zmfr8teaqnJTX
	XgQIGTp4JzMBfCVcIKw6RN0XsO5BjAU/6ZS2xzm9vvrvbZ7+hFyeEW6ArZmTYLr9C3dzv2cqhfHCn
	K0gaZ726jLByvl/hARA4Bbb96CQ8cFZhZQqJejSt+2/tBzXjXRLqRAHh0x5u3A/fX9N8zqcoJ/7gi
	vBskBvX0XRuoN9di4BZ0FAJDyehBTP0ediwTTl+CN0VrRM3KdPVkpjY6YQj0CLStn5I2WXT20A6Bd
	XrA0xyEWvJgf0JzGvWMon/dkn0eNmw/YQxS9GfYV7Nw7uiFZLObLhbqFUrskK4miZVhJSgZbjk+eT
	YkfVGz8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRSCF-00000006g3R-1iG9;
	Tue, 17 Jun 2025 09:01:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRSAt-00000006frC-2nnd
	for barebox@lists.infradead.org;
	Tue, 17 Jun 2025 09:00:12 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <l.schmidt@pengutronix.de>)
	id 1uRSAs-0006B5-De; Tue, 17 Jun 2025 11:00:10 +0200
Message-ID: <23ad7e64-e59c-48f1-9dfe-56f9b3f72faa@pengutronix.de>
Date: Tue, 17 Jun 2025 11:00:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
References: <20250616-bootchooser-lock-v2-0-df1f0d118635@pengutronix.de>
 <20250616-bootchooser-lock-v2-3-df1f0d118635@pengutronix.de>
 <aFEqWBIvAqatnZKx@pengutronix.de>
Content-Language: en-US, de-DE
From: Lars Schmidt <l.schmidt@pengutronix.de>
In-Reply-To: <aFEqWBIvAqatnZKx@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_020011_719126_F8AAEE3F 
X-CRM114-Status: GOOD (  16.20  )
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
X-Spam-Status: No, score=-6.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 3/4] Documentation: bootchooser: add information about
 attempts_locked
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On 17.06.25 10:42, Sascha Hauer wrote:
> On Mon, Jun 16, 2025 at 05:06:56PM +0200, Lars Schmidt wrote:
>> The new attempts_locked variable does have influence on
>> remaining_attempts counter.
>>
>> While at it, also make mention in the bootstate.dtsi.
>>
>> Signed-off-by: Lars Schmidt <l.schmidt@pengutronix.de>
>> ---
>>  Documentation/user/bootchooser.rst | 23 +++++++++++++++++++++++
>>  arch/arm/dts/bootstate.dtsi        |  5 +++++
>>  2 files changed, 28 insertions(+)
>>
>> diff --git a/Documentation/user/bootchooser.rst b/Documentation/user/bootchooser.rst
>> index 351e1d14e1ead6ba8d329c03c0bc7ed28b523df0..ab0b6c3fc895226f5aa4590944a2cd675a56d985 100644
>> --- a/Documentation/user/bootchooser.rst
>> +++ b/Documentation/user/bootchooser.rst
>> @@ -77,6 +77,16 @@ no remaining attempts left.
>>  To prevent ending up in an unbootable system after a number of failed boot
>>  attempts, there is also a built-in mechanism to reset the counters to their defaults,
>>  controlled by the ``global.bootchooser.reset_attempts`` variable.
>> +Alternatively, counting down the remaining attempts can be disabled by
>> +locking bootchooser boot attempts.
>> +This is done by defining a (32-bit) ``attempts_locked`` variable in the
>> +bootstate and setting its value to ``1`` (usually from userspace).
>> +
>> +The variable affects all targets, is optional and its absence is
>> +interpreted as ``0``, meaning that attempts are decremented normally.
>> +
>> +The ``attempts_locked`` value does not influence the decision on which target
>> +to boot if any, only whether to decrement the attempts when booting.
> This describes what it does, but not what it's good for. Could you add a
> few sentences about it?

I was hoping this is understandable if you read in the context of the already
existing paragraph right before that: "To prevent ending up in an unbootable system....."
As it is meant to be an alternative to global.bootchooser.reset_attempts

I didn't want to get too repetitive, but if you want, I can try to rephrase it.

>
> Sascha
>
Lars


