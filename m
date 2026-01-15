Delivery-date: Thu, 15 Jan 2026 16:27:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgPGH-001dk0-17
	for lore@lore.pengutronix.de;
	Thu, 15 Jan 2026 16:27:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgPGG-0004Nt-CL
	for lore@pengutronix.de; Thu, 15 Jan 2026 16:27:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:References:Cc:To:From:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BA6uu8uBW0wWF7+P8pbr6/3sUxuWmt+MRSMacV2UqT8=; b=CLBLqukV76SviMajPOUgSJN0bu
	pEYdSOh8CIT6bmHaQeCkAIXo3Dj0WRFd8EbuE8G2eswnoYwlsNUN4kGT3zClxiYt+5T73O2vQyH0r
	Q8Igm5slw2Ev/Lhs/TcOzS+qlgGTHylqL0gm24syAaaIh7YEV13sA/cViyKk+XHoTISv2tleDhPGx
	KEbXCkHyNlRj8k18oxC7p8r6LHWPm1f+tp7FXko8rF5euteJRWlfOaRZzo37f7axXXOI7PxpEL7Xd
	l1Eh0W7+WeRcd47D70oyb6TOeYw8HGumT4AaByEGeA3RTYjR9w0nRU5saQWEGDuSwyzd5Ocx8Ut85
	/9LY2HhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgPFr-0000000CbAb-2L6d;
	Thu, 15 Jan 2026 15:27:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgPFp-0000000CbAA-2K10
	for barebox@lists.infradead.org;
	Thu, 15 Jan 2026 15:27:22 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vgPFo-0004HU-0d; Thu, 15 Jan 2026 16:27:20 +0100
Message-ID: <50ee3a64-a59f-42fc-a26b-cf8ff3176142@pengutronix.de>
Date: Thu, 15 Jan 2026 16:27:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
References: <20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de>
 <20251110-v2025-09-0-topic-optee-of-handling-v1-4-8f0625ac5471@pengutronix.de>
 <df2aa615-ac27-42d9-a1f2-38d0d6dd5b50@pengutronix.de>
 <20260115132628.6ot2ph7auhq3ezfw@pengutronix.de>
 <2c560076-4767-4bd1-b420-8f1d4c505a20@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <2c560076-4767-4bd1-b420-8f1d4c505a20@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260115_072721_595733_C1E66A3C 
X-CRM114-Status: GOOD (  14.38  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 04/23] ARM: i.MX8M: add support to pass DT via
 imx8m{m,n,q,p}_load_and_start_image_via_tfa()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 1/15/26 3:01 PM, Ahmad Fatoum wrote:
> I have grown to dislike the boilerplate nature of our PBL entry points.
> I want to rework this fully in the coming months, so I would prefer not
> to add intermediate breakage till then, so users can switch at once to
> the new model.

I think I need to clarify this a little:

It's fine to break out-of-tree code. If it's some breakage that may
easily be missed by users, we add a migration guide entry.
That's why we have the guides in the first place.

In this case, I believe handover is a good solution on its own merits
and not introducing unnecessary breakage right now is a good side-effect.

if it turns out to not work out of the box or complicate things in an
disproportionate manner, please let me know and we can re-evaluate.

Thanks,
Ahmad

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



