Delivery-date: Tue, 05 May 2026 12:49:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKDLb-001DUZ-2Q
	for lore@lore.pengutronix.de;
	Tue, 05 May 2026 12:49:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKDLX-0004bL-5v
	for lore@pengutronix.de; Tue, 05 May 2026 12:49:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IX7uJLperQDj83iV+xQikYPfX80bNmif5jWnG/ozWYQ=; b=FiWmXmlFQhbnjMdm5UJ/P+Vo6b
	OKPDYN/FlQXdQKQyR7lBgQtB+IQ4mIfyiFtxxKzpYNp8nnTIzH3MdPNk1Kq7NAZ30bNXAVGkS6rYf
	v5/V2uYF4v8j0GRcTdgkD6Jw/uZHL0qpQ0GEXnL+SI/fMoNPo92omNi7LhcsohQxLHJm7ErbEA9F2
	EdudncoNljuCKwYSk2b7DFKSEkFXJAlTN36eAdEyb+LocyAuMZwqrE1fyqq+QBhQEYu8t20YWunc7
	cyV/w+9N+4acFzARZD/an1w9NSybFxs5jX0pfNuYbqxT+1sgy5RzZbrhqZjjr8NyOpgBe+uVu8jCV
	PnzYa0SA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKDKx-0000000FwaN-45cG;
	Tue, 05 May 2026 10:49:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKDKv-0000000FwYz-3kdR
	for barebox@lists.infradead.org;
	Tue, 05 May 2026 10:49:11 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wKDKu-0004JJ-9h; Tue, 05 May 2026 12:49:08 +0200
Message-ID: <4e34c9f9-816a-4242-a324-0f23505e9cc8@pengutronix.de>
Date: Tue, 5 May 2026 12:49:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: barebox@lists.infradead.org
References: <20260428132811.3691086-1-eagle.alexander923@gmail.com>
 <c3a17e51-3624-4215-b352-6dce10e1a1b4@pengutronix.de>
 <CAP1tNvShGMqgQ+MHq46n0q_VhqscNz3wNbgnCDaF20n=T-M_aA@mail.gmail.com>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <CAP1tNvShGMqgQ+MHq46n0q_VhqscNz3wNbgnCDaF20n=T-M_aA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260505_034909_946174_06C0F317 
X-CRM114-Status: GOOD (  17.53  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/2] Add support for extlinux.conf
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Alexander,

On 5/5/26 12:47 PM, Alexander Shiyan wrote:
> Hello Ahmad.
> 
> ...
>>> +     if (e->append) {
>>> +             char *append;
>>> +
>>> +             /*
>>> +              * The same rootfs image may be launched from eMMC or SD card.
>>> +              * Remove any hardcoded root= parameter from "append" to avoid
>>> +              * conflicts, then let barebox automatically add the correct
>>> +              * root= (via global.bootm.appendroot) based on the boot device.
>>> +              */
>>> +             if (data.appendroot)
>>> +                     append = remove_param(e->append, "ROOT=");
> ...
>> I thus have a question to you: What happens if you drop remove_param()
>> completely? Sure we will have two root=, but the later gets precedence,
>> so your use case would continue to work without giving users a wrong
>> expectation.
> 
> Yes, the second one takes priority.
> The second one is the one added via extlinux.conf APPEND option.
> In our case we need the first parameter, i.e. which comes from barebox
> when global.bootm.appendroot is toggled on.

Ack. Please check the series I Cc'd you on, which ensures that
global.bootm.appendroot applies _after_ extlinux.conf APPEND.

Thanks,
Ahmad

> 
> Thanks!
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



