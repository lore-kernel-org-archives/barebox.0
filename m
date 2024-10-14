Delivery-date: Mon, 14 Oct 2024 14:53:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0KZp-004GAV-19
	for lore@lore.pengutronix.de;
	Mon, 14 Oct 2024 14:53:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0KZo-0006o5-QE
	for lore@pengutronix.de; Mon, 14 Oct 2024 14:53:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=m4azmRpnCQwKMrvL78a2E604SdaE8yLiXDpMPdFp8FY=; b=VdgpVPjgFQKOCMd5KIiVDPPzTz
	kYWfAN2bKA/g1PfWTyxYtvY8wD5vvUw2R0rwI5ZC7N+45mrxc4xpPF5dR7UL+9HYZ9XO3nD3WWf5u
	PMzgtkhMxYsX3DOTYIDQSAeBdlsgKQLTb0cBrgac8CXRLwAv+cbyB8sKjT+RiBwVi+DGed0YzhP1o
	YVdoiq9lxnXN6EFHKXWC+qzuI3QYFP9xPtUYWsw/Cz7dVK45q5NdBMrFZykn0oEtDnEd9hO3lfTKO
	2mk3MdS7qqU+bbW0e7Ptd1K25dXdHttyJRE/66+9Ndkcbx2R5zj4qKd9USgVAOvKcdaNUeRns1x0/
	kNGKnheA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0KZA-000000059NY-3u9I;
	Mon, 14 Oct 2024 12:52:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0J1U-00000004sAl-1JI6
	for barebox@lists.infradead.org;
	Mon, 14 Oct 2024 11:14:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0J1T-0006qc-7d; Mon, 14 Oct 2024 13:13:59 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0J1S-001mDF-MX; Mon, 14 Oct 2024 13:13:58 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t0J1S-00Fjzm-26;
	Mon, 14 Oct 2024 13:13:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Mohamed Sawy <mohamedsawy1022@gmail.com>
In-Reply-To: <20241011201818.42338-1-mohamedsawy1022@gmail.com>
References: <20241011201818.42338-1-mohamedsawy1022@gmail.com>
Message-Id: <172890443865.3751653.3173473569733709030.b4-ty@pengutronix.de>
Date: Mon, 14 Oct 2024 13:13:58 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_041400_431631_887D3F12 
X-CRM114-Status: UNSURE (   8.02  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] sandbox: defconfig: activate
 CONFIG_CONSOLE_ACTIVATE_ALL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 11 Oct 2024 23:18:18 +0300, Mohamed Sawy wrote:
> The default CONSOLE_ACTIVATE value set in common/Kconfig is
> CONSOLE_ACTIVATE_ALL_FALLBACK.
> 
> Which adds an error when there's no explicit activation for a specific
> console, that is important for real hardware as it may write barebox log
> to external devices that don't expect it.
> 
> [...]

Applied, thanks!

[1/1] sandbox: defconfig: activate CONFIG_CONSOLE_ACTIVATE_ALL
      https://git.pengutronix.de/cgit/barebox/commit/?id=e395b09d30c8 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



