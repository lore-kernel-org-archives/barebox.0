Delivery-date: Mon, 27 Oct 2025 08:57:10 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDI6I-00CGgJ-1L
	for lore@lore.pengutronix.de;
	Mon, 27 Oct 2025 08:57:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDI6H-0000dQ-TF
	for lore@pengutronix.de; Mon, 27 Oct 2025 08:57:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=06Iib0Ox93nYiNs1/s+3nhChfHqwLqiikwC2zBOw6jw=; b=W936NRYGTfluCXhJSJ0O/bVZJs
	Ty72bHLOzrGx12+9L+fx1tT8nmGExEmVMy0loVx3UosJrSZ2o/uw0Qvgr4+rj3SVBPO/moAGRZs+c
	qFZV4w8iRQXHygx7tSTy1sdMs45CVyCgEtNW8nRp79X5A8vz1ZfI2hjwTk+W5qCFknBARkUPFaTak
	7G+HVLeyJzG2URyH+3ZqPDwRBKF9MX3J8YbAkarjnrYbAMCvhm4mhixJmvQU+GitykFfAdUtecd5G
	znODP5zUKqO+7aZF12MKCqzWa/A4CjXasbNLzUzwz6RUHRbik+wBWy5mUWXa6QUWKZVB8OoriQ1Uc
	wYvRbmdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDI5t-0000000DJSB-3pOz;
	Mon, 27 Oct 2025 07:56:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDI5q-0000000DJRC-0jIc
	for barebox@lists.infradead.org;
	Mon, 27 Oct 2025 07:56:43 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vDI5o-0000Z1-Fe; Mon, 27 Oct 2025 08:56:40 +0100
Message-ID: <92aba6cf-cb36-4fc6-a0ec-17d5ff214b15@pengutronix.de>
Date: Mon, 27 Oct 2025 08:56:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>, barebox@lists.infradead.org,
 Ahmad Fatoum <a.fatoum@barebox.org>
References: <20251020182841.590206-1-a.fatoum@barebox.org>
 <176120634786.1140879.1658847254082738843.b4-ty@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <176120634786.1140879.1658847254082738843.b4-ty@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_005642_305467_88FE0391 
X-CRM114-Status: GOOD (  12.23  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/3] test: py: dm: skip test if veritysetup command is
 disabled
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 23.10.25 09:59, Sascha Hauer wrote:
> 
> On Mon, 20 Oct 2025 20:28:36 +0200, Ahmad Fatoum wrote:
>> The test depends on veritysetup being available, so skip it if this is
>> not the case.
>>
>>
> 
> Applied, thanks!

Thanks, were they already pushed?

> 
> [1/3] test: py: dm: skip test if veritysetup command is disabled
>       https://git.pengutronix.de/cgit/barebox/commit/?id=4566090bd769 (link may not be stable)
> [2/3] test: py: network: skip test if tftp command is missing
>       https://git.pengutronix.de/cgit/barebox/commit/?id=a8d6203e8a23 (link may not be stable)
> [3/3] test: py: fix pycodestyle warnings
>       https://git.pengutronix.de/cgit/barebox/commit/?id=1e3961ae1ddb (link may not be stable)
> 
> Best regards,


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


