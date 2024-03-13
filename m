Delivery-date: Wed, 13 Mar 2024 12:46:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkN4R-004LDO-30
	for lore@lore.pengutronix.de;
	Wed, 13 Mar 2024 12:46:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkN4R-0008UY-CG
	for lore@pengutronix.de; Wed, 13 Mar 2024 12:46:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aQoG6AiO32wFglgqZT4SL5FUX0g2sXiAmFJiF2fSkPI=; b=1+0UT2iAXSzSQUsS+wBfQ0PbnB
	vCeRefe1w8pt8kgDwFo005Pnm/bRHY93ogYi/gBJPIvol+R/g8Ym6lI/VyitPGEGu49rmBwdRumMk
	LRSqyMcN8+0jJ73JFr/W/IqBYoaZ4gXCh1UL0pjER3teOWfcmoADtaflVAKzmul/eNTAtQFJjft/n
	lBPPYdm3nIVPHQdFdMRSGoQOjYyKQ4gqvn2/DiqXJ26BzAB8PGenbWZ3bfsGLxLV3EKF/8AL8rUAJ
	9v/B+SmbkzdCElSvAnziJ3y9AqpsUXFdWbaLl4YOPzFHBaIC3Ipa7qzHw4yttuRSoKMCafCJeI7/W
	gQM/jQvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkN40-00000009xSM-0mds;
	Wed, 13 Mar 2024 11:46:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkN3w-00000009xRq-1alM
	for barebox@lists.infradead.org;
	Wed, 13 Mar 2024 11:46:25 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rkN3u-00082O-Tv; Wed, 13 Mar 2024 12:46:22 +0100
Message-ID: <3a09a33d-4907-42f6-acc5-f87281213eae@pengutronix.de>
Date: Wed, 13 Mar 2024 12:46:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>, barebox@lists.infradead.org
References: <20240313100048.386604-1-a.fatoum@pengutronix.de>
 <171032992292.2298318.3624692935716774908.b4-ty@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <171032992292.2298318.3624692935716774908.b4-ty@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240313_044624_464129_9D90B512 
X-CRM114-Status: GOOD (  14.22  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2] console: flush consoles on newline when debugging
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 13.03.24 12:38, Sascha Hauer wrote:
> 
> On Wed, 13 Mar 2024 11:00:48 +0100, Ahmad Fatoum wrote:
>> For debugging hangs, CONFIG_DEBUG_PROBES and CONFIG_DEBUG_INITCALLS are
>> useful tools to pinpoint where the issue is. FOr issues that lock up the
>> SoC, their output can be misleading if we have bigger UART FIFO and not
>> all output has managed to make it out.
>>
>> Add a new DEBUG_FLUSH_LINE_BREAK to make debugging this easier.

Thanks. I just noticed, I missed updating the message here
(CONSOLE_FLUSH_LINE_BREAK). Could you fix it?

Cheers,
Ahmad


>> The option is unnecessary outside of debugging, so for now we don't add
>> a prompt by default and select it as needed.
>>
>> [...]
> 
> Applied, thanks!
> 
> [1/1] console: flush consoles on newline when debugging
>       https://git.pengutronix.de/cgit/barebox/commit/?id=50cbfd91b573 (link may not be stable)
> 
> Best regards,

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



