Delivery-date: Thu, 18 Dec 2025 09:31:19 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vW9Pr-00ClT5-2v
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 09:31:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vW9Pr-0004QU-DH
	for lore@pengutronix.de; Thu, 18 Dec 2025 09:31:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5FsjYXsEYmK0b5JOHGkY2RNMfZst7jqVy86244uTrJs=; b=i3GgPDWLTkFuaLZCLER0bQOwEI
	XMcyGoGL4qlgkaDNIwFwtU0X8iIj+T5VW0DTnR9X0z2rsIOJ+ZObU7FwCrE7bIJ5F98cp7wyb+6Vf
	+G4vg85hmIM9J6sjPVW2EOaurE38zNiD0EmIxUIAnxjpjrotTAF74r5EaKpWXrHldimV08v9xcPVZ
	8LC4uHfFcXeoDv8lzpYlO/cHxsF9qSdJFYwtV+QQKDfvgnHuoDjJX51VkOo73ddvsLGI/HlHmmQRf
	ZfAPLCFcXB8CMe99VKFfWhgFPQA32/l9Yy4TX4mx2IzgcsI+zl+LL27Gj1OXhDHVU2iGCwV0dfIz7
	3K1PWkwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vW9PO-000000083nu-0q7m;
	Thu, 18 Dec 2025 08:30:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vW9PL-000000083nX-3izY
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 08:30:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vW9PK-0004Le-1q; Thu, 18 Dec 2025 09:30:46 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vW9PJ-006FNT-2n;
	Thu, 18 Dec 2025 09:30:45 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vW9PJ-00000007K4X-3Olj;
	Thu, 18 Dec 2025 09:30:45 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251215082442.1977789-1-a.fatoum@pengutronix.de>
References: <20251215082442.1977789-1-a.fatoum@pengutronix.de>
Message-Id: <176604664580.1745394.16321159231438235011.b4-ty@pengutronix.de>
Date: Thu, 18 Dec 2025 09:30:45 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_003047_956185_27A84C51 
X-CRM114-Status: UNSURE (   6.82  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/3] startup: implement get_autoboot_state() helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 15 Dec 2025 09:24:37 +0100, Ahmad Fatoum wrote:
> This helper returns the last autoboot state used and can thus be used to
> detect if boot was aborted manually.
> 
> 

Applied, thanks!

[1/3] startup: implement get_autoboot_state() helper
      https://git.pengutronix.de/cgit/barebox/commit/?id=b84e55854716 (link may not be stable)
[2/3] of: implement of_get_machine_vendor()
      https://git.pengutronix.de/cgit/barebox/commit/?id=dfb6924fe009 (link may not be stable)
[3/3] lib: smbios: add support for populating SMBIOS table
      https://git.pengutronix.de/cgit/barebox/commit/?id=f4a270ae3197 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



