Delivery-date: Mon, 20 Oct 2025 14:59:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vApTb-009to1-39
	for lore@lore.pengutronix.de;
	Mon, 20 Oct 2025 14:59:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vApTU-0000l8-9g
	for lore@pengutronix.de; Mon, 20 Oct 2025 14:59:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5Kaz8vGBULVdquRy6NHMDcY2bT9B3IlRGuHO2ZLVTMo=; b=XNHUeiNaBb03kDkbjSCkJkDnv0
	UXIkowBdk3JLxD/oOgoG1Dm0yhv7cMvP43AnSX7EH03YBV6Fo6TPKWvvzmvytFffwP0sb+buMsLHn
	1k4yXnB2kxm0ZLFguinZxNpOqOSKBOgrQqfZBMaMupS8FsOHViH5+e50ugIENXDD3u0irRxg0hPCd
	SqJ0vRZUHbDr7LFtMDQAovApn2fOO0GJ5bonIrIpazeDnVYg/4e0/uTJ6HhAZrV+VhGbb5oYPhbba
	ao75EybYmP3FjP9wEwr+BnQrDjDJcPp2wT0Rezeu5Mpho9tZugtgNBTJAziYEVK/UVe0WyzuLBfkK
	098o+oQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vApSo-0000000DfMb-061f;
	Mon, 20 Oct 2025 12:58:14 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vApSj-0000000DfBo-0nEg
	for barebox@bombadil.infradead.org;
	Mon, 20 Oct 2025 12:58:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:To:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=5Kaz8vGBULVdquRy6NHMDcY2bT9B3IlRGuHO2ZLVTMo=; b=sBZ7K6YrtaJh5RuecH7GiR9zDJ
	CZHVeSjGp9k9bjh+smHLr1OPdXukA9HSpVIkbwIhiatDhxS9uqi3YXyObPn9Bn0u9tl1i6VKA7vHH
	x0KnozIlWtfBLypI9MvrlIqiLfA+Jp3sDAlrZIUPXiYwRzRVlF9kbL12PuUP7GuAylqgEUGX5kl7Y
	ZFyz6NH1R4iGPCppbBz3l90qubzOQkOx0eSuF/bgsE/NINbRenPoCYZG4/UYKHfe1A/yIA71F3KiN
	Btxnoe4ccXbYZm3oFqki4Yh0wiJt3g0yPeWZMyZfI0I+c8uFdE72VPuJFUcGoghGLD0s5eodaH7O0
	/41mGAfA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vApSe-00000007hVX-3TED
	for barebox@lists.infradead.org;
	Mon, 20 Oct 2025 12:58:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vApSb-0008C9-Fl
	for barebox@lists.infradead.org; Mon, 20 Oct 2025 14:58:01 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vAnRS-004X3K-1o;
	Mon, 20 Oct 2025 12:48:42 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vAnRS-0000000A3Mx-24aj;
	Mon, 20 Oct 2025 12:48:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Jonas Rebmann <jre@pengutronix.de>
In-Reply-To: <20251015092602.2354751-1-a.fatoum@pengutronix.de>
References: <20251015092602.2354751-1-a.fatoum@pengutronix.de>
Message-Id: <176095732248.2396224.16268137638317900184.b4-ty@pengutronix.de>
Date: Mon, 20 Oct 2025 12:48:42 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251020_135806_131357_90E27940 
X-CRM114-Status: UNSURE (   7.37  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] fixup! test: py: add TLV integration tests
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 15 Oct 2025 11:26:01 +0200, Ahmad Fatoum wrote:
> test: py: tlv: skip tests if crcmod is missing
> 
> We document nowhere that crcmod is a required dependency for the test
> suite. Skip the tests requiring it if it's not installed.
> 
> In the future, it's probably worthwhile to add some requirements.txt or
> similar that uv could use to set up a python environment with all the
> dependencies?
> 
> [...]

Applied, thanks!

[1/1] fixup! test: py: add TLV integration tests
      https://git.pengutronix.de/cgit/barebox/commit/?id=f33e9c3db94b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



