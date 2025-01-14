Delivery-date: Tue, 14 Jan 2025 07:48:31 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tXaj1-000up6-0T
	for lore@lore.pengutronix.de;
	Tue, 14 Jan 2025 07:48:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tXaj0-0006MC-KW
	for lore@pengutronix.de; Tue, 14 Jan 2025 07:48:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=A717Q/IM20Bmq86BOvq8LJefaqderAd/vu52hzK6eaY=; b=RFaNbNI5m3ZZZTJnDFw4sLta4I
	jcmJF395foSaf28dY1M9IEZOVyGC1rGiK1ChrwOYQPfjuevmNt1kF5lBqOQnp0DiDkVl0/zyC4lfM
	9DG8WzOPEbRV/GMnQ59jDtC+EN5BAtiqyvOG34gg9DgCPbZ0q3SPevUo6Gtu6sGpfYPUauoYjH17i
	ymAPwYFqeZtY+IwVD8qNdEGunuB4k1bPFB64F9E1q39LOcDPDPNsKEND5DN2LDoYDwcYbXZJKH49Q
	ffUhmcyzFfQ8FEwPJnfm8Wgph5I7YA6gnE1Tp6O2piaPJsU+MWcjKxDePPIetRg2NDjNblndbkUMi
	+3+rurwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tXaiR-00000007d4c-1RZA;
	Tue, 14 Jan 2025 06:47:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tXahi-00000007cy9-2Cd1
	for barebox@lists.infradead.org;
	Tue, 14 Jan 2025 06:47:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tXahh-0006EA-35; Tue, 14 Jan 2025 07:47:09 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tXahg-000OAb-1J;
	Tue, 14 Jan 2025 07:47:08 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tXahg-00BqPA-2i;
	Tue, 14 Jan 2025 07:47:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250112082113.313620-1-a.fatoum@pengutronix.de>
References: <20250112082113.313620-1-a.fatoum@pengutronix.de>
Message-Id: <173683722883.2822959.1104862777718845639.b4-ty@pengutronix.de>
Date: Tue, 14 Jan 2025 07:47:08 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250113_224710_564741_AC57C4DD 
X-CRM114-Status: UNSURE (   5.96  )
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
Subject: Re: [PATCH 1/3] fixup! usb: add static inline wrapper for
 of_usb_get_phy_mode()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Sun, 12 Jan 2025 09:21:11 +0100, Ahmad Fatoum wrote:
> Other callsites of this function were fixed, but one was missed,
> causing CI breakage.
> 
> 

Applied, thanks!

[1/3] fixup! usb: add static inline wrapper for of_usb_get_phy_mode()
      https://git.pengutronix.de/cgit/barebox/commit/?id=93a06b5203f8 (link may not be stable)
[2/3] fixup! ARM: ep93xx: delete unused drivers
      https://git.pengutronix.de/cgit/barebox/commit/?id=d81cc745e2d7 (link may not be stable)
[3/3] fixup! fs: replace FILE.size by f_inode.i_size
      https://git.pengutronix.de/cgit/barebox/commit/?id=87442cab747b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



