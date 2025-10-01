Delivery-date: Wed, 01 Oct 2025 10:30:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v3sE0-0034YY-0z
	for lore@lore.pengutronix.de;
	Wed, 01 Oct 2025 10:30:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v3sDz-0007MV-Pn
	for lore@pengutronix.de; Wed, 01 Oct 2025 10:30:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2Kh/EgJVtRP2MhkuaVpzBZZJ0UQtBdTtql6I8yIyiGY=; b=ZE4gdOqh1SxwB+MEGGUItgZNEM
	TitWwOM4tBVD8ume9+gZYt4p6wpf+WxEnls8L+Oz0/dBx8SWPawuqotyIjRn1d3NuAW3YEUPVlNsl
	71JKIkrf6gbAGd092QJs5IWF8pNxk4gPWcyqcS8ixjw0+gkF/yjQDXlFdDWpuKopH8yqNeBFg4nzE
	LD550u7q4UZzBQgxEAcB0Rm7VekU1y4WuInf0h0KdJyuvfnmKZ4u+j/HPgaaeEx9yssOO82OoUFhb
	aSReoWmhGWLGslrCOLzCEVaW8qVlJiUjO8/zBAwsGZCiBZOKD7oh4sb0FfoludN+ZqpaXc9UBlhb+
	k9fDEjsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3sDa-000000071WN-35VC;
	Wed, 01 Oct 2025 08:29:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3sDU-000000071Ta-0hde
	for barebox@lists.infradead.org;
	Wed, 01 Oct 2025 08:29:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v3sDS-00079D-6r; Wed, 01 Oct 2025 10:29:38 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v3sDR-001NnD-2q;
	Wed, 01 Oct 2025 10:29:37 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v3sDR-00000001mxc-3QhE;
	Wed, 01 Oct 2025 10:29:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>, 
 Michael Tretter <m.tretter@pengutronix.de>
In-Reply-To: <20250930134652.3035951-1-a.fatoum@pengutronix.de>
References: <20250930134652.3035951-1-a.fatoum@pengutronix.de>
Message-Id: <175930737781.426457.1144828037738635690.b4-ty@pengutronix.de>
Date: Wed, 01 Oct 2025 10:29:37 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251001_012940_221036_D3235921 
X-CRM114-Status: UNSURE (   7.98  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] scripts: rockchip: rkimage: reinstate OpenSSL
 1.1 compatibility
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 30 Sep 2025 15:46:43 +0200, Ahmad Fatoum wrote:
> The new signing support made the rkimage utility require OpenSSL 3.0.
> 
> We will keep that requirement for signing, but for usage without
> signing, let's skip the signing bits optional and report an error on
> attempting to sign.
> 
> 
> [...]

Applied, thanks!

[1/1] scripts: rockchip: rkimage: reinstate OpenSSL 1.1 compatibility
      https://git.pengutronix.de/cgit/barebox/commit/?id=fddbc93cb9fe (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



