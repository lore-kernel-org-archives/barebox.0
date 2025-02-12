Delivery-date: Wed, 12 Feb 2025 15:05:10 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tiDMU-001SA9-2U
	for lore@lore.pengutronix.de;
	Wed, 12 Feb 2025 15:05:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tiDMS-00006L-DR
	for lore@pengutronix.de; Wed, 12 Feb 2025 15:05:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nlinlRqICUq/smGZDQRR95EFHNLpthcKtyBXoZLuoq0=; b=uL0tg1LoyFcEvY14HkNgSGdD7N
	DNGcwJ9E1Tkem0M1y5W+3VQzm9ftUSSMQ37n154K6AYNUHLBqu9MAkki7yswNcVCKhJm5mUSFuzBd
	7EkinCRdeQr7FdP/ahO4r6Zh012H2KapkeF1gFvnOX1FQgsfThNsUExSfmS8VXKACsicxsKVq8TWv
	9/f423+RFp0uIFbnCGLObXMKo+Ma7STHgw/+nAhDAgmZPf+yZYEmLPedjeNawiza8OAlazKm05XC1
	qcbtCPaO14UlEczk8/McLs3BxkXCy+h75jw6PU4M/c5wDvO4venF/OZV+NWPimdH2G4lAncqF7JMA
	TIGQnG1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tiDLz-00000007b4p-18Kz;
	Wed, 12 Feb 2025 14:04:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tiDLv-00000007b2h-3SgQ
	for barebox@lists.infradead.org;
	Wed, 12 Feb 2025 14:04:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tiDLu-0008KD-F3; Wed, 12 Feb 2025 15:04:34 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tiDLu-000b17-0s;
	Wed, 12 Feb 2025 15:04:34 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tiDLu-00Adeq-0f;
	Wed, 12 Feb 2025 15:04:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250210121726.376306-1-a.fatoum@pengutronix.de>
References: <20250210121726.376306-1-a.fatoum@pengutronix.de>
Message-Id: <173936907420.2535717.10825431585212081852.b4-ty@pengutronix.de>
Date: Wed, 12 Feb 2025 15:04:34 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250212_060435_866223_07C187DE 
X-CRM114-Status: UNSURE (   6.67  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] SECURITY.md: add security policy
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 10 Feb 2025 13:17:26 +0100, Ahmad Fatoum wrote:
> We prefer coordinated vulnerability disclosures, so users can be provided
> patch instructions for security issues alongside the vulnerabilities report.
> 
> Github handles a top-level SECURITY.md file specially and shows it in
> the security tab. Unlike other documentation, this can't be written
> in reST, so write it in markdown and adopt this convention.
> 
> [...]

Applied, thanks!

[1/1] SECURITY.md: add security policy
      https://git.pengutronix.de/cgit/barebox/commit/?id=65a107b2e066 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



