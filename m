Delivery-date: Fri, 06 Oct 2023 12:25:27 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qoi1P-008GSx-QY
	for lore@lore.pengutronix.de; Fri, 06 Oct 2023 12:25:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qoi1O-0002KJ-4u
	for lore@pengutronix.de; Fri, 06 Oct 2023 12:25:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+nWOrqNEUc6uIhkD1g0DhyxT3Snl0RgE0l1P7eniN9c=; b=Yj6FBZHDlIqcH7QkGd1u9FhMFd
	xy5vMV3sfEHkwyjZjAANT/4hDthJHv/ftCWYLThNca1VQAoIBCbaVq1uKn52ZEllfkjfEJiRbnFAS
	YEYhwymeNzw0JFpaI3YxHMLD0fVWzuAwQHXkkYgvs9BR4B0aQRFsfqzBTE21aD3kvrgLRBlWWgAHi
	+P4EVDifHQQGPx4Bp0RxxdZdum0py18UTb/ReMqFGzFXfGxUAnou/GtfnkpLjH4dhvCNln6GYYc3s
	fAT/YLYZZCKXVrXWYnuL8fUPRbPhEwv42T3t1N3S+WlqFR33mjqZU8k5+Vjo/+X2GlpUE+8dPq07D
	6bmxZBaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qoi0H-005ZBh-2J;
	Fri, 06 Oct 2023 10:24:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qoi0E-005Z9N-1T
	for barebox@lists.infradead.org;
	Fri, 06 Oct 2023 10:24:15 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qoi0D-0002AJ-3a; Fri, 06 Oct 2023 12:24:13 +0200
Message-ID: <4275cfd4-3edc-785a-6fbd-7c5dea901b47@pengutronix.de>
Date: Fri, 6 Oct 2023 12:24:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: Sascha Hauer <sha@pengutronix.de>, barebox@lists.infradead.org
References: <20230930121720.770d90611fc199200445dda3@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230930121720.770d90611fc199200445dda3@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231006_032414_494287_B30290B4 
X-CRM114-Status: GOOD (  13.69  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: barebox.org browser demo uses barebox-v2022.02
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Antony,

On 30.09.23 11:17, Antony Pavlov wrote:
> Hi Ahmad!
> 
> barebox browser demo (https://www.barebox.org/jsbarebox/) looks very impressive.
> But it uses old barebox-v2022.02. Could you update it please.

You're right. I will try to find some time to update it. Eventually, I'd like
the tutorial to actually boot a kernel as well and have at github.com/barebox/
a separate project (maybe Yocto-based?) that builds all the necessary artifacts,
but there's still some work to be done until we can do that...

> 
> As barebox browser demo runs on top of RISC-V machine can we add RISC-V mention
> to barebox.org/index.html page?

I guess. Sascha, is that ok for you?

Cheers,
Ahmad

> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



