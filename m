Delivery-date: Fri, 14 Mar 2025 17:17:18 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tt7ip-00E4dr-0N
	for lore@lore.pengutronix.de;
	Fri, 14 Mar 2025 17:17:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tt7im-000619-MO
	for lore@pengutronix.de; Fri, 14 Mar 2025 17:17:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bAFblYkuAYiSar7MkwSnx1L+3E52PQ+n1IoenWbCHlc=; b=pkpiYXModFjZ01e6fTVrNAg+5W
	Vh5x8v0wcqehanN8gRM0ZMoqEEKf3hFIVSBMWL8ydmPNUwLlOeai+GLMpFuGMcqVNrR6FsViveUSW
	g4XvIErUx4NlGWQB7iT2VajQkQRvBaSC9xODqtH6xwvxr3Zk57r8RPV7Su7Fm06hiRoP/MqznJYUY
	Zul3P333rmOaXp1T/ulIE43Zbu4h5U0OD4U8nKbIYYs0Xmtvbo6III8w+npNhd5Xz53X/bAnbL9nH
	ouZ45NmayCvRCZ+V3VPBeJkT9y+4Amc8zPuxbyILNmrzP4SjYBANl1S8dfVTHFx7Hmb91UHwFXA57
	ES4/gTlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tt7iP-0000000Eimi-0Qf1;
	Fri, 14 Mar 2025 16:16:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tt7fK-0000000EhvO-3d6O
	for barebox@lists.infradead.org;
	Fri, 14 Mar 2025 16:13:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tt7fJ-0005Bp-Ms; Fri, 14 Mar 2025 17:13:41 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tt7fJ-005jRv-1e;
	Fri, 14 Mar 2025 17:13:41 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tt7fJ-00HITe-1R;
	Fri, 14 Mar 2025 17:13:41 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20250313095442.2812937-1-s.hauer@pengutronix.de>
References: <20250313095442.2812937-1-s.hauer@pengutronix.de>
Message-Id: <174196882144.4122563.6821951776974479558.b4-ty@pengutronix.de>
Date: Fri, 14 Mar 2025 17:13:41 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250314_091342_904586_104A1A51 
X-CRM114-Status: UNSURE (   6.29  )
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
Subject: Re: [PATCH 1/2] net: am65-cpsw-nuss: depends on DMA support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 13 Mar 2025 10:54:41 +0100, Sascha Hauer wrote:
> The am65-cpsw-nuss needs DMA functions provided by CONFIG_DMADEVICES, so
> we must depend on this option to avoid linker errors. As the am65-cpsw-nuss
> is useless without the DMA hardware driver depend on CONFIG_TI_K3_UDMA
> instead which implies CONFIG_DMADEVICES.
> 
> 

Applied, thanks!

[1/2] net: am65-cpsw-nuss: depends on DMA support
      https://git.pengutronix.de/cgit/barebox/commit/?id=3c8f3959650e (link may not be stable)
[2/2] ARM: multi_v8_defconfig: enable k3 drivers
      https://git.pengutronix.de/cgit/barebox/commit/?id=a7d2d53f3e2f (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



