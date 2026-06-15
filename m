Delivery-date: Mon, 15 Jun 2026 09:53:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wZ28Y-0063yv-0a
	for lore@lore.pengutronix.de;
	Mon, 15 Jun 2026 09:53:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wZ28X-0006IH-Jn
	for lore@pengutronix.de; Mon, 15 Jun 2026 09:53:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lKO9kT91xR+4zgCpliTlNUnVcu/Nu/dg1vpjlQJjEVg=; b=Bp/5wVUfUxgEOvSxoNkeWNlioR
	i9P25XA3mWvSZWCB4tvBqr3Ixncap86k4GIM57CLnRMYOke+IkRT+vlJjlAFHoIXvPhu0JUR5/Hyq
	OAR3dwpNO1+zhnJ2GNoCvm4wKDvvHTbYJyPmAVpH3tZyuHo81uwuveZi+5EcjNPaC/nImzvbLhMHV
	5dRnqDIgpELn1+HLbCvPZvmCM3L3JB6kBJvZSO8iP5fQU1RVuDlRwkdGhWBBDeCcQNEVNUQtYuTRX
	7kJsDeijRHIW/k1KxxEyJ7ZCZH5BZdmPeBpOaQ5uWx+9gnyj40GJt0NU3YRTMd+fTMSDZNw4QbI4k
	6n4UIIaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ27X-0000000Dot6-2R6s;
	Mon, 15 Jun 2026 07:52:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ27U-0000000Dosc-3BVM
	for barebox@lists.infradead.org;
	Mon, 15 Jun 2026 07:52:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wZ27T-00060L-7k; Mon, 15 Jun 2026 09:52:31 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wZ27T-002pKC-0b;
	Mon, 15 Jun 2026 09:52:31 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wZ27T-0000000D2MA-0WV2;
	Mon, 15 Jun 2026 09:52:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@barebox.org>, 
 BAREBOX <barebox@lists.infradead.org>, 
 Michael Tretter <m.tretter@pengutronix.de>
In-Reply-To: <20260610-documentation-devboot-v1-1-a6fc791dddb8@pengutronix.de>
References: <20260610-documentation-devboot-v1-1-a6fc791dddb8@pengutronix.de>
Message-Id: <178150995112.3107287.14329760567799418297.b4-ty@pengutronix.de>
Date: Mon, 15 Jun 2026 09:52:31 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260615_005232_802395_E67CFF54 
X-CRM114-Status: UNSURE (   6.53  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] Documentation: user: devboot: fix kernel target
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 10 Jun 2026 14:59:27 +0200, Michael Tretter wrote:
> The Linux kernel target for building the CPIO archive is called
> modules-cpio-pkg.
> 
> Fix the documentation to make it easier for the user.
> 
> 

Applied, thanks!

[1/1] Documentation: user: devboot: fix kernel target
      https://git.pengutronix.de/cgit/barebox/commit/?id=f9a107582a8f (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



