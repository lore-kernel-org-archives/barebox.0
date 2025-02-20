Delivery-date: Thu, 20 Feb 2025 18:46:32 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tlAd6-004nS9-23
	for lore@lore.pengutronix.de;
	Thu, 20 Feb 2025 18:46:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tlAd5-0001gD-Cs
	for lore@pengutronix.de; Thu, 20 Feb 2025 18:46:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:References:To:From:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FiJAVxl9z6nUkiQmm5NP0bmZq1ULnpWj1pllecRH2qU=; b=1YswnfymUZdQqc9eDir9iSISj7
	Jmz9PoXL8Ax0D0b+H01jUGLlCYfc+XkRIZDL7pFOOo8N6VrM6WDpH66+V56d4SCze4wn6/Ov2nWC7
	B0RtI3B+K+LFm5a5oSYEYY5XhohGrfg97/GZu+m6FlXZtZ3Xk/Rz8fZUV5g+uEGnqRSxtlCJkhrQe
	5Qs2GEVZzH5Qid3CAo7yT5cCtfnnsaCT7sAKY+ZLPmfmooEtgxl099DH9TxEIiA9NherEqwQyD57f
	VXYRxscSunsqAZ/uPr4wTRVX0NLBVPuDG5GAHz0IQCXimnx2jzi6z+uQ5pu+620kvuWylblaA8Q9E
	whLCDmTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tlAcW-00000002DAl-2WCC;
	Thu, 20 Feb 2025 17:45:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tlAbw-00000002CzJ-1Suf
	for barebox@lists.infradead.org;
	Thu, 20 Feb 2025 17:45:22 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tlAbv-0001Rb-2w; Thu, 20 Feb 2025 18:45:19 +0100
Message-ID: <98c9c867-0985-4c83-8e76-b16fff5cafd6@pengutronix.de>
Date: Thu, 20 Feb 2025 18:45:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20250220091743.3489127-1-s.hauer@pengutronix.de>
 <1058511f-b54e-44be-b267-dce2b1fd048a@pengutronix.de>
Content-Language: en-US
In-Reply-To: <1058511f-b54e-44be-b267-dce2b1fd048a@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250220_094520_388860_069B22E1 
X-CRM114-Status: GOOD (  21.93  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] boot: fix systemd watchdog command line argument
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 20.02.25 13:06, Ahmad Fatoum wrote:
> On 20.02.25 10:17, Sascha Hauer wrote:
>> The kernel command line option to specify the watchdog to use is
>> "systemd.watchdog_device" as specified in [1], not
>> "systemd.watchdog-device"
>>
>> [1] https://www.freedesktop.org/software/systemd/man/latest/kernel-command-line.html#systemd.watchdog_sec=
>>
>> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> 
> Please also include the typo fix in the common/Kconfig help text for
> CONFIG_SYSTEMD_OF_WATCHDOG.
> 
> With that squashed:
> 
> Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> 
> I could swear I have tested this with two watchdogs back then...

Turns out, you can replace an underscore with a dash in all systemd
kernel options and they will behave identically:
https://github.com/systemd/systemd/pull/36453#discussion_r1963693274

> Anyways, I have submitted a fix to the systemd documentation here:
> https://github.com/systemd/systemd/pull/36453

And it's merged. It's a good idea for barebox to be aligned with the
current systemd documentation, but it's reassuring to learn that
this was not buggy to begin with. :)

Cheers,
Ahmad

> 
> Thanks,
> Ahmad
> 
> 
>> ---
>>  common/oftree.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/common/oftree.c b/common/oftree.c
>> index 4afe955719..2ebde791c7 100644
>> --- a/common/oftree.c
>> +++ b/common/oftree.c
>> @@ -172,7 +172,7 @@ static void watchdog_build_bootargs(struct watchdog *watchdog, struct device_nod
>>  	if (alias_id < 0)
>>  		return;
>>  
>> -	buf = basprintf("systemd.watchdog-device=/dev/watchdog%d", alias_id);
>> +	buf = basprintf("systemd.watchdog_device=/dev/watchdog%d", alias_id);
>>  	if (!buf)
>>  		return;
>>  
> 
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


