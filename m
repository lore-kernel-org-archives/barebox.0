Delivery-date: Fri, 23 Jan 2026 08:49:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vjBvE-004PRa-0G
	for lore@lore.pengutronix.de;
	Fri, 23 Jan 2026 08:49:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vjBvD-0006s0-4P
	for lore@pengutronix.de; Fri, 23 Jan 2026 08:49:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ptz1gBxNCY0+e42ctcJa6ITU37eMxCDRc/cjHTtSr74=; b=EchL1vPKBIcHl6i0CRifj2k8Q/
	tjVXBQfAliTYJNBhNmQUqX6EtWCMV4aWwzllldkXDZD088dg4qEsYRrZEHnsn5byt+Hg4W6MuwH9h
	6Aa2jNFOnIikxo9C4UpCn4UDaTSTRtKhNUe+4FNOMHxZp5M9E4I5Em971OizL0UVgXUYMIBe8sV0h
	kwzXTOczu0lULxJfsRhrXBKDPSV/LXXaxd2lahAE2859KYhvxdXb9WmBESnLmmP/HVorjQJtZyeKz
	4dsexDj3oHRBbm+lx8fg4D2qBGiKf0k1Wjj2LGFPauiIvzubTLNulkhtItB5hSjyBNJyrALtQsKtd
	oQo8oiNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjBup-00000008Oja-083y;
	Fri, 23 Jan 2026 07:49:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjBum-00000008OjG-2wRd
	for barebox@lists.infradead.org;
	Fri, 23 Jan 2026 07:49:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vjBuk-0006nP-Ur; Fri, 23 Jan 2026 08:49:06 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vjBul-0023Ym-1Q;
	Fri, 23 Jan 2026 08:49:06 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vjBuk-0000000GDu8-2z9t;
	Fri, 23 Jan 2026 08:49:06 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: mfe@pengutronix.de
In-Reply-To: <20260121113234.1438699-1-a.fatoum@pengutronix.de>
References: <20260121113234.1438699-1-a.fatoum@pengutronix.de>
Message-Id: <176915454670.3866521.1477678798348745590.b4-ty@pengutronix.de>
Date: Fri, 23 Jan 2026 08:49:06 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260122_234908_742082_68EC40CE 
X-CRM114-Status: UNSURE (   7.82  )
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
Subject: Re: [PATCH 1/2] of: base: add new barebox,status property
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 21 Jan 2026 12:31:27 +0100, Ahmad Fatoum wrote:
> I am confronted with an occasional hang on the Radxa Rock 3A during
> PCI probe. The board has no PCI devices connected.
> 
> This hang doesn't happen in Linux and doesn't happen on the QNAP
> TS433-eU, which is also RK3568, but actually has PCIe devices, which are
> probed normally.
> 
> [...]

Applied, thanks!

[1/2] of: base: add new barebox,status property
      https://git.pengutronix.de/cgit/barebox/commit/?id=d1ac890ff659 (link may not be stable)
[2/2] arm: dts: rk356x: rock3a: disable pcie3x2
      https://git.pengutronix.de/cgit/barebox/commit/?id=d7a3233b795f (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



