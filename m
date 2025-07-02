Delivery-date: Wed, 02 Jul 2025 08:14:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uWqjL-00DD5S-1z
	for lore@lore.pengutronix.de;
	Wed, 02 Jul 2025 08:14:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uWqjL-0004zm-2m
	for lore@pengutronix.de; Wed, 02 Jul 2025 08:14:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MZ/fO2x5ND6MxR2C56USHvz6MqO6acLZs+SbpkvKfYM=; b=a0jaqWvLAHgdN+d61rcR9d9+2K
	3ADF+JYEJyxpFlkIxgYBjZBcHkjBoQ3aaSVoiMPQ7NgpPdt18lqXZTWcasQUk+R3WZMqSipSW005z
	THIeR6ocOVWko7pGOJ0yWdCe1wtQcTL+IrybLiHA/1gB5hb2UZ5Qtqp5TA0ItJ9A/8rTPU0JnT0b+
	asgoXMOEtWhosmlm0RRETfBXgxCN7yj8vz9Gr+MzPxZMVgi8ZpfnNSdQYV4t46lzAtidHiQU9UTwL
	GyGIi22YFLgiXphQ3XPTmIspnyYAVmeMECROGgMN8nF3EXHyLDpkVxwsCzPStlJVjAkSlOwtQ2k5T
	VqbJLHPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWqif-00000007NO1-0gMA;
	Wed, 02 Jul 2025 06:13:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWqib-00000007NMb-3kTQ
	for barebox@lists.infradead.org;
	Wed, 02 Jul 2025 06:13:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uWqia-0004MC-4k; Wed, 02 Jul 2025 08:13:16 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uWqiZ-006OJL-34;
	Wed, 02 Jul 2025 08:13:15 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uWqiZ-00Fzch-2q;
	Wed, 02 Jul 2025 08:13:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Marco Felsch <m.felsch@pengutronix.de>
In-Reply-To: <20250626144527.416697-1-m.felsch@pengutronix.de>
References: <20250626144527.416697-1-m.felsch@pengutronix.de>
Message-Id: <175143679587.3811754.17434853053729142530.b4-ty@pengutronix.de>
Date: Wed, 02 Jul 2025 08:13:15 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250701_231317_936144_7F15EA07 
X-CRM114-Status: UNSURE (   7.95  )
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
Subject: Re: [PATCH v2 0/6] i.MX6Q TZASC and OP-TEE early helpers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 26 Jun 2025 16:45:21 +0200, Marco Felsch wrote:
> the series combines the previous separate send patches [1] and [2].
> 
> The problem
> -----------
> 
> Currently all upstream boards which do have OP-TEE support:
>  - TQMA6ULX [3],
>  - Webasto CCBV2 [4],
>  - i.MX8M* based boards [5],
> configure the TZASC (TZC-380) [6] region0 to secure+non-secure R/W
> access.
> 
> [...]

Applied, thanks!

[1/6] ARM: i.MX6QDL: add imxcfg helper to configure the TZASC1/2
      https://git.pengutronix.de/cgit/barebox/commit/?id=91676c7f402b (link may not be stable)
[2/6] ARM: i.MX6Q: add imx6_get_mmdc_sdram_size
      https://git.pengutronix.de/cgit/barebox/commit/?id=b026f6e83284 (link may not be stable)
[3/6] ARM: mach-imx: tzasc: add region configure helpers
      https://git.pengutronix.de/cgit/barebox/commit/?id=c1c7be3b9abc (link may not be stable)
[4/6] ARM: mach-imx: tzasc: add imx6q_tzc380_early_ns_region1()
      (no commit info)
[5/6] ARM: mach-imx: tzasc: add imx6q_tzc380_is_enabled
      (no commit info)
[6/6] ARM: optee-early: add mx6_start_optee_early helper
      https://git.pengutronix.de/cgit/barebox/commit/?id=5f233de5e090 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



