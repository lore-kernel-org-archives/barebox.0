Delivery-date: Mon, 23 Jun 2025 10:50:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uTcsL-00ACzt-2t
	for lore@lore.pengutronix.de;
	Mon, 23 Jun 2025 10:50:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uTcsL-0004bx-CB
	for lore@pengutronix.de; Mon, 23 Jun 2025 10:50:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ymrw6DbHmUXe2sjZuV5RD0wxIZwIJU+v63OPy+OLMv8=; b=HCfoPi2zfG7L+XWmpVbtu/wvZX
	/4NkQoNceh9xsj4WqwyZDpyodJtKgYo6c3E95XaBFfT4uKClL+F/kDQ/kBDKmXKf0ZZ2NDS3LaIev
	TPkNL/1+XHS3MJyFnaOVTCNg9w56X+fDv1Zs0eTjt3RkklEGMFIpWnGY90fxUKLhTLMxKjniYADyo
	92csq2E3FI+//rBwVH++CQIPKY7Xv6qhLMBjFikOhqqBEH7TaxYzvq9HyPxDoFAiVmY6gy/8ncr4w
	Abp3xrjEidQe/tGDSlQVw7ZmxoMfkeq+Xa2UsJygtjChkbR1xOaj7efJnYDunM9298hzC7lO3Z26h
	iBjqqDEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTcrp-000000023LY-0GEw;
	Mon, 23 Jun 2025 08:49:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTce5-0000000214v-082N
	for barebox@lists.infradead.org;
	Mon, 23 Jun 2025 08:35:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uTce2-0006Zw-7s; Mon, 23 Jun 2025 10:35:14 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uTce2-004uvV-02;
	Mon, 23 Jun 2025 10:35:14 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uTce1-00Evqj-30;
	Mon, 23 Jun 2025 10:35:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20250623062641.3529615-1-a.fatoum@barebox.org>
References: <20250623062641.3529615-1-a.fatoum@barebox.org>
Message-Id: <175066771392.3558189.13726581998673118418.b4-ty@pengutronix.de>
Date: Mon, 23 Jun 2025 10:35:13 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250623_013517_072967_8FF01525 
X-CRM114-Status: GOOD (  10.44  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/3] test: test recent regressions/features
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 23 Jun 2025 08:26:38 +0200, Ahmad Fatoum wrote:
> We had a couple of regressions around unmounting, for which fixes are
> already in master or in-flight.
> 
> This series adds tests for that and also a new test for bootchooser.
> They are combined just for convenience as they share dependencies.
> 
> This series depends on the patches in following series:
>   - 20250623062032.3527006-1-a.fatoum@barebox.org
>   - 20250623062253.3528292-1-a.fatoum@barebox.org
> 
> [...]

Applied, thanks!

[1/3] test: self: idr: add test for idr_remove in idr_for_each_entry
      https://git.pengutronix.de/cgit/barebox/commit/?id=bbfd9fd63578 (link may not be stable)
[2/3] test: py: test mount/unmount of pstore file system
      https://git.pengutronix.de/cgit/barebox/commit/?id=37b601f9d0ad (link may not be stable)
[3/3] test: py: add bootchooser attempt decrement and locking test
      https://git.pengutronix.de/cgit/barebox/commit/?id=3e5fcec2105f (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



