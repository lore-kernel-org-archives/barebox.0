Delivery-date: Mon, 01 Dec 2025 10:54:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQ0be-006mAQ-29
	for lore@lore.pengutronix.de;
	Mon, 01 Dec 2025 10:54:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQ0be-0002Gi-5G
	for lore@pengutronix.de; Mon, 01 Dec 2025 10:54:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vUa0erBiuToXjOdzhzwtmcN2kyittRShsE+CrjHtsE0=; b=4HLh3ZNyWbx2ItcJWtBXgAL418
	0gear9a53c62Ja7cm4LzyMhUpjIHOhfHbGH6sCTRjjilBk4PLhmh1LTS8hUIXtjGevu7w2oVi5kmN
	Md8n2CNA8cl1pV4iXSfeXnq/VGjgngddDvk4yuQsb45OTdr0qUL46mrbz3xsq8LWoxXBFO1dYQ7SH
	8C64A8gPGjWNDyZCXJ3Xhw75FaULFNLo52GYA9dq+VzwyDeCGgNt54K19noroBFmArnbHog5F7VEt
	/0iwIb4qGoQTugzedtkQoPFWOkjGj/WESWi5207yYNLdPulK/8YXr3s6QhHQk6MJq+Po54jKi99pv
	enIfY9nA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ0b6-00000003FEE-1uUv;
	Mon, 01 Dec 2025 09:53:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ0b3-00000003FD0-3MUA
	for barebox@lists.infradead.org;
	Mon, 01 Dec 2025 09:53:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQ0b2-0002BQ-2I; Mon, 01 Dec 2025 10:53:28 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQ0b1-003QCx-2q;
	Mon, 01 Dec 2025 10:53:27 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQ0b1-00000000d1T-3QuE;
	Mon, 01 Dec 2025 10:53:27 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251128172107.35323-1-a.fatoum@pengutronix.de>
References: <20251128172107.35323-1-a.fatoum@pengutronix.de>
Message-Id: <176458280781.149980.16887235695632156635.b4-ty@pengutronix.de>
Date: Mon, 01 Dec 2025 10:53:27 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251201_015329_843841_7014CF74 
X-CRM114-Status: UNSURE (   6.54  )
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
Subject: Re: [PATCH 1/3] test: populate qemu_bin, even if missing features
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 28 Nov 2025 18:21:01 +0100, Ahmad Fatoum wrote:
> If the YAML lists no features, the lookup for qemu_bin is prematurely
> aborted, even for QEMU environment configs.
> 
> Split up the try/except clauses to fix this.
> 
> 

Applied, thanks!

[1/3] test: populate qemu_bin, even if missing features
      https://git.pengutronix.de/cgit/barebox/commit/?id=0f474e5b689f (link may not be stable)
[2/3] test: arm: qemu-sabrelite: drop -nographic
      https://git.pengutronix.de/cgit/barebox/commit/?id=3b728280cafe (link may not be stable)
[3/3] test: arm: qemu-raspi1ap the default multi_v5_v6_defconfig.yaml
      https://git.pengutronix.de/cgit/barebox/commit/?id=14319684cc39 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



