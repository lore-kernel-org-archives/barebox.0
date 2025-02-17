Delivery-date: Mon, 17 Feb 2025 13:30:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tk0GE-003TpK-1B
	for lore@lore.pengutronix.de;
	Mon, 17 Feb 2025 13:30:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tk0GD-0000ES-7t
	for lore@pengutronix.de; Mon, 17 Feb 2025 13:30:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VnJUM6M7Z2uSHdoCdUSVkXgAHs10fhzWC7WCbibnv+E=; b=p047bwO0AA/wfX+Yq2L2/TCQWw
	tqweE2YFcEuk8QbSN1ouUvvaRg42AEQpee3XctOg1yN5e1kQU796x7b8XCRICq/jfJ0uXs3fYleZv
	VWarwjfGoOXfZ5N3tieJtcep8dSR7QzfbdiEh3YWs3sO04fT6ZoD1/nhK/P8ZNe4VvUpd927E/S1o
	eJGloWvHgY4mv1+ewvRLNYkTdBGHs1BqXdmp8slnbM9Gh6OkgUY/WomVNaIVMiZ4Hhusgt2VrTwOU
	3/1Z5BQrF0ZE3ETKuM1J0YNaRR5JKRvQSNK3hbUuLdcDmiuHltJcvubGKW71x9/mtSLf9gyasJxwY
	u/cDWtcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tk0Fw-00000004SEz-0YZb;
	Mon, 17 Feb 2025 12:29:48 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tjynR-00000004E1Y-2FYK
	for barebox@bombadil.infradead.org;
	Mon, 17 Feb 2025 10:56:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=VnJUM6M7Z2uSHdoCdUSVkXgAHs10fhzWC7WCbibnv+E=; b=eP3zeTPAcDFQ7lMWCozKK5MmVm
	wD+AuuK5VYoFEqCyvqONpKpx0xRhKL8pd4HBawvTwnW2BhhfEwpu0KkNUj0aLnpT6+9SOWpVxyDeV
	IlJsX1VbF8YSacs8lp3fu0PSQ1JhVe65jqdGQtoIAFukDgCXOEVjeoYY09mc3ZYdIUvPAgCJusBZQ
	EHXalycqEL6nja9xAtTP2dol43ZMAYusF0iETBCMQAoZK8lT8Qblak2cVjp6V2USzdwoh3BlpxJm6
	Gea3+CgKHY3+dEOp0HiWdb9ne5C1UnvinDKKaeTU5ZoGtTajZIvczUP0j2UQSu0Gu2iij5bL00Dn4
	HauXTceA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tjynO-00000001mWI-1Zxl
	for barebox@lists.infradead.org;
	Mon, 17 Feb 2025 10:56:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tjynL-0000bc-4b; Mon, 17 Feb 2025 11:56:11 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tjynK-001OPp-34;
	Mon, 17 Feb 2025 11:56:10 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tjynK-006KAC-2r;
	Mon, 17 Feb 2025 11:56:10 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250217095921.1622983-1-a.fatoum@pengutronix.de>
References: <20250217095921.1622983-1-a.fatoum@pengutronix.de>
Message-Id: <173978977088.1507439.14672706622177184571.b4-ty@pengutronix.de>
Date: Mon, 17 Feb 2025 11:56:10 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250217_105614_542150_761CC10E 
X-CRM114-Status: UNSURE (   6.82  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH] usb: dwc3: fix use of bool for prompt choice
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 17 Feb 2025 10:59:21 +0100, Ahmad Fatoum wrote:
> A choice has a prompt, but no type. Newer versions of Kconfig will
> start throwing an error if this is violated, so fix it in anticipation.
> 
> 

Applied, thanks!

[1/1] usb: dwc3: fix use of bool for prompt choice
      https://git.pengutronix.de/cgit/barebox/commit/?id=c6b42a370d22 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



