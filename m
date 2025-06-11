Delivery-date: Wed, 11 Jun 2025 21:54:36 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPRWu-006GNb-31
	for lore@lore.pengutronix.de;
	Wed, 11 Jun 2025 21:54:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPRWu-0000l3-Cg
	for lore@pengutronix.de; Wed, 11 Jun 2025 21:54:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tJMt7Se0AIf8rGzrcQ2VYhKUPag2XLMVO6ZEsP8eO9E=; b=qd7RbBRgzyHptPprnyBlef8ZjS
	AZZ9AbfMqY3dF1Pw24iPZaEphFP/SLxCX+TTiF1lebHo7GQcH/KZmCFcpzqmd/OIDt8KRUSOOI603
	M9v8Tdx0+4CqNPvcfNZYcN1FxO5cgb1mc3bbBb+GahxYKD74tbjJ6W1tpyqpD0TfJeo4GZ4CgKYG9
	NA5oWuesbPA+mmQsV+k82ZJnLDrLXw6ZoyqPt4/51TuzFnrvKUezsf34LaDceCVjqseTsvXMRNiR/
	SXZ1JnYA8/ar5xO7x6AUPI5/RdckC8IzhR8EGeu36j7iCRINpLP2fF5B+0W4RB5+f7YuIgZKdLY2R
	mg/t7Y+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPRVy-0000000B0cg-0T4c;
	Wed, 11 Jun 2025 19:53:38 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPMtN-0000000AJL6-2vPi
	for barebox@bombadil.infradead.org;
	Wed, 11 Jun 2025 14:57:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=tJMt7Se0AIf8rGzrcQ2VYhKUPag2XLMVO6ZEsP8eO9E=; b=AS4ALr3Kl8/NrN4gllx+GXp+yd
	/HbiGUG4ZuPvES3FhpeLokfoNIHk7oJyBHUmT9PLvoNRIMUZU7CtOF58u6mRGqhbQTO1RshaEg0D7
	crmlM7YbOeD8HjTLz2CVq5QWbYvunYJ9gQLLgAvIaeVLZtOc0sCWDU51MxD2EdTWh4aipfxk5nfsV
	aZEIEU7ofzLHLifYaHz8IeKs6LFl8QZGnF7Sc/8ywO3B/Pfv1Az9iqhPw8UmN+BF1NBGQbRNK+pqb
	jL9RVwwyQI9+cqrnznvn7HC6qX7el5HXbxAaWDXUshaHgFPYOgWUjxM/uA5/Usz9+7OgOujwRm0yw
	f58ZXN+g==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPMtL-00000002PV4-1LXA
	for barebox@lists.infradead.org;
	Wed, 11 Jun 2025 14:57:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uPMtI-0000lN-AJ; Wed, 11 Jun 2025 16:57:24 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uPMtI-002xxj-0S;
	Wed, 11 Jun 2025 16:57:24 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uPMtI-00CsNS-0C;
	Wed, 11 Jun 2025 16:57:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Jonas Rebmann <jre@pengutronix.de>
In-Reply-To: <20250611090753.4164553-1-jre@pengutronix.de>
References: <20250611090753.4164553-1-jre@pengutronix.de>
Message-Id: <174965384405.3068600.13695067209606892685.b4-ty@pengutronix.de>
Date: Wed, 11 Jun 2025 16:57:24 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250611_155727_474296_2F45929F 
X-CRM114-Status: UNSURE (   4.72  )
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
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fixup! ARM: i.MX8M: Add support for eCSPI boot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 11 Jun 2025 11:07:53 +0200, Jonas Rebmann wrote:
> 


Applied, thanks!

[1/1] fixup! ARM: i.MX8M: Add support for eCSPI boot
      https://git.pengutronix.de/cgit/barebox/commit/?id=1f2b72578fb9 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



