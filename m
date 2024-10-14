Delivery-date: Mon, 14 Oct 2024 15:57:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0LZI-004HWn-39
	for lore@lore.pengutronix.de;
	Mon, 14 Oct 2024 15:57:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0LZH-0006RS-1R
	for lore@pengutronix.de; Mon, 14 Oct 2024 15:57:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PbdvcUsuB4nvrsW395tLO+f2rvvdeDOp2iL7ec4kod0=; b=NdKwsHaUaQH8jfQybdwqKyiSZy
	lljadrlrNIq41eXG/X9XXy0P6C1/7zB+B3f/WAvhbLzi0hGzXzIJpTqb3eTC2EeU4+zK0ADLOqT4N
	4FyLgfz3iZRXwBeAE7g+lRjbpdqYZ2fGL6hgvLDGKwzbAK8mgPYCWZB8SLCEvEeBCJC7HVjSXqJFB
	rk29oInVsq9A+i2j6RKi0T/0a2epKsMAnVhDRxGHm/5JSVIsrPdFdQg1U8fHWT4eMWiIlxNQVJDq9
	3nTI83oL03dh5TrktL+c1fBCue91ZebMIiGT9niALmclB49sYBv9AqrLSzBJRahW5oZHFqR7notQG
	aZqG1RDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0LYe-00000005NOa-4BuA;
	Mon, 14 Oct 2024 13:56:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0KeP-00000005AZX-1JFi
	for barebox@lists.infradead.org;
	Mon, 14 Oct 2024 12:58:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0KeO-0007JA-2U; Mon, 14 Oct 2024 14:58:16 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0KeN-001nNN-Eo; Mon, 14 Oct 2024 14:58:15 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0KeN-002zh2-1J;
	Mon, 14 Oct 2024 14:58:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Jonas Rebmann <mail@schlaraffenlan.de>
In-Reply-To: <20241008-test_tftp-v2-1-509b8e861702@schlaraffenlan.de>
References: <20241008-test_tftp-v2-1-509b8e861702@schlaraffenlan.de>
Message-Id: <172891069540.713787.17933362137094883615.b4-ty@pengutronix.de>
Date: Mon, 14 Oct 2024 14:58:15 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_055817_387033_2B220111 
X-CRM114-Status: UNSURE (   8.44  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] test: pytest: introduce pytest for network, test
 tftp notfound
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 08 Oct 2024 13:21:47 +0200, Jonas Rebmann wrote:
> barebox already has a few pytest integration tests but none of them are
> networking related.
> 
> This patch introduces a test that asserts on bringing up at least one
> DHCP interface and, on any of these interfaces, a successful ICMP-ping
> from the DUT to the test pytest-host as well as a basic "File not Found"
> conversation between the DUT and the test pytest-host.
> 
> [...]

Applied, thanks!

[1/1] test: pytest: introduce pytest for network, test tftp notfound
      https://git.pengutronix.de/cgit/barebox/commit/?id=2240367552f3 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



