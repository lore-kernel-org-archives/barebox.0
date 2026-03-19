Delivery-date: Thu, 19 Mar 2026 07:53:29 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w37G5-002XVc-1h
	for lore@lore.pengutronix.de;
	Thu, 19 Mar 2026 07:53:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w37G4-000433-UL
	for lore@pengutronix.de; Thu, 19 Mar 2026 07:53:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/Z/EWqVfaj1EJpcrefWUlEcO/pYmPP+AmUmBqaRIcP4=; b=e4q0Ihd91F1XHfBg8iP60ErN+P
	Su1GDhHPyCvW/mY72THQ6m6ZgsiK+JSiMqY/20WjLP1uCs+xlOym2dRf31Ds6qV7SQaRb8cZf3Kp/
	etyevt7Op2wh9q54LOsgoTOURZEMY4ZQ30lVWqRhcKCX66FWLDGxrImkIXceJG9Ksff/bxRlqXaN4
	r1qvBND5QuCVlQBdnUlzfNJNmB5eme36Fbz1Qqh7G2LtKzArPw8/4ZqyGYohj6Ag/ZU9UQdUHmBhn
	+Qv4FS6o9jqUkC+05Fe/3Qghq5JPnFe8QjJE9OetRvqliAqXDRlMONzc34re9AwTf5mT0ddXjxYNj
	jb7FGO7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w37Fg-0000000A4T9-3cJi;
	Thu, 19 Mar 2026 06:53:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w37Fe-0000000A4Sg-0P8c
	for barebox@lists.infradead.org;
	Thu, 19 Mar 2026 06:53:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w37Fc-0003yp-JW; Thu, 19 Mar 2026 07:53:00 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w37Fc-0011xt-0x;
	Thu, 19 Mar 2026 07:53:00 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w37Fc-000000077BC-0xUn;
	Thu, 19 Mar 2026 07:53:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Sascha Hauer <sascha@saschahauer.de>, 
 "Claude Opus 4.6" <noreply@anthropic.com>
In-Reply-To: <20260316-compressed-firmware-v1-0-d9712142881e@pengutronix.de>
References: <20260316-compressed-firmware-v1-0-d9712142881e@pengutronix.de>
Message-Id: <177390318022.1695473.1197444321467643055.b4-ty@pengutronix.de>
Date: Thu, 19 Mar 2026 07:53:00 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260318_235302_160757_DDD2D7DC 
X-CRM114-Status: GOOD (  10.77  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/9] Firmware: support compressing firmware files
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 16 Mar 2026 18:21:13 +0100, Sascha Hauer wrote:
> TF-A and OP-TEE can reach significant sizes nowadays and are currently
> uncompressed in the PBL. This series supports including them in compressed
> form in the PBL. To accomplish this we introduce a new macro
> get_builtin_firmware_compressed() which returns the compressed firmware
> image. This can be decompressed afterwards with fwobj_uncompress().
> There are always both the compressed and uncompressed images generated,
> so the code can decide which one to use. This series switches over the
> Rockchip TF-A and OP-TEE binaries to use the compressed variants.
> 
> [...]

Applied, thanks!

[1/9] ARM: socfpga: Drop unnecessary select USE_COMPRESSED_DTB
      https://git.pengutronix.de/cgit/barebox/commit/?id=a80e7e667bb3 (link may not be stable)
[2/9] ARM: radxa-rock5: Use compressed DTB
      https://git.pengutronix.de/cgit/barebox/commit/?id=39a49ed80f85 (link may not be stable)
[3/9] ARM: Rockchip: Simplify retrieval of SoC specific addresses
      https://git.pengutronix.de/cgit/barebox/commit/?id=01df55fc7f52 (link may not be stable)
[4/9] firmware: Move firmware assembly generation to scripts/gen-fw-s
      https://git.pengutronix.de/cgit/barebox/commit/?id=1e01e95f56e1 (link may not be stable)
[5/9] firmware: Use struct fwobj for get_builtin_firmware APIs
      https://git.pengutronix.de/cgit/barebox/commit/?id=8fd5c3f501fe (link may not be stable)
[6/9] firmware: Add compressed firmware symbols for PBL
      https://git.pengutronix.de/cgit/barebox/commit/?id=29697c7543b6 (link may not be stable)
[7/9] firmware: Add fwobj_uncompress() for decompressing firmware in PBL
      https://git.pengutronix.de/cgit/barebox/commit/?id=b7f40c12d509 (link may not be stable)
[8/9] ARM: Rockchip: Use compressed OP-TEE binary
      https://git.pengutronix.de/cgit/barebox/commit/?id=a5abd4b6f7f4 (link may not be stable)
[9/9] ARM: Rockchip: Use compressed TF-A binary
      https://git.pengutronix.de/cgit/barebox/commit/?id=8968135d1634 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



