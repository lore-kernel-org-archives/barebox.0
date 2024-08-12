Delivery-date: Mon, 12 Aug 2024 15:30:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sdV8M-008s4C-2L
	for lore@lore.pengutronix.de;
	Mon, 12 Aug 2024 15:30:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sdV8M-00006l-46
	for lore@pengutronix.de; Mon, 12 Aug 2024 15:30:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TVg5BR0DNRtt3NpdVnfEhztOGD3lDmtlcD/Oat0fj9I=; b=Sli8COPRjHOoGiucwuDoGYMhFU
	m642OSQVJKkoRmcigkDZrndNvcxcqMBdWBBxGlK56YMdJR7sLbgpVRkJgp+G1rSozOZwf95inMa4B
	6+mL04zuB+Qzy+W7SGloB2Dn1KK+Hqf+Dm6nv9hjP3I4+lqu6ZrS5m7H5JvqwPcbrwHTsRsjeDaRP
	X8RRUU4kTj9WbM1TYEE7KIZ/UxY0huoRfypH6oMRjcsacsId8w7+RBWPMKP4e+3QUjImY0kZ//K74
	F1Vaw02/DnYLoGykSJmyA8AaPGgjvNp10Js9ZaPizLE4qTBVVtKrQ9qZa0+ljgmlCEadFyFRr/Gnd
	+tq3goAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdV7o-00000000QDe-0RIF;
	Mon, 12 Aug 2024 13:30:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdV7l-00000000QD8-0icS
	for barebox@lists.infradead.org;
	Mon, 12 Aug 2024 13:30:14 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sdV7j-0008Th-SR; Mon, 12 Aug 2024 15:30:11 +0200
Message-ID: <5ee3dcc9-29ea-480a-a315-60a5379802af@pengutronix.de>
Date: Mon, 12 Aug 2024 15:30:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Yann Sionneau <ysionneau@kalrayinc.com>, barebox@lists.infradead.org
References: <20240812091522.3035469-1-a.fatoum@pengutronix.de>
 <20240812091522.3035469-3-a.fatoum@pengutronix.de>
 <0a0ba36f-3987-49a3-b709-16b009ef25a1@kalrayinc.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <0a0ba36f-3987-49a3-b709-16b009ef25a1@kalrayinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240812_063013_231099_86B3FB81 
X-CRM114-Status: GOOD (  15.43  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 3/6] ci: container: update to newer Labgrid
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Yann,

On 12.08.24 14:52, Yann Sionneau wrote:
> Hi Ahmad,
> 
> Le 8/12/24 à 11:15, Ahmad Fatoum a écrit :
>> The now current release is v23.0.6 from April 2024, but master has
>> fixes, which enable us to run Labgrid tests against the sandbox
>> architecture. Therefore point at the newest commit on the master branch.
>>
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>   test/Containerfile | 3 ++-
>>   1 file changed, 2 insertions(+), 1 deletion(-)
>>
>> diff --git a/test/Containerfile b/test/Containerfile
>> index 2f8c969d824f..c09051a1505a 100644
>> --- a/test/Containerfile
>> +++ b/test/Containerfile
>> @@ -75,8 +75,9 @@ RUN echo barebox ALL=NOPASSWD: ALL > /etc/sudoers.d/barebox
>>     # install labgrid
>>   RUN cd /tmp && \
>> -    git clone --depth 1 -b v23.0 https://github.com/labgrid-project/labgrid && \
>> +    git clone --depth 1 https://github.com/labgrid-project/labgrid && \
> 
> This triggers `error: pathspec '16db15a953' did not match any file(s) known to git` on my side
> 
> I suggest removing the `--depth 1`

Thanks. v24.0 was released today, so I'll just point at that.

Cheers,
Ahmad

> 
> Cheers,
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


