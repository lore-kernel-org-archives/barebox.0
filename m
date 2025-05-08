Delivery-date: Thu, 08 May 2025 10:46:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCwu2-003PGs-22
	for lore@lore.pengutronix.de;
	Thu, 08 May 2025 10:46:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCwu2-0005VP-3o
	for lore@pengutronix.de; Thu, 08 May 2025 10:46:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=G0jDuFIejumKRyLHvJM9O0TeemUPhO6oN5JJRJ3FzJg=; b=yX4furKgECxGh2labKxlD2hkOP
	PQMKzxdLBMTrehJvhlLr5Z9OY6u5soSfL6/zkE3B6tsyVftzt4Xc8OEy7oKiAGF+wByCtawwqN4Y2
	w0RwPJ5qJJfFE/MQS5SDjY7gwkbamS/iIDGFebxLhDhyTn1hwYEBQ0Mo5qczLkVdUvV1SKnWtFPez
	mrZrB93lmw1HAE9d6xEAD6wv6OHhV2qroXFItHmDqf1dG+PxO2c9eBxBS5B8GWhtHTHNl9QAHuJl3
	wj7kXZVJyVmtZLY2XIlUVEoLMfy3Y6ae13P79mPXyoLVXRdPGS1dBwPSZITizebyDuBK0ttg/RTO/
	4iXLG+Iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCwtn-00000000A3L-1CFC;
	Thu, 08 May 2025 08:46:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCvle-000000000lp-0LBB
	for barebox@lists.infradead.org;
	Thu, 08 May 2025 07:34:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uCvlc-0007IN-SW; Thu, 08 May 2025 09:34:04 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uCvlc-001giw-2D;
	Thu, 08 May 2025 09:34:04 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uCvlc-00B0aS-1y;
	Thu, 08 May 2025 09:34:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250506112449.1100020-1-a.fatoum@pengutronix.de>
References: <20250506112449.1100020-1-a.fatoum@pengutronix.de>
Message-Id: <174668964460.2623845.3386906993178201757.b4-ty@pengutronix.de>
Date: Thu, 08 May 2025 09:34:04 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250508_003406_121471_6E69E868 
X-CRM114-Status: UNSURE (   6.69  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH] Documentation: security: add cross references with
 SECURITY.md
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 06 May 2025 13:24:49 +0200, Ahmad Fatoum wrote:
> We have a top-level SECURITY.md, because it's handled specially by the
> Github Web UI. Additionally, we have a security chapter in the
> documentation, so add references between the two for easier
> discoverability.
> 
> 

Applied, thanks!

[1/1] Documentation: security: add cross references with SECURITY.md
      https://git.pengutronix.de/cgit/barebox/commit/?id=6229813c1e84 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



