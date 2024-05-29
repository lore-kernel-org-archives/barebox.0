Delivery-date: Wed, 29 May 2024 08:18:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sCCdM-0016YL-0E
	for lore@lore.pengutronix.de;
	Wed, 29 May 2024 08:18:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sCCdL-0007yD-Ei
	for lore@pengutronix.de; Wed, 29 May 2024 08:18:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LBVXtZ/7cfvW+QgbiGqeIaumMxVwfPqRgT2ukQOz1AI=; b=MJSfX2LBRgbAMTtnyY9KiL1RvQ
	LTEhG4CE9AAe6ohsKOQOe7uNy9kn492kJxDB3zlqazmATQTvIOFm61iMo3xE8dllcKjB7dq+bsKnv
	0NO5OTqJPdcYhV+vYhe691chguNZxgATrWwEqiUNJ7R904j1YLkSMqfYL+DQscJ73rKxc7Xtt1O9v
	AGGECD2A1mgFHZe0aiR8DGYv9dJrvz3xYaMauD2q2wP4PyxajDnhocpF7s2QpuQAuvLXcPz7eTW1d
	ik7yBl+O8XWpjm+vx1MncdH4QBnv3lrkMX7cLc2+AzKgQuX2LHLfTX9TfCf9jZMcrliVFHR00R9rO
	3jip9FKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCCct-00000002ynr-1p7b;
	Wed, 29 May 2024 06:17:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCCcq-00000002yn1-1q9r
	for barebox@lists.infradead.org;
	Wed, 29 May 2024 06:17:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sCCco-0007tM-JP; Wed, 29 May 2024 08:17:26 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sCCco-003QUl-6n; Wed, 29 May 2024 08:17:26 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sCCco-002SjL-0S;
	Wed, 29 May 2024 08:17:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Stefan Kerkmann <s.kerkmann@pengutronix.de>
In-Reply-To: <20240528-feature-mmc-cid-as-parameters-v1-0-e5dc0c1d3eaa@pengutronix.de>
References: <20240528-feature-mmc-cid-as-parameters-v1-0-e5dc0c1d3eaa@pengutronix.de>
Message-Id: <171696344613.587024.8897362208187315156.b4-ty@pengutronix.de>
Date: Wed, 29 May 2024 08:17:26 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240528_231728_702200_E7BAF2AE 
X-CRM114-Status: GOOD (  10.09  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 0/9] mci: core: add CID as parameters and fix parsing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 28 May 2024 17:39:19 +0200, Stefan Kerkmann wrote:
> This series adds the fields of the CID register found in MMC and SD
> cards as parameters to the device. The intention is to use these
> parameters in scripting e.g. for safety checks before applying
> potentially destructive changes.
> 
> During the implementation I found several bugs in the implementation of
> the CID parsing that usually stem from not discerning between MMC and
> SD cards.
> 
> [...]

Applied, thanks!

[1/9] mci: core: rename mtd to mdt
      https://git.pengutronix.de/cgit/barebox/commit/?id=70d4d1ab70d4 (link may not be stable)
[2/9] mci: core: add cbx extraction function
      https://git.pengutronix.de/cgit/barebox/commit/?id=b8171f6eef18 (link may not be stable)
[3/9] mci: core: add product name extraction function
      https://git.pengutronix.de/cgit/barebox/commit/?id=88743df64289 (link may not be stable)
[4/9] mci: core: add manufacturing date extraction function
      https://git.pengutronix.de/cgit/barebox/commit/?id=8df5c2065876 (link may not be stable)
[5/9] mci: core: parse cid into parameters
      https://git.pengutronix.de/cgit/barebox/commit/?id=3419ed8cf618 (link may not be stable)
[6/9] mci: core: fix extract_prv and write to string buffer
      https://git.pengutronix.de/cgit/barebox/commit/?id=fd7edc71c2db (link may not be stable)
[7/9] mci: core: add CBX field as parameter and print it
      https://git.pengutronix.de/cgit/barebox/commit/?id=6ce8b09bff82 (link may not be stable)
[8/9] mci: core: fix extract_oid and write to string buffer
      https://git.pengutronix.de/cgit/barebox/commit/?id=45c4f4939a8c (link may not be stable)
[9/9] mci: core: add missing slice range for extract_psn function
      https://git.pengutronix.de/cgit/barebox/commit/?id=4d340dea7dbd (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



