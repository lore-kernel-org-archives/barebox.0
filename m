Delivery-date: Thu, 12 Jun 2025 00:24:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPTrr-006Iq2-1O
	for lore@lore.pengutronix.de;
	Thu, 12 Jun 2025 00:24:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPTrq-0004K1-TP
	for lore@pengutronix.de; Thu, 12 Jun 2025 00:24:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Subject:Cc:To:From:MIME-Version:Date:Message-ID:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=tHVWvq7CBG7b+tMhdCEldZUAVuAGhnVbaVfpV2IQllY=; b=qwwMP9KrKDYuOHtkUGAy3S+XKZ
	D+HMaBgJOK+VVWXLf2iNp43s8eaKgEI3Naw/hKiY0X5bFFypjcYVyzkLPMNmK0rSv2L4lfF1NyxHJ
	Jq7+htB9xyyDWg8fhbsckXxapqA29+eo+DJQVN0oVM2+i2Won1uvqxVmJgzffqZiFeTiyGlXAiV0w
	9ISyMTUNe7ArHcDmMJgR36CvCNFGsRClf+p7EPTzjvpYSUOL/IdSIu+v17Doas0ui2KyFfmvnAJJa
	jq9xcIknq+DGqn8fjzZBYtP9kLeWVuSsDnuS1IzraxjdlH4q4GXlhKhbGrJbLAxL7r1k2xKogXTj8
	8kpFm8Dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPTrh-0000000BT5q-3udo;
	Wed, 11 Jun 2025 22:24:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPPtR-0000000AqRb-472j
	for barebox@lists.infradead.org;
	Wed, 11 Jun 2025 18:09:47 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uPPtN-00012L-8z; Wed, 11 Jun 2025 20:09:41 +0200
Message-ID: <89ad64f2-fbda-48a3-9a27-5eaff5be9292@pengutronix.de>
Date: Wed, 11 Jun 2025 20:09:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: manish.pandey2@arm.com
Cc: op-tee@lists.trustedfirmware.org, BAREBOX <barebox@lists.infradead.org>,
 rouven.czerwinski@linaro.org, Michael Tretter <m.tretter@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250611_110946_022560_6AC34F45 
X-CRM114-Status: GOOD (  11.93  )
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
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Firmware Handoff for DT Overlay created by OP-TEE?
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Manish,

In your recent talk[1] at LinaroConnect about the Firmware Handoff
specification, you were asking about what other use cases it could
address for OP-TEE.

We ran into a possible use case that we would like to share:

BL2 can pass a DT to OP-TEE, which it would use to discover memory and
to fix up with memory reservations covering the memory it carves out for
itself.

OP-TEE also supports passing along the reservations as a device tree
overlay. AFAICS, there is no way currently to have both: A DT for OP-TEE
to probe hardware from and a way to pass the normal world a device tree
overlay in return.

I think this could be neatly addressed with Firmware Handoff and would
be a motivation for us to implement support in barebox BL2/BL33 to take
advantage of this. The current way is suboptimal as we would prefer the
DT passed to OP-TEE to be read-only. This avoids either having to copy
it or to pad it sufficiently in anticipation of it growing with the
addition of the new nodes.

[1]: https://www.youtube.com/watch?v=RxU798h8aiE

Cheers,
Ahmad

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



