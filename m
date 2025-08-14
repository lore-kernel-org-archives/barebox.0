Delivery-date: Thu, 14 Aug 2025 15:16:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umXou-000WFS-2u
	for lore@lore.pengutronix.de;
	Thu, 14 Aug 2025 15:16:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umXot-0008Gf-Ou
	for lore@pengutronix.de; Thu, 14 Aug 2025 15:16:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=R06Y3lvczGbtS8ZW/CFRWfBbVVhYqaRb+GBkSddgd4s=; b=FoIzVrcYueAlRfPyAiFNXD0Cok
	dxZJcaXLePEVhrLflctGv8JgRLaGPSB8QqBXCioxkYvPDkX4+ezdzXtHaEAinOLF8dCBqP4d8oLPA
	Zq52ne/e61Mr4dVj1Mr4+sKuqmMOGEnGqzZ1jS1vrfyXFMEDHiLS8riAPfbeikP04PZ7G9hV9LszL
	6oJpeXThwunnX3LKyi0itCvh046h1qFg69cLPMI9gQxK7J/BTBOz/aN6E4o+vgZDfDdfNZPRFvQbt
	uHFSheEQGXir3hk3dMj4MT+fTa9LY+wjQkuiKSCNQjTwiKbOEEuewyt0qqH/fm90mrYjnEpRSnwnz
	jeA5avBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umXoU-0000000H0DT-0FCM;
	Thu, 14 Aug 2025 13:16:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umVbN-0000000Gfpi-12Uf
	for barebox@lists.infradead.org;
	Thu, 14 Aug 2025 10:54:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1umVbL-0001K2-Ta; Thu, 14 Aug 2025 12:54:31 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1umVbL-000Ey3-2M;
	Thu, 14 Aug 2025 12:54:31 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1umVbL-004oFL-2A;
	Thu, 14 Aug 2025 12:54:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
Cc: Tobias Waldekranz <tobias@waldekranz.com>
In-Reply-To: <20250814071533.3917128-1-a.fatoum@barebox.org>
References: <20250814071533.3917128-1-a.fatoum@barebox.org>
Message-Id: <175516887166.1146450.15113475989685140376.b4-ty@pengutronix.de>
Date: Thu, 14 Aug 2025 12:54:31 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250814_035433_288337_DB2D6073 
X-CRM114-Status: UNSURE (   7.23  )
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
Subject: Re: [PATCH] test: py: add regression test for missing x86 EFI
 child devices
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 14 Aug 2025 09:15:33 +0200, Ahmad Fatoum wrote:
> A bug introduced by commit 4a5a9b58b568 ("drive: bus: make use of new
> bus_find_device helper") led to child devices of EFI handles not being
> probed.
> 
> Let's assert existence of some devices to ensure such issues don't slip
> through again. As handles don't have stable names, we don't hardcode
> any, but instead look for their virtual child devices that we expect.
> 
> [...]

Applied, thanks!

[1/1] test: py: add regression test for missing x86 EFI child devices
      https://git.pengutronix.de/cgit/barebox/commit/?id=6e3b27f11772 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



