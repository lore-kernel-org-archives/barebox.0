Delivery-date: Mon, 23 Feb 2026 13:06:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuUi4-004pHp-3A
	for lore@lore.pengutronix.de;
	Mon, 23 Feb 2026 13:06:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuUi5-00036o-BG
	for lore@pengutronix.de; Mon, 23 Feb 2026 13:06:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/HR4BMu+AuztfPzPxd2nG1RPHftfACHDQ4xfzwMBOng=; b=SV46OWdLLTMSjWOvg82zyE/VGf
	NrrubvgxWW4qsCJVDUDC0Iomf0BSjUDccUtEYidSNjmFuDTaKrCo7Q2nnw4RtP87j1yy7AAlRUJT8
	yiDJsP73+geVBfAYIIfAaZHaxUz84xnR+idHbf3haGFhUKfGZ+m1b4PkPnlHjjJHU1f6b9EmJ+9Dh
	Q4y+e4wa6+n5vpvNj+KQvXSINeMdmPHiATYk+Jzbs0+2+zJhbRTSdcwixvpxCaKViYYgW6TYTi9h+
	0Bv6m6YP05COI6+N6J1ERuzjgoMIyNFpOJ6vSEIyXOCknLOqISoMUshU/+6DqwRCKNKi2VctVuuxZ
	9soaE90w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuUhk-00000000FjN-1Adc;
	Mon, 23 Feb 2026 12:06:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuUhh-00000000Fiq-0wZa
	for barebox@lists.infradead.org;
	Mon, 23 Feb 2026 12:06:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuUhf-00030M-Ox; Mon, 23 Feb 2026 13:06:19 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuUhe-002E0N-0k;
	Mon, 23 Feb 2026 13:06:19 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuUhf-00000002VdT-2Afd;
	Mon, 23 Feb 2026 13:06:19 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20260223-rockchip-optee-v1-0-723493320d42@pengutronix.de>
References: <20260223-rockchip-optee-v1-0-723493320d42@pengutronix.de>
Message-Id: <177184837951.597741.12356064733412798830.b4-ty@pengutronix.de>
Date: Mon, 23 Feb 2026 13:06:19 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_040621_268167_749C0AE3 
X-CRM114-Status: UNSURE (   6.74  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/2] ARM: Rockchip: RK3588: fix memory layout
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 23 Feb 2026 09:56:48 +0100, Sascha Hauer wrote:
> On Rockchip boards with 4GB and more of DRAM the memory we pass to
> barebox overlaps the internal register space which only didn't blow
> up because the affected area was not used by barebox. Fix this.
> 
> 

Applied, thanks!

[1/2] ARM: rockchip: dmc: use define instead of hardcoded value
      https://git.pengutronix.de/cgit/barebox/commit/?id=698768100e5d (link may not be stable)
[2/2] ARM: rockchip: atf: Fix memend
      https://git.pengutronix.de/cgit/barebox/commit/?id=502ef444770e (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



