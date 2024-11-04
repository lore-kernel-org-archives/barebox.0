Delivery-date: Mon, 04 Nov 2024 09:18:30 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t7sI9-004fgB-0j
	for lore@lore.pengutronix.de;
	Mon, 04 Nov 2024 09:18:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t7sI9-00026z-Sj
	for lore@pengutronix.de; Mon, 04 Nov 2024 09:18:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JS3XrxMrnFO53phE0o/DZfljz6JcXQXnHPAMqp9fB+M=; b=2rt50zz7Qycv9tV1JejFJZRcCD
	b4FefGYMuqAEQteeo1w2D8C/HQTpJZOHJTbIYTpc0vuSXoBHHtF9HX7fazZnqVCMsH2FznijJ24kX
	fa0C96apCwwdkJax2lyLHuwQ0HTDUP+nI97U1U0921gEQH8ArsitEBB3kJa3WRuEcnQpAmBBpc3VV
	bPPPBjmHE3cvVIpvZg+4HWRsHqxAYQ9bxS3IO+mTx6Wmed3ikkXZMEKGqurApnktni/ipHr06U0KS
	UyktZydMF5NNFctifdZkkSTg3FJSnotVrhnQl9NqFj+pqMQqSgjxByxonklIfYWmmcPDZ0LyziwI/
	AEf42YUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t7sHV-0000000Cwh4-3Rrn;
	Mon, 04 Nov 2024 08:17:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t7sHR-0000000CwfT-2rtl
	for barebox@lists.infradead.org;
	Mon, 04 Nov 2024 08:17:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t7sHN-00022C-Go; Mon, 04 Nov 2024 09:17:41 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t7sHN-001wnO-14;
	Mon, 04 Nov 2024 09:17:41 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t7sHN-00GFun-0s;
	Mon, 04 Nov 2024 09:17:41 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20241030-handoff-data-v1-0-4403e0c62c2a@pengutronix.de>
References: <20241030-handoff-data-v1-0-4403e0c62c2a@pengutronix.de>
Message-Id: <173070826127.3874412.5710388646065011436.b4-ty@pengutronix.de>
Date: Mon, 04 Nov 2024 09:17:41 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241104_001745_756940_50208E00 
X-CRM114-Status: UNSURE (   7.11  )
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
Subject: Re: [PATCH 0/4] handoff-data: some update
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 30 Oct 2024 12:30:35 +0100, Sascha Hauer wrote:
> This series has some misc updates for the handoff-data support
> 
> 

Applied, thanks!

[1/4] handoff_data: add handoff_data_add_dt()
      https://git.pengutronix.de/cgit/barebox/commit/?id=f170930fed3d (link may not be stable)
[2/4] ARM: i.MX93: add destination argument to imx93_romapi_load_image()
      https://git.pengutronix.de/cgit/barebox/commit/?id=71989ce60fbb (link may not be stable)
[3/4] handoff-data: set flags of moved handoff data entry
      https://git.pengutronix.de/cgit/barebox/commit/?id=deb0ead21693 (link may not be stable)
[4/4] handoff-data: add protection against multiple invocation
      https://git.pengutronix.de/cgit/barebox/commit/?id=a4db866ab660 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



