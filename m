Delivery-date: Tue, 30 Sep 2025 07:57:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v3TMu-002g2L-3B
	for lore@lore.pengutronix.de;
	Tue, 30 Sep 2025 07:57:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v3TMu-0006K8-Fn
	for lore@pengutronix.de; Tue, 30 Sep 2025 07:57:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oPDF1lUCuhe6q1AdLOAOXw9+WEN2jcstg8cJE+yADmk=; b=d4YQVq1sdSfkwlVrAkiyDqn3HA
	yNYfHTyZzqZMy1BqKYpi4vjGhVFaIfujfU2AWBsfj6sHHNJ9V2/DxKI/hkTomjWXV3anis/tZbnoE
	wrAbm5hY1kbsO+FJyFU/nRRy16dI5FaB5PtKsh9ER7zFpaYDd4JM9E1VYZqOHs1xP7vuSYrcl9dk8
	f1Q7x7NefZ4uuv1pPPrY0ezpkIFwv/9bYLlRrJZbhZDJdf/+K+TWxwBUoRk2K1FHoJMiHpXXFqOVM
	R+y+sXm+7jV+wUsNA9f4XPSidrm7J0FzeLXQGLPSLtSdSx0uLKhA5d3lS9Pyq4lwUMMjxZqkl8b2F
	cSp25g2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3TMU-00000004KOo-25rc;
	Tue, 30 Sep 2025 05:57:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3TMS-00000004KOK-3ZMP
	for barebox@lists.infradead.org;
	Tue, 30 Sep 2025 05:57:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v3TMR-0006As-Fd; Tue, 30 Sep 2025 07:57:15 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v3TMR-001CG6-0w;
	Tue, 30 Sep 2025 07:57:15 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v3TMR-0000000DlwM-0xgt;
	Tue, 30 Sep 2025 07:57:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: chalianis1@gmail.com
Cc: barebox@lists.infradead.org
In-Reply-To: <20250930000932.490152-1-chalianis1@gmail.com>
References: <20250930000932.490152-1-chalianis1@gmail.com>
Message-Id: <175921183522.3282527.12059126673222376209.b4-ty@pengutronix.de>
Date: Tue, 30 Sep 2025 07:57:15 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250929_225716_892458_20C51FEF 
X-CRM114-Status: UNSURE (   4.68  )
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
Subject: Re: [PATCH] video: efi-gop: remove dependency to x86.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 29 Sep 2025 20:09:32 -0400, chalianis1@gmail.com wrote:
> 


Applied, thanks!

[1/1] video: efi-gop: remove dependency to x86.
      https://git.pengutronix.de/cgit/barebox/commit/?id=6671f9accc5f (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



