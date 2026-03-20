Delivery-date: Fri, 20 Mar 2026 07:35:57 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w3TSf-002vzQ-1u
	for lore@lore.pengutronix.de;
	Fri, 20 Mar 2026 07:35:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w3TSf-0001kt-34
	for lore@pengutronix.de; Fri, 20 Mar 2026 07:35:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZDfdmAzZ7kJZtyyGAKAF9w3IdhZlLybhcWD+RQZ7huI=; b=t3ksxA9Y6J0sAoC9brSNatrqlZ
	YK+7kzmJtD5oNPETzZSPQLkwJ70jRRl6Qf+HYf7CRm8phZT7Gx3vh5nxgXFpZuhA9q9mRfCqa7Iur
	Kb9EyYe48lE0d3S3rwxgd0eQr2jZG+sMQZ+wXGrOv2Zxi1OsC1ewsMHaV2m5flD4BcsqsiYFPOr2F
	sE6LN1E7FlORIk35F30w95xZ0f6PB/VdfTlLzC1NfBNlARXVx1JSnqFkgF3IlLEKTY7dHuhP4U5mL
	kvIR4D2SNV3oTieqfh8cDMG+SyKazvXws6VwiKMH8cse3V50ClJptBUcFp6/U28BfVU5QJp0jSN/W
	T+vn77iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3TSJ-0000000CBIA-15ka;
	Fri, 20 Mar 2026 06:35:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3TSG-0000000CBHd-3knZ
	for barebox@lists.infradead.org;
	Fri, 20 Mar 2026 06:35:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w3TSF-0001ci-Ce; Fri, 20 Mar 2026 07:35:31 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w3TSF-001CPp-0d;
	Fri, 20 Mar 2026 07:35:31 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w3TSF-00000001RUL-0XlI;
	Fri, 20 Mar 2026 07:35:31 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20260319070216.1935180-1-s.hauer@pengutronix.de>
References: <20260319070216.1935180-1-s.hauer@pengutronix.de>
Message-Id: <177398853112.342670.12797366055453112792.b4-ty@pengutronix.de>
Date: Fri, 20 Mar 2026 07:35:31 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260319_233532_938063_E7076C9F 
X-CRM114-Status: UNSURE (   5.88  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] pmdomain: rockchip: inform about missing subdomain
 support when in use
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 19 Mar 2026 08:02:16 +0100, Sascha Hauer wrote:
> On RK3588 the Rockchip power domain driver comes up with several
> messages informing about missing subdomain support. Make this less
> verbose by printing these messages only when power domains with
> subdomains are actually used.
> 
> 

Applied, thanks!

[1/1] pmdomain: rockchip: inform about missing subdomain support when in use
      https://git.pengutronix.de/cgit/barebox/commit/?id=35cb6046ac59 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



