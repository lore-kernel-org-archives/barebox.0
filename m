Delivery-date: Thu, 11 Jan 2024 18:56:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNzHp-00DG00-29
	for lore@lore.pengutronix.de;
	Thu, 11 Jan 2024 18:56:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNzHo-0006FD-SE
	for lore@pengutronix.de; Thu, 11 Jan 2024 18:56:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=p0zJahP80mnGo82Uv23qybXYrADzz2lgXcJK1fCND/8=; b=l0xjULtSBeMSKgIfu8+dPlnsVJ
	tfY6G7HsxdJDcIEZWMhg82aYoUdZZb7NWcufFEyvZmA1sJ/j4i1kUVGBp8+V02JbiOAzeIxeD205K
	J4iv7PYgb/infegRxhJS0vzAqIQAWGYzPzQG00c/QDYGq/ksjP89PC1fbXAe+ev2q5KG2hwyObE/6
	GgqVG1Nb79klwMPjA1VsaVpHRxqH4oX/Vn+DpbOiV8CzgaQYZSKsylehz1jvt8X9i4sWpx9lxRttA
	MaDtGTRKMqPMIkO0ikGsQKH1v9bSD9BkEUdzn48U9Al+EQXgKijcr1qUJW66O5Bu114mZwi5D2Ej4
	iD9/gUAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNzGX-000lx8-09;
	Thu, 11 Jan 2024 17:54:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNzGU-000lwW-0A
	for barebox@lists.infradead.org;
	Thu, 11 Jan 2024 17:54:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rNzGS-0005tb-1Q; Thu, 11 Jan 2024 18:54:48 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rNzGR-001yd7-LQ; Thu, 11 Jan 2024 18:54:47 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rNzGR-00HORH-1u;
	Thu, 11 Jan 2024 18:54:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240111161951.2276057-1-a.fatoum@pengutronix.de>
References: <20240111161951.2276057-1-a.fatoum@pengutronix.de>
Message-Id: <170499568759.4144632.14387514350481862510.b4-ty@pengutronix.de>
Date: Thu, 11 Jan 2024 18:54:47 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240111_095450_111414_78E6C2CE 
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: (subset) [PATCH] fixup! of: populate new
 device_d::dma_coherent attribute
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 11 Jan 2024 17:19:51 +0100, Ahmad Fatoum wrote:
> dev may be NULL, e.g. when
> 
>   dma_sync_single_for_cpu(NULL,
> 
> is called. Such instances are broken anyway, but we still have them,
> e.g. in Raspberry Pi code for mailbox, so add a NULL check.
> 
> [...]

Applied, thanks!

[1/1] fixup! of: populate new device_d::dma_coherent attribute
      https://git.pengutronix.de/cgit/barebox/commit/?id=ff451448213b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



