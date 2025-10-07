Delivery-date: Tue, 07 Oct 2025 11:38:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v649K-005CY6-1H
	for lore@lore.pengutronix.de;
	Tue, 07 Oct 2025 11:38:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v649J-0003tx-Ql
	for lore@pengutronix.de; Tue, 07 Oct 2025 11:38:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=E0tYLgZaErbxPhqZ8KdwtxtfkulEA4H1U/sLduIvAlY=; b=wBVbWZ0MyRACzS3QZfIlKravTm
	0Ibwfy9s/eet9GUiQvc1R2i57cdb80rsCFT0vR8Bk1nXqrsb+sR3EFFN7VbE4xsUjf7AjyZfgRQtK
	e+GmEHS0p5QCnMuOmbnya0Rh9gjhNpo8tiZp03nplOQw8Fz5S0z0bUOrXISPXAdg+3Z4U1kZbuCWC
	E9OV5IfpVaTuQLKRnbVg/iq42/1rRD325urUsR9ya73JCyq7HOZEoGKCSj4usEavY4xFdoO6uLDgP
	/wIIel7cFxIPMlshRrTcRHkkZP8gbOXg8MU4VuO4RYHvW4/zeg2mD13a4aahAGY+QG1VCR7DvykZD
	DC9xTbFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v648k-00000001iGq-1kOd;
	Tue, 07 Oct 2025 09:37:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v648g-00000001iGW-3c4L
	for barebox@lists.infradead.org;
	Tue, 07 Oct 2025 09:37:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v648f-0003oK-Bp; Tue, 07 Oct 2025 11:37:45 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v648e-002NYk-2q;
	Tue, 07 Oct 2025 11:37:44 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v648e-0000000461y-3REH;
	Tue, 07 Oct 2025 11:37:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Jonas Rebmann <jre@pengutronix.de>
Cc: Tobias Waldekranz <tobias@waldekranz.com>
In-Reply-To: <20250929-tlv-integration-v2-0-55f75da7e670@pengutronix.de>
References: <20250929-tlv-integration-v2-0-55f75da7e670@pengutronix.de>
Message-Id: <175982986481.976456.2184758190951212360.b4-ty@pengutronix.de>
Date: Tue, 07 Oct 2025 11:37:44 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251007_023746_989443_113A0BC3 
X-CRM114-Status: UNSURE (   8.77  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 0/9] TLV integration tests and test/py cleanup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 29 Sep 2025 10:03:51 +0200, Jonas Rebmann wrote:
> With TLV signature coming up, we want to test all things TLV more
> thoroughly, including "roundtrip" integration tests that include the
> bareboxtlv-generator python-script and the tlv barebox-command.
> 
> As this is the third test module to make use of the testfs, it seemed
> adequate to revisit its implementation.
> 
> [...]

Applied, thanks!

[1/9] test: when testfs feature is available, always enable it
      https://git.pengutronix.de/cgit/barebox/commit/?id=f6ba436b7bc4 (link may not be stable)
[2/9] test: provide testfs via fixture
      https://git.pengutronix.de/cgit/barebox/commit/?id=4f5d0ff29e19 (link may not be stable)
[3/9] test: move dm-verity testdata generation to fixture
      https://git.pengutronix.de/cgit/barebox/commit/?id=2f18231088ef (link may not be stable)
[4/9] test: move fitimage testdata generation to fixture and drop script
      https://git.pengutronix.de/cgit/barebox/commit/?id=489e9c37b77a (link may not be stable)
[5/9] test: py: test_bootchooser: remove dead code
      https://git.pengutronix.de/cgit/barebox/commit/?id=7d8f367ad149 (link may not be stable)
[6/9] commands: tlv: clarify error opening tlv
      https://git.pengutronix.de/cgit/barebox/commit/?id=2fec81d2fc01 (link may not be stable)
[7/9] ci: container: install crcmod and cryptography
      https://git.pengutronix.de/cgit/barebox/commit/?id=9703b653fb09 (link may not be stable)
[8/9] configs: enable tlv command for multi_v7 and multi_v8
      https://git.pengutronix.de/cgit/barebox/commit/?id=036761c5d072 (link may not be stable)
[9/9] test: py: add TLV integration tests
      https://git.pengutronix.de/cgit/barebox/commit/?id=f493dd2b5655 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



