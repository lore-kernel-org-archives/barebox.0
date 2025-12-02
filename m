Delivery-date: Tue, 02 Dec 2025 07:53:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQKG1-0074vg-2z
	for lore@lore.pengutronix.de;
	Tue, 02 Dec 2025 07:53:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQKG1-0005s3-Cm
	for lore@pengutronix.de; Tue, 02 Dec 2025 07:53:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4gNDCtoyF0QSAJXRu5ZX1cU+c18gwznvfXa/1oboMu4=; b=IXVusWGeAcV5UByiA5wos47Jyc
	Uy9W+tgCQHSMIHra0RAGdqBwxk4VV3AG4YpYxU+ZUi2KOH6kXDGbAMKfNyoO1vFE8+c+yMKp5NMKp
	v4B9QvX63CJlp5Ady5nx04k8sFsw456SKSdM9Av96uq/MJfS/uOKpMKujE3p7b8B5iaywNvwDVMkW
	LB87KsbVZJ5pze7RfovK1hq2qCPOWOrs0IGhS2uYkMOnaTkZaGeCSTqBWXea8s29UaFMsW7cehRRK
	QUX3oczEKRnNqPqOJZrcghMosOSUnrsTv7pVugaH0CWNaT63ZRF6HI/eSgje4rS6cBpkU5ny6epyA
	JLHoW+Zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQKFQ-00000004vWV-0Q3F;
	Tue, 02 Dec 2025 06:52:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQKFN-00000004vVy-2fNt
	for barebox@lists.infradead.org;
	Tue, 02 Dec 2025 06:52:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQKFL-0005nA-J0; Tue, 02 Dec 2025 07:52:23 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQKFL-003ZQa-1H;
	Tue, 02 Dec 2025 07:52:23 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQKFL-00000002j1A-1GSg;
	Tue, 02 Dec 2025 07:52:23 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Jonas Rebmann <jre@pengutronix.de>
In-Reply-To: <20251201-tlv-hardening-v1-1-5dcaa5f7aed5@pengutronix.de>
References: <20251201-tlv-hardening-v1-1-5dcaa5f7aed5@pengutronix.de>
Message-Id: <176465834329.649274.6109273161748499428.b4-ty@pengutronix.de>
Date: Tue, 02 Dec 2025 07:52:23 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251201_225225_679314_7BD6E9AB 
X-CRM114-Status: UNSURE (   5.58  )
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
Subject: Re: [PATCH] tlv: register_device() error handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 01 Dec 2025 15:12:43 +0100, Jonas Rebmann wrote:
> register_device() returns 0 on success, or an error, which must be
> handled appropriately.
> 
> 

Applied, thanks!

[1/1] tlv: register_device() error handling
      https://git.pengutronix.de/cgit/barebox/commit/?id=debc16173615 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



