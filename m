Delivery-date: Tue, 03 Feb 2026 11:50:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vnDzB-008NEs-08
	for lore@lore.pengutronix.de;
	Tue, 03 Feb 2026 11:50:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vnDzA-000639-2i
	for lore@pengutronix.de; Tue, 03 Feb 2026 11:50:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ayG7ogvyFavZIH8rI9KdZ5/09QBz7qQO1+5sPMUxc1M=; b=wG32HTk1DB2McH8AMEl6CnPa4i
	boJ6gXdK95HA6LKREUu1AzvzwUKJkyAklWhwew1Q1CSpjiDnuReSep86pxv0sefqujwvDvI7nwkWr
	6r57zWK4wNg6RTMT2oDPBr/LhkuWNjltSLh/WCzE4ob9OjTCWTSNklmdFioYzPb70aSOIo3/NuMJE
	1DNCpcA+ghkKsMG3jPYiyT+p2BJFOSvR/T1T5HntACIFTY3C4LRZ5SvbB7ocNJdSqaE5tuGAWuQcz
	NZr9CBU5k6eI0EXhGHWGnrssnH/kCZU7MslYccMiHfydIjHvGOQWXv1QcxIG6+e0Vyb8U5x66ENMG
	x5cDxtTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnDyj-00000006V9y-3Z5G;
	Tue, 03 Feb 2026 10:49:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnDyg-00000006V9a-3xzz
	for barebox@lists.infradead.org;
	Tue, 03 Feb 2026 10:49:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vnDyf-0005zR-Ag; Tue, 03 Feb 2026 11:49:49 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vnDyf-003tJ4-2Y;
	Tue, 03 Feb 2026 11:49:49 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vnDyf-00000005jS4-289k;
	Tue, 03 Feb 2026 11:49:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Jonas Rebmann <jre@pengutronix.de>
In-Reply-To: <20260130-tlveth-v2-1-895d3a4d0759@pengutronix.de>
References: <20260130-tlveth-v2-1-895d3a4d0759@pengutronix.de>
Message-Id: <177011578903.1366122.6710150247108791713.b4-ty@pengutronix.de>
Date: Tue, 03 Feb 2026 11:49:49 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260203_024951_009428_EFCA70C4 
X-CRM114-Status: UNSURE (   8.28  )
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
Subject: Re: [PATCH v2] common: tlv clarify the difference between mac list
 and sequence
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 30 Jan 2026 12:49:12 +0100, Jonas Rebmann wrote:
> The tlv_handle_eth_address (here 0x001) and tlv_handle_eth_address_seq
> (here 0x0012) correspond to the mac-list and mac-sequence formats
> respectively.
> 
> A single MAC address as well as a list of MAC-Addresses is to be
> generated using "mac-list" and handled by tlv_handle_eth_address, while
> -sequence/_seq is a special case of generating multiple sequential
> addresses.
> 
> [...]

Applied, thanks!

[1/1] common: tlv clarify the difference between mac list and sequence
      https://git.pengutronix.de/cgit/barebox/commit/?id=b30c78f61044 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



