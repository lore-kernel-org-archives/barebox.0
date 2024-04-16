Delivery-date: Tue, 16 Apr 2024 13:16:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwgnu-003HtQ-1d
	for lore@lore.pengutronix.de;
	Tue, 16 Apr 2024 13:16:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwgnu-0005lP-0D
	for lore@pengutronix.de; Tue, 16 Apr 2024 13:16:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kNJ9Cju4TtEvrJNtKB+itq9HYv1N4wZoJLeBtOm12NI=; b=bqY/E5+xV409DsXJztAjs6nDMd
	JNjYJkJrA6akn/X54OC1u8NEWcLO1NL12k4XewpDF8pTZE3kdRLBaSxNSvyxY0Z/46NjLI9Y5584w
	eWxFFJrV7LIeCcKtbjk/13c0lkmCwQ6K3Y0VzhIEch2KlQ5au4VpAx1xW+yaDvxVXUuvfBey14i4j
	y327zYzxPlecgsIBX3BKSkdLb9rR2JufhWIxit9QY+UlfzCV2A6zj8m88vajpm1rqu7ZxMMlkteP+
	cfZJkmAt1eIG/Scv9FLBi9GzyzndhesQA6fqgcesSF6cUoPH6/18AV+p6dvCzNlUEHVqzXzYZq6qK
	IfJW72wQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwgnV-0000000BwfM-1vPo;
	Tue, 16 Apr 2024 11:16:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwgnS-0000000Bweu-15vb
	for barebox@lists.infradead.org;
	Tue, 16 Apr 2024 11:16:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwgnQ-000530-EI; Tue, 16 Apr 2024 13:16:16 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwgnP-00CbBu-Nt; Tue, 16 Apr 2024 13:16:15 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwgnP-00EWQZ-22;
	Tue, 16 Apr 2024 13:16:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
In-Reply-To: <20240412162925.284747-1-enrico.scholz@sigma-chemnitz.de>
References: <20240412162925.284747-1-enrico.scholz@sigma-chemnitz.de>
Message-Id: <171326617561.3461186.13207452004935287325.b4-ty@pengutronix.de>
Date: Tue, 16 Apr 2024 13:16:15 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240416_041618_483405_F2E5BC28 
X-CRM114-Status: UNSURE (   4.89  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] of: do not acccess 'prop->value' directly
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 12 Apr 2024 18:29:25 +0200, Enrico Scholz wrote:
> Use of_property_get_value() accessor.  Else, wrong results are
> returned when working with fit images.
> 
> 

Applied, thanks!

[1/1] of: do not acccess 'prop->value' directly
      https://git.pengutronix.de/cgit/barebox/commit/?id=7b7ab4a37d25 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



