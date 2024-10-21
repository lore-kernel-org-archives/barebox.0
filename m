Delivery-date: Mon, 21 Oct 2024 09:43:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t2n4X-006zFL-1M
	for lore@lore.pengutronix.de;
	Mon, 21 Oct 2024 09:43:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t2n4W-0000Iq-RR
	for lore@pengutronix.de; Mon, 21 Oct 2024 09:43:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BMgCa2qlKKcYoMOiju+9eqF+cGKqQlgIL4b1DvTkfJQ=; b=y0lo3J8aO/3CMwVpLboy23Q+1Y
	Pr9uzFqaJd+NlUqUtTvqOk4CZNHft/MlftKJlTQjAEWKDv3njn2IAjPaTkFdavuJ+RTB1o9rN/c3Z
	f3UFD0JtqIZf5H1USv6dw2oicmnQEstxKEveTfT9RBwwrK69nI8M9YlPwfLCk7bBNVdmwJ19qoEiz
	skyzOM+YF8VCM1m0Pe0HmPnL9xth+8+c+uqSONVO4EcIj/g1+emWADqKW64mG9bkVUlD7bnsqX5o/
	Va2q2ddwPXXrrpoJ2KUHgvFQ/k8zeyVoBoB1g1BdZskMqN64un49zHXPMIfJMXaxIDmzV3dVWOIxg
	2zzZIouw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2n43-00000006Q4N-0Rdy;
	Mon, 21 Oct 2024 07:42:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2mxG-00000006OL0-0kPN
	for barebox@lists.infradead.org;
	Mon, 21 Oct 2024 07:35:57 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPV6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t2mxE-0007X8-QX; Mon, 21 Oct 2024 09:35:52 +0200
Message-ID: <c71f9d53-ddd1-418d-94ad-99d26249e3e4@pengutronix.de>
Date: Mon, 21 Oct 2024 09:35:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Yann Sionneau <ysionneau@kalrayinc.com>
Cc: barebox@lists.infradead.org
References: <20241016085543.3961965-1-a.fatoum@pengutronix.de>
 <20241016085543.3961965-2-a.fatoum@pengutronix.de>
 <777ad095-34c5-43fd-bd52-a7ca938adcf6@kalrayinc.com>
 <ZxIlC-56_P6aHIrg@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <ZxIlC-56_P6aHIrg@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241021_003554_251359_9F63F394 
X-CRM114-Status: GOOD (  16.05  )
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
Subject: Re: [PATCH 2/2] sandbox: add cpuinfo command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 18.10.24 11:06, Sascha Hauer wrote:
> On Wed, Oct 16, 2024 at 11:32:40AM +0200, Yann Sionneau wrote:
>> Hi Ahmad,
>>
>> On 16/10/2024 10:55, Ahmad Fatoum wrote:
>>> We have stack dump support in sandbox via AddressSanitizer, if it's
>>> compiled in. To make it easier to test proper operation, let's a cpuinfo
>> Small typo in the commit msg
>>> command like we already do on ARM and give it the same -s option.
>>>
>>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>>> ---
>>>
>>> +BAREBOX_CMD_START(cpuinfo)
>>> +	.cmd            = do_cpuinfo,
>>> +	BAREBOX_CMD_DESC("show info about CPU")
>>> +	BAREBOX_CMD_OPTS("[-s]")
>>
>> It seems the -s option here is mandatory, maybe remove the [ ] brackets? Not sure if it means "optional" here...
> 
> The ARM cpuinfo command shows information about the CPU when called
> without options, so on ARM -s is really optional and I think Ahmad
> wanted the same behaviour here. It's a bit unfortunate that the sandbox
> command doesn't have any information to show when called without
> options.

I can output host system uname -a output in the argumentless case.
I will prepare a v2 in a few days.

Cheers,
Ahmad

> 
> Sascha
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


