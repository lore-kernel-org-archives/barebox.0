Delivery-date: Fri, 07 Mar 2025 09:01:37 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tqSeI-00AvXi-0x
	for lore@lore.pengutronix.de;
	Fri, 07 Mar 2025 09:01:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tqSeH-00064m-66
	for lore@pengutronix.de; Fri, 07 Mar 2025 09:01:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=P/QtQV926XH1bii6V+bml02dTPd4AibNeV7ngB3A6hU=; b=JL/glwP73/6/oJ/904bft6gG75
	CUKMD8m9XI+jP2Gc5JqXyC58RJ3GXxMgsddSgr2hyV9i0m7ouoWloLGf5IkMXsGyWf5KG/LvYDf+3
	eyKenWyHc+3NBMvaqEKi7MVEp3+XJlHNDRqHNnm+itZX/N8JxGC2Y0oHLdnlcZWROajICIq5x+AoV
	O3zAyt1uZzNToBCTLS39HH77aS/dPBF0V4OG878T1eyqxk7v4uwKAM7TFF7iREzSh8mLl7f7w+4sU
	ySYZqLH9b0gP9vKrQMCSTYI0864+GQzKhIwnMnK3YUTFi1yu6rWtdh2K3CloA841O1Tsu2RUromK+
	J5opqXTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tqSdr-0000000DUSd-3ff3;
	Fri, 07 Mar 2025 08:01:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqSdo-0000000DUS1-3Ij8
	for barebox@lists.infradead.org;
	Fri, 07 Mar 2025 08:01:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tqSdn-000604-Jk; Fri, 07 Mar 2025 09:01:07 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tqSdn-004Rwn-1I;
	Fri, 07 Mar 2025 09:01:07 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tqSdn-0045ME-15;
	Fri, 07 Mar 2025 09:01:07 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Bastian Krause <bst@pengutronix.de>
In-Reply-To: <20250305140000.1539572-1-bst@pengutronix.de>
References: <20250305140000.1539572-1-bst@pengutronix.de>
Message-Id: <174133446733.973881.10754802296815043103.b4-ty@pengutronix.de>
Date: Fri, 07 Mar 2025 09:01:07 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250307_000108_846960_4755EB4A 
X-CRM114-Status: UNSURE (   7.22  )
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
Subject: Re: [PATCH] ARM: i.MX9: tqma93xx: remove mach/imx/romapi.h include
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 05 Mar 2025 15:00:00 +0100, Bastian Krause wrote:
> dd26bc1d5a0 ("ARM: i.MX93: add destination argument to
> imx93_romapi_load_image()") added the imx93_romapi_load_image call to
> imx93_load_and_start_image_via_tfa and removed the call from
> board-specific lowlevel code. So drop the corresponding include as well.
> 
> 

Applied, thanks!

[1/1] ARM: i.MX9: tqma93xx: remove mach/imx/romapi.h include
      https://git.pengutronix.de/cgit/barebox/commit/?id=66b293c91527 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



