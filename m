Delivery-date: Mon, 15 Dec 2025 08:30:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV32j-00Bf0K-1f
	for lore@lore.pengutronix.de;
	Mon, 15 Dec 2025 08:30:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV32j-0002Vz-0q
	for lore@pengutronix.de; Mon, 15 Dec 2025 08:30:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7QJzvtdklnhlvo7fgEwgjPQFhaAb3bT7i+EAiLvmRXw=; b=P/8pnzwwW085UDDqCDw+qo29n9
	ioo/+VU8j+Pnx5OH7RV+tCf7laMDlvdgea5zfy6gUoRMFZ5Lb6+m0+tGoArwdJqjOpf4CaiHCVxTN
	pi8eJuu7zIf6sL3/ThmTchjSQf7yJaIwPHRQJZloYT7lvGc29saeovdr/FR2FgQSRpruxps/djbhK
	1V9KpswfD2dmLo+b3ApcV1CEUyakLKXKwFIYX7FRdqi1XIobWd6g77Bhk1NaDagRKxkMklqwTPYIz
	oPixRvbU75hWJwxmgSa6Ms+wl8uWNuGQnpuELb6IY4LRam5TNSqb9xgzt+QVlbSfy5kMo4UpMupS0
	Yyh8xN5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV326-00000003CZj-2WhX;
	Mon, 15 Dec 2025 07:30:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV323-00000003CZF-0IZO
	for barebox@lists.infradead.org;
	Mon, 15 Dec 2025 07:30:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vV321-0002Pp-2a; Mon, 15 Dec 2025 08:30:09 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vV320-005k3Q-2s;
	Mon, 15 Dec 2025 08:30:08 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vV320-000000011yB-3Ttr;
	Mon, 15 Dec 2025 08:30:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251211193322.3932207-1-a.fatoum@pengutronix.de>
References: <20251211193322.3932207-1-a.fatoum@pengutronix.de>
Message-Id: <176578380882.245889.18135596780336940326.b4-ty@pengutronix.de>
Date: Mon, 15 Dec 2025 08:30:08 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251214_233012_056336_F0162ECD 
X-CRM114-Status: UNSURE (   7.04  )
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
Subject: Re: [PATCH master] net: fsl_enetc: fix missing dmb() symbols on
 non-ARM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 11 Dec 2025 20:33:21 +0100, Ahmad Fatoum wrote:
> The driver uses dmb(), which we only define on ARM systems, add a stub
> to allow the driver to build.
> 
> 

Applied, thanks!

[1/1] net: fsl_enetc: fix missing dmb() symbols on non-ARM
      https://git.pengutronix.de/cgit/barebox/commit/?id=6a82b6ce0836 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



