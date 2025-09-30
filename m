Delivery-date: Tue, 30 Sep 2025 07:57:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v3TMP-002g1T-0X
	for lore@lore.pengutronix.de;
	Tue, 30 Sep 2025 07:57:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v3TMN-0006AZ-Vf
	for lore@pengutronix.de; Tue, 30 Sep 2025 07:57:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ble265uGQpWdF7A7ZJTX09qJK2pYfEkVpGVcEyuyD0s=; b=R4vDHNx/XuBttrd2pOafN+Anze
	5Afx6NzvYKJUqlZA5l8gkxCdzKU7t9ozDePvi9+UJ9JzANSFxDwfp3YOV4rjZVQJNSmO/Fsx7t0y7
	JJL9buFmuM/moMRPC4Zi2IlShznclpEeO72Xf3s092LzbFEdkLoA1LTCUw9Q/H7J6BrmwdHs2Zxl6
	YIvFFubrNNvaVwQ5XUkfZ/3lSAWVQSOh7Ei54azzbDu71t2swRuE5RdG3Uyo8eRhsqEDcVAxeQNSV
	PgS/uI9HbrtzMf/URe9tw41mbRIP9xiH4/unjMoZ4+TpGDMSZ3CI+9yKSb1S9g6Z49FKIiRGS6tQN
	K2I/dF6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3TLl-00000004KJR-0iMk;
	Tue, 30 Sep 2025 05:56:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3TLh-00000004KIv-2Kf6
	for barebox@lists.infradead.org;
	Tue, 30 Sep 2025 05:56:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v3TLf-00062c-JL; Tue, 30 Sep 2025 07:56:27 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v3TLf-001CFz-0u;
	Tue, 30 Sep 2025 07:56:27 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v3TLf-0000000Dlso-0wDJ;
	Tue, 30 Sep 2025 07:56:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Alexander Shiyan <eagle.alexander923@gmail.com>
In-Reply-To: <20250929135857.965181-1-eagle.alexander923@gmail.com>
References: <20250929135857.965181-1-eagle.alexander923@gmail.com>
Message-Id: <175921178721.3282313.3833896810735516933.b4-ty@pengutronix.de>
Date: Tue, 30 Sep 2025 07:56:27 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250929_225629_599750_C01FDAC8 
X-CRM114-Status: UNSURE (   8.67  )
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
Subject: Re: [PATCH 1/2] ARM: dts: rockchip: Set initial CPU frequencies
 for RK3588
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 29 Sep 2025 16:58:56 +0300, Alexander Shiyan wrote:
> During system boot, the cpufreq driver reports unlisted initial frequencies:
> cpufreq: cpufreq_policy_online: CPU0: Running at unlisted initial frequency: 900000 kHz, changing to: 1200000 kHz
> cpufreq: cpufreq_policy_online: CPU4: Running at unlisted initial frequency: 816000 kHz, changing to: 1200000 kHz
> cpufreq: cpufreq_policy_online: CPU6: Running at unlisted initial frequency: 816000 kHz, changing to: 1200000 kHz
> 
> Add assigned-clock-rates to the SCMI clock controller node in the device
> tree to establish proper initial frequencies.
> This ensures all CPU cores boot at valid frequencies that match the
> cpufreq policy, eliminating the warning messages and unnecessary
> frequency changes during initialization.
> 
> [...]

Applied, thanks!

[1/2] ARM: dts: rockchip: Set initial CPU frequencies for RK3588
      https://git.pengutronix.de/cgit/barebox/commit/?id=c5a8ecc95eb9 (link may not be stable)
[2/2] ARM: dts: rockchip: Set CPLL frequency for RK3588
      https://git.pengutronix.de/cgit/barebox/commit/?id=e5ca5163ac08 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



