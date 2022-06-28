Delivery-date: Tue, 28 Jun 2022 23:14:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6IXB-000cow-5w
	for lore@lore.pengutronix.de; Tue, 28 Jun 2022 23:14:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6IXD-0008DD-6a
	for lore@pengutronix.de; Tue, 28 Jun 2022 23:14:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:References:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AvoB8s/xBPV2a4hDJRDp9hK88QScC4XmPdLC5St+/YE=; b=mLKH91/xgPwWZmG0dpAMdpPtTG
	87Dph+uUSZ19sCNjJmX9b630YMveJj2KQe0BIJvY+0GhXoNB+UTIQQaHsJ6CKSHLMyghMwZ45MjPw
	Q3GQbR4cV5/8Cm/CzVhVjB4s2+WR+sNuPSvFUWuSHXbpPueCfQ4Wi2iqGn07FABvhf34LzO7+Ir/2
	eunAYcbNiRYZHJao+4AmI2ofa+A/zPAp3VuEX5o48Z8q15EUSaIvuJoCL3/4S0a57jAToX4tTiYod
	CfdiwkaA2pw1XiayLyQFdumQhNGEeKLS6cw/SeKk8jMByJfFiDnl0iJ6DK7Utl8wbR5BOEY4dHpl2
	7J3LRxwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6IVs-008DLn-AS; Tue, 28 Jun 2022 21:12:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6IVn-008DKQ-AS
	for barebox@lists.infradead.org; Tue, 28 Jun 2022 21:12:45 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1o6IVj-00088f-4M; Tue, 28 Jun 2022 23:12:39 +0200
Message-ID: <2ff476fa-0a73-3726-c905-5796691f740f@pengutronix.de>
Date: Tue, 28 Jun 2022 23:12:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Sam Ravnborg <sam@ravnborg.org>, barebox@lists.infradead.org
References: <20220515193807.354903-1-sam@ravnborg.org>
 <YrtVGZ0M5Yde6rNd@ravnborg.org>
Content-Language: en-US
In-Reply-To: <YrtVGZ0M5Yde6rNd@ravnborg.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220628_141243_402953_B9F9F880 
X-CRM114-Status: GOOD (  24.61  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [RFC PATCH v1 0/8] ARM: at91: Add pbl support to skov-arm9cpu
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Sam,

On 28.06.22 21:23, Sam Ravnborg wrote:
> Hi Ahmad,
> On Sun, May 15, 2022 at 09:37:59PM +0200, Sam Ravnborg wrote:
>> The following is the current set of patches so far to support
>> PBL for the skov-arm9cpu.
> ...
>> This is an RFC - because the code does not yet work :-(
>> It fails to mount the SD Card - for reasons I am yet to discover.
>>
>> Most of the code is attempted to be generic so we can use it
>> for other targets.
> 
> I noticed you posted an issue on at91bootstrap about the sdram driver
> today where you wrote that you are looking into at91samxxx bootstrap.
> 
> I have something that works - and I can post an updated series tomorrow.
> I was planning to get my drm driver functional again and update the
> binding before posting v2 - so I had a complete barebox + linux kernel
> solution. But as weather is good, there is less time for hacking.
> 
> Let me know if it is of any help to post something.
> Knowing your speed you may already be far ahead of what I made :-)

No hurry. I figured we give the Atmel guys a heads up that the older
platforms are broken. I am not actively working on this.

Cheers,
Ahmad





-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


