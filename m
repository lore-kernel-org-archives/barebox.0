Delivery-date: Wed, 15 Apr 2026 08:25:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCtgR-00CK9l-1E
	for lore@lore.pengutronix.de;
	Wed, 15 Apr 2026 08:25:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCtgQ-0004nJ-Rl
	for lore@pengutronix.de; Wed, 15 Apr 2026 08:25:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dQPqC4MsQEOUSsv9iLAEkKbrJZbkHh7EL7ogO21tbkg=; b=lDNPLZc4BjxT0JwfqHNZloB6yK
	tqDd1OF88QJ2W0HC3Of8S72H3J6n8NGCCMo3MXRz/J2dd6+4zZMv9kblUBdh29MlJO+OwF5nyV1TJ
	CyLLlUbm6S3dUurF7VdhfrGpvMkEzs0Vl22/BwGuHyIhRCasL1IGo/jkTBWN9hLyCFzoTCx4/R1bd
	aomUAb10LNnjvLiU4KPBhQGDWgsdT9oETPvwgiUhs6fiX5go3l0gKlWuv1QpJcRPhLJCLnV4NGrZ4
	Qm2mMbBn+6xtsC93NSFq/zZ42II7PbYkq03vwfBSFdYzX+pYWOeB+9lCSNtKwDWm/HYwdC3fnGxRh
	JtnU/h+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCtg4-00000000e1I-20Kp;
	Wed, 15 Apr 2026 06:24:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCtg1-00000000e0j-2HAp
	for barebox@lists.infradead.org;
	Wed, 15 Apr 2026 06:24:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCtg0-0004h2-4T; Wed, 15 Apr 2026 08:24:40 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCtfz-005Ss7-2V;
	Wed, 15 Apr 2026 08:24:39 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCtfz-0000000Dp45-30cN;
	Wed, 15 Apr 2026 08:24:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Anees Rehman <anees.r3hman@gmail.com>
In-Reply-To: <20260414165812.194029-1-anees.r3hman@gmail.com>
References: <20260414165812.194029-1-anees.r3hman@gmail.com>
Message-Id: <177623427970.3294550.8925237504260910748.b4-ty@pengutronix.de>
Date: Wed, 15 Apr 2026 08:24:39 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260414_232441_586245_049FDA99 
X-CRM114-Status: UNSURE (   7.52  )
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
Subject: Re: [PATCH] ARM: i.MX7: DDR size detection off-by-one in row_max
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 14 Apr 2026 18:58:12 +0200, Anees Rehman wrote:
> The imx7d_ddrc_sdram_size() function passes row_max=15 to
> imx_ddrc_sdram_size(), but the correct value is 16. This causes
> count_bits() to return one less than the actual number of row
> address bits, halving the detected memory size for any i.MX7D
> configuration with 14 row addresses (e.g. 4Gbit LPDDR2).
> 
> For example, with 14 row address pins (R0-R13), ADDRMAP6 disables
> row bits 14 and 15. count_bits(15, ...) returns 15-2=13 instead
> of the correct 14, resulting in 256MB detected instead of 512MB
> (single rank) or 512MB instead of 1GB (dual rank).
> 
> [...]

Applied, thanks!

[1/1] ARM: i.MX7: DDR size detection off-by-one in row_max
      https://git.pengutronix.de/cgit/barebox/commit/?id=bbc393110fa5 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



