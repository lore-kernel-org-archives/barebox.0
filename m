Delivery-date: Wed, 08 Jan 2025 15:24:30 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVWyz-000lw1-1b
	for lore@lore.pengutronix.de;
	Wed, 08 Jan 2025 15:24:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVWyz-0007CB-FZ
	for lore@pengutronix.de; Wed, 08 Jan 2025 15:24:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=O57ZOTMdbfehDtwBOg5FpJ3I0/qfC60PQ/bCG+g3Pts=; b=D8pMZLZ8h298WC3dMFeowTSm4x
	lb4uR6fHd65lnLM3jd7wxxrG/hSyXCtHOTHqlexuftG1VoE/7E9eyxnwoGj86Hrv57lIBdO4WkzJs
	Li9r7Bt1ZIhLKWHFLdiRKMWEqxBwr0LHltZsWd2siqVQTbwxmwqbu4c3eJg+K4lW0W5ondV+FcAvp
	KttViRkHFJy9daVfsdp4RO1ORuNuAOz4hcuAPVDK+vRtdsaVSVxF9gS+Sehj6D5CLohCessGDOQ+E
	JEQVohaA6DzUkYgzVANva2zndIMGcnM52YHUv/68yQJJQ1kmTAxtL4J5UXiQ64l2sF2dciNj5RLqm
	w6JMd0rA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVWya-00000008mTE-1bsu;
	Wed, 08 Jan 2025 14:24:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVWyX-00000008mRq-2vlW
	for barebox@lists.infradead.org;
	Wed, 08 Jan 2025 14:24:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tVWyW-00071O-IV; Wed, 08 Jan 2025 15:24:00 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tVWyV-007XKO-1x;
	Wed, 08 Jan 2025 15:24:00 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tVWyW-000Itc-10;
	Wed, 08 Jan 2025 15:24:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 =?utf-8?q?Ulrich_=C3=96lmann?= <u.oelmann@pengutronix.de>
In-Reply-To: <20250108065715.3302712-1-u.oelmann@pengutronix.de>
References: <20250108065715.3302712-1-u.oelmann@pengutronix.de>
Message-Id: <173634624030.72619.4760738962867690602.b4-ty@pengutronix.de>
Date: Wed, 08 Jan 2025 15:24:00 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250108_062401_734919_FAFDB567 
X-CRM114-Status: UNSURE (   6.30  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] common: Kconfig: BOOTM_FITIMAGE_SIGNATURE: fix help
 text
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 08 Jan 2025 07:57:15 +0100, Ulrich Ölmann wrote:
> U-Boot rearranged its documentation in commit [1] and provides it rendered as
> HTML today, so adjust the reference accordingly. While at it be a little bit
> more precise regarding the usage of the public key.
> 
> [1] ad29e08b79fd ("doc: Bring in FIT signature files")
> 
> 
> [...]

Applied, thanks!

[1/1] common: Kconfig: BOOTM_FITIMAGE_SIGNATURE: fix help text
      https://git.pengutronix.de/cgit/barebox/commit/?id=be22d1b7a0f0 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



