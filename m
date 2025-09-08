Delivery-date: Tue, 09 Sep 2025 04:29:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uvo6f-000tzc-1f
	for lore@lore.pengutronix.de;
	Tue, 09 Sep 2025 04:29:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uvo6e-0004Rd-Uf
	for lore@pengutronix.de; Tue, 09 Sep 2025 04:29:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aZjloESfbss7uQKj3Mq0FMMoRxBMO0Ua/mrZ59KHfsE=; b=XgueiY5LRiMrJtGH8EDqrzvhe8
	DeNy0HgQu70PnVMp4d/kMBZvHKmw+2wAysOfMvLw81p7u0oEiGlbyb8ayyXA1A0AU7XLkAL4y0TME
	bAybOF11Jq4iqBPSJdoHhMYOe1kki9tmpdw/TvawQf7L9i7xkvsmScxW6bmDjfZjMGBCCyMpWxgM1
	xFlGhMyAvf3x+5w70+XKe5qYKV1NoXajqjeul6IrdJmRnUGCcpb113/cXqCmA5/qy82PLPHvr6nF7
	KOnedD1Xhulh3uiKxlYY/LL2LVP+k8IvyTnvqSr9PTi/9w1eT0W8h+V7sSw/Ow2/G3qIevxEVfwnr
	ZlkrkMbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvo64-00000003hK3-3QAX;
	Tue, 09 Sep 2025 02:28:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvgzP-00000001hRg-0JYU
	for barebox@lists.infradead.org;
	Mon, 08 Sep 2025 18:53:20 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uvgzN-000548-SS; Mon, 08 Sep 2025 20:53:17 +0200
Message-ID: <52e9c24a-3212-4aaf-a16c-5616bc665d53@pengutronix.de>
Date: Mon, 8 Sep 2025 20:53:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Tobias Waldekranz <tobias@waldekranz.com>, barebox@lists.infradead.org
References: <20250828150637.2222474-1-tobias@waldekranz.com>
 <20250828150637.2222474-5-tobias@waldekranz.com>
 <33d27821-8395-4e66-b1fc-4fe57c72042b@pengutronix.de>
 <87jz292t12.fsf@waldekranz.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <87jz292t12.fsf@waldekranz.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250908_115319_114635_4C1B7B22 
X-CRM114-Status: GOOD (  16.73  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 4/5] test: self: dm: Add test of linear target
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 08.09.25 11:27, Tobias Waldekranz wrote:
> On fre, sep 05, 2025 at 18:50, Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>> On 8/28/25 5:05 PM, Tobias Waldekranz wrote:
>>> Verify that the 'linear' target works as expected.
>>>
>>> Do this by (1) creating a dm device with a couple of linear mappings
>>> to two underlying ramdisks, and then (2) verify that data is returned
>>> in the expected order when reading it through the dm device.
>>
>> Thanks for writing a test! :)
>>
>>> Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>
>>> ---
>>>  test/self/Kconfig  |   7 ++
>>>  test/self/Makefile |   1 +
>>>  test/self/dm.c     | 159 +++++++++++++++++++++++++++++++++++++++++++++
>>>  3 files changed, 167 insertions(+)
>>
>> Please add to common/boards/configs/enable_self_test.config, so CI also
>> tests this.
> 
> Ah right, tests are more useful if you execute them :)
> 
> I have told SELFTEST_ENABLE_ALL to select SELFTEST_DM and all checks
> pass (https://github.com/wkz/barebox/actions/runs/17545487677), but I'm
> not exactly sure which job is running the selftests, and how I can see
> whether the dm tests are included.

https://github.com/wkz/barebox/actions/runs/17545487672/job/49825889525#step:8:65


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


