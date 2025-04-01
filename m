Delivery-date: Tue, 01 Apr 2025 12:04:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzYUJ-006wp2-1r
	for lore@lore.pengutronix.de;
	Tue, 01 Apr 2025 12:04:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzYUJ-0003DG-0I
	for lore@pengutronix.de; Tue, 01 Apr 2025 12:04:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ugu0bC+dx+8LvGgRQP/rsAC/lbCSbqma95x81aW1Gz0=; b=JF3QPvJhgTyVAxdQI1RAeJpbnV
	+tHjOJ8w1qRnC9MEyl3mlZAOCXAg1xKnoCm1YS+7UuNOMo0g7j+JFYmeFfDENeuXMwFl3xckq6ukX
	2aoUshifPTlYSFq4P/5427xCweyZpcuqawrW6pozEi3EY3LoCH7DEB5JiqmsABJRSoUtOfTFa6d/O
	mkmmEQEqpjsU2i1Ng6lpYVU0+To98jtCqbiA/Ca9QclRLL6Qc1+a3FnF7xd/aR2ybXyTfhEfYfTBw
	1rmi0YtnQxfgBvJUKqS1f8aqFS5uAc0x6PqSFAK9NHKt/KThkfUZO9z9fSpYpAhg0u5a3fG5Kx6m8
	vY587I/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzYTt-00000002Ypu-0HUi;
	Tue, 01 Apr 2025 10:04:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzY0b-00000002UYb-0Kr0
	for barebox@lists.infradead.org;
	Tue, 01 Apr 2025 09:34:15 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tzY0Z-0006id-Pp; Tue, 01 Apr 2025 11:34:11 +0200
Message-ID: <e70e38c5-92f4-45d1-97db-4c0fca4dc4f2@pengutronix.de>
Date: Tue, 1 Apr 2025 11:34:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Bastian Krause <bst@pengutronix.de>, barebox@lists.infradead.org
References: <20250327144742.1841423-1-a.fatoum@pengutronix.de>
 <20250327144742.1841423-3-a.fatoum@pengutronix.de>
 <46a84f2b-1b33-4da8-ae60-a02551d18da0@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <46a84f2b-1b33-4da8-ae60-a02551d18da0@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250401_023413_117687_9C441949 
X-CRM114-Status: GOOD (  16.13  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/4] test: bthread: change comparison condition for
 switches vs. yields
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Bastian,

On 4/1/25 10:53, Bastian Krause wrote:
> Hi Ahmad,
> 
> On 3/27/25 3:47 PM, Ahmad Fatoum wrote:
>> The code was written with the assumption that isolated yields from test
>> thread to main thread and back will always be at least as fast as
>> unrestricted scheduling.
>>
>> This assumption held so far, but breaks down in sandbox, because it's
>> highly influenced by the system's CPU pressure.
>>
>> Just check that we can schedule @1000Hz at least in both cases.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>   test/py/test_bthread.py | 3 ++-
>>   1 file changed, 2 insertions(+), 1 deletion(-)
>>
>> diff --git a/test/py/test_bthread.py b/test/py/test_bthread.py
>> index 6e7b4ba5007e..84fb9f830b0c 100644
>> --- a/test/py/test_bthread.py
>> +++ b/test/py/test_bthread.py
>> @@ -20,4 +20,5 @@ def test_bthread(barebox, barebox_config):
>>       switches = int(barebox.run_check("bthread -c")[0].split()[0])
>>       yields   = int(barebox.run_check("bthread -t")[0].split()[0])
>>   -    assert yields < switches
>> +    assert yields > 1000
>> +    assert yields > 1000
> 
> I guess one of these asserts should involve "switches", right?

You guessed exactly right. I Cc'd you on the fixup.

Thanks,
Ahmad

> 
> Regards,
> Bastian
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



