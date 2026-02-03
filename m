Delivery-date: Tue, 03 Feb 2026 11:40:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vnDpO-008N3y-3C
	for lore@lore.pengutronix.de;
	Tue, 03 Feb 2026 11:40:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vnDpO-00057L-1S
	for lore@pengutronix.de; Tue, 03 Feb 2026 11:40:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iPQRHF4Y8V3LFR4dl5aM0cnRs4B9r/vDeX9bRTp7x+k=; b=1xDiJ3c7gDhon9lBcd8iHgS/GA
	sd2ewq0tdpqQZBcXrxnhURzMoiAFxwFhuBLuvU2dCPiEEUi1dbdhP3UERpWQgSz6mY7K1JdN9R8Cv
	8iM/GAaJCX09w+3Wr5Eyk82svWAONLgDmE7fmJcqxcfnK6ZaFQrrmhgwzOe2xl9Zr3XV43MA1OvCq
	yvNph2ezdekBTYXEZZVtNkRCnmK9NfP5d81AmdKifczPtTRM46Qd09MdMjzXOs8ubrQgL41u5HeAd
	VUGBB17YqdSDIAt36LG7k6B3NkklPnYazCA7Dnn1WUUDGOMmtjrR7dnFzJ+VM9LperHLFZ5ShxD1H
	qnV0lltw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnDoy-00000006UTw-21p9;
	Tue, 03 Feb 2026 10:39:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnDow-00000006UT1-0QMG
	for barebox@lists.infradead.org;
	Tue, 03 Feb 2026 10:39:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vnDou-00052v-LS; Tue, 03 Feb 2026 11:39:44 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vnDov-003tI8-0S;
	Tue, 03 Feb 2026 11:39:44 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vnDou-00000004yPL-3bBJ;
	Tue, 03 Feb 2026 11:39:44 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Michael Tretter <m.tretter@pengutronix.de>
In-Reply-To: <20260202132431.185971-1-m.tretter@pengutronix.de>
References: <20260202132431.185971-1-m.tretter@pengutronix.de>
Message-Id: <177011518438.1185403.6964560645372365755.b4-ty@pengutronix.de>
Date: Tue, 03 Feb 2026 11:39:44 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260203_023946_143759_E7EFD2B2 
X-CRM114-Status: UNSURE (   7.69  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] tee: drivers: rksecure: make ta_uuid static
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 02 Feb 2026 14:24:31 +0100, Michael Tretter wrote:
> The ta_uuid should be only visible in the rksecure.c file. Otherwise,
> other TEE drivers cannot use the ta_uuid name to store the UUID of the
> TA they are trying to use.
> 
> 

Applied, thanks!

[1/1] tee: drivers: rksecure: make ta_uuid static
      https://git.pengutronix.de/cgit/barebox/commit/?id=8781fc641fc1 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



