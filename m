Delivery-date: Tue, 02 Dec 2025 07:53:29 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQKGP-0074wS-1X
	for lore@lore.pengutronix.de;
	Tue, 02 Dec 2025 07:53:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQKGO-0005x2-RP
	for lore@pengutronix.de; Tue, 02 Dec 2025 07:53:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=T65uW+yM4387E/fy9mIgUKcrOuN6apV8SUi6doGzDUM=; b=x5NnILNCP3lZP2SJqyplrOdRGa
	6xhfHDZAmyEL78+Hb2IvnX6MTrg9LqLkFZqF53TUR4um64TbDkxd7iFcggW38NaDC+fC6Zpy2JO8Y
	dAaE26Gy9Q2vrJxVWlxrwjeHsXX04NPeiF5lOU5FEaJliHNiPU3SdVPrGqvviA15KuIjvY6TaMEKy
	LO+/f6Hwnvmpi5jnWTUTl1r1HRK2SNEcgVFqN3oTKuusJYN4vdWm8KjO50hGApp0j9gikBfvUw9mX
	odHq6TZzEF2UipmJXLZzFiKotc/DL/vUXj51LXiCWfcgzi/IdjDut2e5NihpXijzSeDQqWk7NDQdx
	soodjKOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQKG1-00000004vcu-29y1;
	Tue, 02 Dec 2025 06:53:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQKFz-00000004vcK-0UL5
	for barebox@lists.infradead.org;
	Tue, 02 Dec 2025 06:53:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQKFx-0005rW-Jh; Tue, 02 Dec 2025 07:53:01 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQKFx-003ZQh-1N;
	Tue, 02 Dec 2025 07:53:01 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQKFx-00000002mof-1ZVO;
	Tue, 02 Dec 2025 07:53:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251201133832.3303902-1-a.fatoum@pengutronix.de>
References: <20251201133832.3303902-1-a.fatoum@pengutronix.de>
Message-Id: <176465838137.664263.15670631555140778146.b4-ty@pengutronix.de>
Date: Tue, 02 Dec 2025 07:53:01 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251201_225303_161539_55244470 
X-CRM114-Status: UNSURE (   8.73  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] pmdomain: fix NULL pointer derference with
 dummy power domains
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 01 Dec 2025 14:37:47 +0100, Ahmad Fatoum wrote:
> With the addition of commit 4aca68990d04 ("drivers: power: ignore power
> domains with barebox,allow-dummy"), it's possible for genpd to be NULL
> when there is no driver and the device tree node has barebox,allow-dummy
> in it.
> 
> Allow for this possibility in genpd_add_device and genpd_remove_device
> as well.
> 
> [...]

Applied, thanks!

[1/1] pmdomain: fix NULL pointer derference with dummy power domains
      https://git.pengutronix.de/cgit/barebox/commit/?id=87e50b97ca3c (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



