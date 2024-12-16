Delivery-date: Mon, 16 Dec 2024 08:25:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tN5Tl-008jVD-0h
	for lore@lore.pengutronix.de;
	Mon, 16 Dec 2024 08:25:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tN5Tl-0008Dh-5J
	for lore@pengutronix.de; Mon, 16 Dec 2024 08:25:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DVBYa/HzlK0v4I0HA84IJ6lxJy/kAXHLOUL00xk2iqI=; b=uCGqIUqTNnnHGL0L0EjCNVPZD7
	hyzplXqsMqejq3eDnTeXoMUN3saVld4PWOC/kKTd8Tv4TUlaV1X0uef3ySudDjvsbXnf3qbTjBCTA
	e+JraYh15KU3HrP1Zu/MEOsIYWTG2NO4hP3mXPij16uMmZ1OGRWfCr86++cnCW9WWDK+j8xPEC1zs
	FAe/0OEpCLxJmTDsUbwOIKdb2F6lpQ9aCZVXpwcMC1kcFqZVWPFzU0FYXzSc0J3awpu/+/66hQqr9
	3ExNf6cvqDzVqK0YCLd7g0K57bh8VMUyYlqbiK2XdE/tx1+6uwh7xo25QyPkNhIyM17unY+15cAyR
	yAztx2VQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tN5TK-00000009GxS-1drj;
	Mon, 16 Dec 2024 07:24:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tN5TH-00000009Gx7-2R8R
	for barebox@lists.infradead.org;
	Mon, 16 Dec 2024 07:24:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tN5TG-00088K-Ci; Mon, 16 Dec 2024 08:24:50 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tN5TF-003efu-1B;
	Mon, 16 Dec 2024 08:24:50 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tN5TG-0067VW-0F;
	Mon, 16 Dec 2024 08:24:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Lucas Stach <dev@lynxeye.de>
In-Reply-To: <20241213210015.357249-1-dev@lynxeye.de>
References: <20241213210015.357249-1-dev@lynxeye.de>
Message-Id: <173433389007.1458711.11059882433237337815.b4-ty@pengutronix.de>
Date: Mon, 16 Dec 2024 08:24:50 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241215_232451_645897_E13E231A 
X-CRM114-Status: UNSURE (   5.66  )
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
Subject: Re: [PATCH 1/9] ARM: zynq: add MMC aliases
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 13 Dec 2024 22:00:07 +0100, Lucas Stach wrote:
> The upstream DT doesn't include those, yet. Make sure
> MMC controllers end up with a deterministic numbering.
> 
> 

Applied, thanks!

[1/9] ARM: zynq: add MMC aliases
      https://git.pengutronix.de/cgit/barebox/commit/?id=2382be74da92 (link may not be stable)
[2/9] ARM: zynq: zed: define SDHCI bus-width
      https://git.pengutronix.de/cgit/barebox/commit/?id=b3e5d422c70a (link may not be stable)
[3/9] ARM: zynq: zed: guard board initcall
      https://git.pengutronix.de/cgit/barebox/commit/?id=d07d89b423fd (link may not be stable)
[4/9] ARM: zynq: zed: add environment
      https://git.pengutronix.de/cgit/barebox/commit/?id=745d8db539f8 (link may not be stable)
[5/9] ARM: zynq: zed: add Barebox update handler
      https://git.pengutronix.de/cgit/barebox/commit/?id=3a33d49dafe2 (link may not be stable)
[6/9] ARM: zynq: enable some useful things in defconfig
      https://git.pengutronix.de/cgit/barebox/commit/?id=8651c3304b9a (link may not be stable)
[7/9] ARM: zynq: zed: switch to entry function with stack
      https://git.pengutronix.de/cgit/barebox/commit/?id=5d9d50da97de (link may not be stable)
[8/9] ARM: zynq: call common arm lowlevel init from zynq lowlevel init
      https://git.pengutronix.de/cgit/barebox/commit/?id=33582abd435c (link may not be stable)
[9/9] ARM: zynq: zed: always relocate in PBL
      https://git.pengutronix.de/cgit/barebox/commit/?id=4cd14313773e (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



