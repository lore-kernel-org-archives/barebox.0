Delivery-date: Tue, 07 Jan 2025 08:48:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tV4Ka-000EGt-2K
	for lore@lore.pengutronix.de;
	Tue, 07 Jan 2025 08:48:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tV4KX-0007cW-0B
	for lore@pengutronix.de; Tue, 07 Jan 2025 08:48:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EyTBjNowH8p7OYLKsFEwK10tIVPd//mvWwitSCcEJl0=; b=FTFgLJJgHc3s2FmjC5Iejskpkl
	m2DvylQbb4zOoHitOK9nDuRliV5pkPaWh/zgOJ9QfyJwGTr3aonQ6pFC4bCLekMTKG+MFvy6DfXep
	r56oMA9m4xrzaa3Q0bgxqwh+oZ28ZoVLDdrDRfCLfTtPKH30C0Tj2/EYtZeXql1sPvzpKZeUpwRAZ
	dAmXM20QUrC0FKMfHA8yeISbmDOccd1If4v3GC79FbOc+EpeGWuFh2ocZoc2lU80a4FWAstQHPXzq
	Rsfn0Evo6yqsuq9WT3sdGHaUcui6Q3X0vWMWk3ASNlQ7Du5cyHYAPjRLb/QjNWXjoGkAy6CctQgmW
	SElkAWPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tV4Jv-00000003nX5-0G0r;
	Tue, 07 Jan 2025 07:48:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tV4Jp-00000003nVp-0mwy
	for barebox@lists.infradead.org;
	Tue, 07 Jan 2025 07:48:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tV4Jn-0007RV-Mp; Tue, 07 Jan 2025 08:48:03 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tV4Jm-007Iou-2R;
	Tue, 07 Jan 2025 08:48:03 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tV4Jn-00BmUx-1S;
	Tue, 07 Jan 2025 08:48:03 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250107064945.2785670-3-a.fatoum@pengutronix.de>
References: <20250107064945.2785670-1-a.fatoum@pengutronix.de>
 <20250107064945.2785670-3-a.fatoum@pengutronix.de>
Message-Id: <173623608344.2807529.3306202389602354834.b4-ty@pengutronix.de>
Date: Tue, 07 Jan 2025 08:48:03 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250106_234805_240485_10101CBC 
X-CRM114-Status: UNSURE (   8.62  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: (subset) [PATCH 2/2] sandbox: os: define referenced config
 symbols
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 07 Jan 2025 07:49:45 +0100, Ahmad Fatoum wrote:
> We built the sandbox/os/ subdirectory with different compiler flags
> to avoid barebox headers masking system provided headers.
> 
> This also means that CONFIG_ options aren't defined, but common.c
> already references two of them.
> 
> Define them manually in the Makefile for now to fix build breakage in
> some configurations.
> 
> [...]

Applied, thanks!

[2/2] sandbox: os: define referenced config symbols
      https://git.pengutronix.de/cgit/barebox/commit/?id=4f1f9844c939 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



