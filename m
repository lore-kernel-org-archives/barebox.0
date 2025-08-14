Delivery-date: Thu, 14 Aug 2025 17:37:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uma1D-000YI8-1k
	for lore@lore.pengutronix.de;
	Thu, 14 Aug 2025 17:37:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uma1C-0004Pz-Dr
	for lore@pengutronix.de; Thu, 14 Aug 2025 17:37:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Qg87kMvTJx5sFjBychILSnS2r9hYbQTjTaduUKzKXkk=; b=3W3hvcoc3D/NjVEuHt0RX11dvR
	L2NdqAArWPwZerp82MvZlqGK7z7fy294xxtQerdG4VMbxKEpGTadoXRE7ZexmJhphkKdx2xOGGrAu
	D/2uyhU7dPrARx7z/PKyC/YyMgKqQ2Nf3KvXdqhXXIDG0CebtMlt80IfnH/rNt47IFyMMc+8sTanP
	Up5Y/IAxHS2JcZ8RjU0ANCKDsocDE/0C0OJL8CVlaiQBz+HlSJBty1EKc4h71boq6eBLUPOe+od07
	UO7obHh5DkEEcCB6wIGm1Tjat+ew0W8IXvO+jCyxV40KW2no+6X2WAioTQUNo53MuCZkY9CCYF1XU
	PEIkDuVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uma0n-0000000HTQE-3QdD;
	Thu, 14 Aug 2025 15:37:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umVb6-0000000Gfn2-48tv
	for barebox@lists.infradead.org;
	Thu, 14 Aug 2025 10:54:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1umVb5-0001Ih-SQ; Thu, 14 Aug 2025 12:54:15 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1umVb5-000Exx-1p;
	Thu, 14 Aug 2025 12:54:15 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1umVb5-004oDu-1e;
	Thu, 14 Aug 2025 12:54:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Tobias Waldekranz <tobias@waldekranz.com>
In-Reply-To: <20250813214103.254178-1-tobias@waldekranz.com>
References: <20250813214103.254178-1-tobias@waldekranz.com>
Message-Id: <175516885550.1146363.747612611676027235.b4-ty@pengutronix.de>
Date: Thu, 14 Aug 2025 12:54:15 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250814_035417_035598_244B01A3 
X-CRM114-Status: UNSURE (   9.14  )
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
Subject: Re: [PATCH] efi: fix probing of EFI devices with parents
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 13 Aug 2025 23:40:45 +0200, Tobias Waldekranz wrote:
> The refactor in the referenced commit sends in the match function as
> the context data - instead of the handle we are looking for.
> 
> This meant that efi_find_device() always returned NULL, leading to all
> EFI devices with parent handles not being probed.
> 
> Fix this by sending in the handle instead.
> 
> [...]

Applied, thanks!

[1/1] efi: fix probing of EFI devices with parents
      https://git.pengutronix.de/cgit/barebox/commit/?id=ec9e3a0a0356 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



