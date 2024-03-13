Delivery-date: Wed, 13 Mar 2024 12:39:30 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkMxG-004KeG-2F
	for lore@lore.pengutronix.de;
	Wed, 13 Mar 2024 12:39:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkMxG-0002Ep-3P
	for lore@pengutronix.de; Wed, 13 Mar 2024 12:39:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=q8M6iMFTPLCPKL1SZ2LaCFWdQVAd7AAIcvevDreQ8jg=; b=1poYjdtunAGl5CzOdoeXQF3MgE
	xjSptfv8kiDqY0UviLtAMnb4aJmoKNiBltln0FlbrFq7WO5lAn7Ppzz9ytv8e9T7phcT5FASvGS27
	UTtpmPDmEPGNBmcAH+sVo/4syCruOXKZqEgDXkzb0GpMK32RF7/fS52i+6uu7siQvzZeq1fL+YWqD
	7Wx5lvnAQYybA3BqCiSStHH6rA7GN8yEHPis6MlZviP8cjSXka8CcZ7xEo+IBsUujl/c5PG8+DB81
	Vc9fYPD6DvCZABfQrIh3n+jC6S/kqQIYv3cxzScjRReB4OOSOeMSV2SS82ePHSW74jzQbmJcXGop+
	PkiyITpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkMwr-00000009wWU-2ikq;
	Wed, 13 Mar 2024 11:39:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkMwn-00000009wVd-04n8
	for barebox@lists.infradead.org;
	Wed, 13 Mar 2024 11:39:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rkMwl-0001mk-Pj; Wed, 13 Mar 2024 12:38:59 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rkMwl-0066WQ-DV; Wed, 13 Mar 2024 12:38:59 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rkMwl-009fqQ-1A;
	Wed, 13 Mar 2024 12:38:59 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240313110704.1095554-1-a.fatoum@pengutronix.de>
References: <20240313110704.1095554-1-a.fatoum@pengutronix.de>
Message-Id: <171032993935.2305680.16569032205885215915.b4-ty@pengutronix.de>
Date: Wed, 13 Mar 2024 12:38:59 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240313_043901_429064_1A18BCAF 
X-CRM114-Status: UNSURE (   7.53  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 0/7] net: replace global NetRxPackets arrays with
 per-interface allocation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 13 Mar 2024 12:06:57 +0100, Ahmad Fatoum wrote:
> Drivers using NetRxPackets can't be combined into the same barebox build
> without clobbering each other when receiving packets. Even having the
> same driver twice would lead to issues.
> 
> We certainly don't want to encourage new network drivers to use this
> global array, so let's just get rid of it.
> 
> [...]

Applied, thanks!

[1/7] net: add net_alloc_packets helper
      https://git.pengutronix.de/cgit/barebox/commit/?id=73cb4117e235 (link may not be stable)
[2/7] net: ep93xx: replace global NetRxPackets with per-interface allocation
      https://git.pengutronix.de/cgit/barebox/commit/?id=33d0bce33443 (link may not be stable)
[3/7] net: enc28j60: replace global NetRxPackets with per-interface allocation
      https://git.pengutronix.de/cgit/barebox/commit/?id=01e3e40961fd (link may not be stable)
[4/7] net: gianfar: replace global NetRxPackets with per-interface allocation
      https://git.pengutronix.de/cgit/barebox/commit/?id=18e518e7e4d5 (link may not be stable)
[5/7] net: ethoc: replace global NetRxPackets with per-interface allocation
      https://git.pengutronix.de/cgit/barebox/commit/?id=41b8dc7a59d9 (link may not be stable)
[6/7] net: cpsw: replace global NetRxPackets with per-interface allocation
      https://git.pengutronix.de/cgit/barebox/commit/?id=cbb8be478429 (link may not be stable)
[7/7] net: retire global NetRxPackets arrays
      https://git.pengutronix.de/cgit/barebox/commit/?id=d417b8b372b3 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



