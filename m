Delivery-date: Wed, 04 Mar 2026 08:39:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vxgpD-007uBX-2f
	for lore@lore.pengutronix.de;
	Wed, 04 Mar 2026 08:39:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vxgpE-0004bD-62
	for lore@pengutronix.de; Wed, 04 Mar 2026 08:39:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1zhEFwUj8kfiBm+dYwuHqbMBbf757qRxGvZE0N1jA+0=; b=SSt27OEXLM6JTgOd5nh3+fJJrR
	IngMgDnTRJI3/6E35lVpcPIr5C58Xf05vx2oowkfgIp5G/V3/WgKKpydBNBLwcRMMyd8GLFC/PYtD
	JcG64ko59uwgiBGrd5mqNnUwDWbIfDCHHGzUTlPU+0ej0McpKlJTHDqbhlUHzGt99LBtWwLmqrQe9
	ZPogKhLnZ0INnVjrhUS5E8KioW+20aK7OyM2nFodY0MG38zb1LvpTQ3T6eDHrWAVqwAg/ahBhoB35
	PSD/NLEtOUGufR/a1IV0ULljmvs9IpLWaJ/vlFIGX7ry5ERsAl1mldAyI6qb1TCUdvX/qCN1aHPPD
	v12R8tcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxgoo-0000000Gctz-1hG4;
	Wed, 04 Mar 2026 07:38:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxgok-0000000Gcsi-2YxG
	for barebox@lists.infradead.org;
	Wed, 04 Mar 2026 07:38:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vxgoj-0004PD-5n; Wed, 04 Mar 2026 08:38:49 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vxgoh-003g2S-24;
	Wed, 04 Mar 2026 08:38:48 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vxgoi-0000000GLCR-3rtA;
	Wed, 04 Mar 2026 08:38:48 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Claude <noreply@anthropic.com>
In-Reply-To: <20260225153057.3199724-1-s.hauer@pengutronix.de>
References: <20260225153057.3199724-1-s.hauer@pengutronix.de>
Message-Id: <177260992891.3894558.14441137325534719690.b4-ty@pengutronix.de>
Date: Wed, 04 Mar 2026 08:38:48 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260303_233850_656002_392B8E32 
X-CRM114-Status: UNSURE (   6.97  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] kbuild: make collect-policies lightweight with
 standalone Makefile.policy
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 25 Feb 2026 16:30:55 +0100, Sascha Hauer wrote:
> collect-policies previously depended on $(barebox-dirs), which requires
> `prepare scripts` and triggers unnecessary rebuilds. Repurpose
> Makefile.policy to support dual-mode operation: when invoked standalone
> via $(collect)=dir it bootstraps kbuild infrastructure and recurses
> through subdirectories (like Makefile.clean), and when included from
> Makefile.build it provides the existing build-time .sconfig rules.
> 
> [...]

Applied, thanks!

[1/2] kbuild: make collect-policies lightweight with standalone Makefile.policy
      https://git.pengutronix.de/cgit/barebox/commit/?id=2d871c52ddc7 (link may not be stable)
[2/2] kbuild: policy: support out-of-tree builds for external policy files
      https://git.pengutronix.de/cgit/barebox/commit/?id=c6d2e69c3e5a (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



