Delivery-date: Mon, 18 Aug 2025 15:53:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uo0JA-001u3O-0C
	for lore@lore.pengutronix.de;
	Mon, 18 Aug 2025 15:53:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uo0J8-0004xL-UX
	for lore@pengutronix.de; Mon, 18 Aug 2025 15:53:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=y3uD7Vibus+0QiOCywQt6+Iawg8VaSLKwM2QyHIKzno=; b=CCNohSbMgzAHsDbMpuWG2Jlk8h
	1J/UKwBEpN6lYnpJ9XH5ToD3OjOmPvEpbuiCrzvy2L0zZ248vZdf6e6wz5SIth2uy4f/JLgu4hxOT
	htkukzXGlAOORgjsHOzCAGnNlLcj7v0Ga/q8fhBAEQusbg3w6F2Nv4iiwkoQaIE/AZAsFvtjtLkyu
	PwPbXb9K6CUCJLqKUxV6a3mnytZPvBk4jYTA7moSa6A+0gJpRQIEZTy4q2tn5CXbjh0Xt385zw65R
	/UD6Jk9BUc86EA+bunZhlEGI6Yn5ts/Is2kvn1VocFmpFwSZ2GiWQGWMk6z6wj4zSanxV3eY5qpSx
	MgullUug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo0Ih-00000007fmY-46St;
	Mon, 18 Aug 2025 13:53:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo0If-00000007flp-2EoA
	for barebox@lists.infradead.org;
	Mon, 18 Aug 2025 13:53:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uo0Ie-0004q6-Ci; Mon, 18 Aug 2025 15:53:24 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uo0Ie-000ueo-0g;
	Mon, 18 Aug 2025 15:53:24 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uo0Ie-007vR7-0V;
	Mon, 18 Aug 2025 15:53:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20250814-k3-am62l-updates-v1-0-9934277d8757@pengutronix.de>
References: <20250814-k3-am62l-updates-v1-0-9934277d8757@pengutronix.de>
Message-Id: <175552520415.1889055.8827902297199093445.b4-ty@pengutronix.de>
Date: Mon, 18 Aug 2025 15:53:24 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250818_065325_577668_B00522C3 
X-CRM114-Status: UNSURE (   5.63  )
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
Subject: Re: [PATCH 0/6] ARM: k3: updates
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 14 Aug 2025 12:46:48 +0200, Sascha Hauer wrote:
> This contains assorted patches for the K3 architecture.
> 
> 

Applied, thanks!

[1/6] ARM: k3: AM62l3-EVM: add usb0
      https://git.pengutronix.de/cgit/barebox/commit/?id=3ceabf175729 (link may not be stable)
[2/6] ARM: k3: quote PEM files
      https://git.pengutronix.de/cgit/barebox/commit/?id=3ddea9d0d579 (link may not be stable)
[3/6] ARM: k3: allow to pass custom signing keys
      https://git.pengutronix.de/cgit/barebox/commit/?id=42bc9b2b9969 (link may not be stable)
[4/6] k3img: handle PKCS#11 uris
      https://git.pengutronix.de/cgit/barebox/commit/?id=1be17c393d64 (link may not be stable)
[5/6] ARM: K3: Update yaml files for AM62L
      https://git.pengutronix.de/cgit/barebox/commit/?id=a0cc7d80f1ac (link may not be stable)
[6/6] ARM: k3: use newer ti-linux-firmware
      https://git.pengutronix.de/cgit/barebox/commit/?id=e220bddf50e0 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



