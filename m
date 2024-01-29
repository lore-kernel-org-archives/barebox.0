Delivery-date: Mon, 29 Jan 2024 11:19:56 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rUOk6-009s8V-30
	for lore@lore.pengutronix.de;
	Mon, 29 Jan 2024 11:19:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rUOk7-0000xO-Ki
	for lore@pengutronix.de; Mon, 29 Jan 2024 11:19:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xe/5aRdxMP9E5ehAm7ymeHpiJIPQo/T9e7pETeDWYAs=; b=GPHBRcI+f+bW5rqPQamCqCBqpZ
	mYjGlPgVkwCtI7slR2+gL8KkXFEZeORnIFsMwNdMOgd92NbfaTGundM05anMw9U0DSAiaXzWg6zsz
	s20EgHT6dL7pgipp1x/2s9sJq0zGzk5EH3LD+CGoyfsrTTXs9to65Rz9xMjEymXT7kiyaurIXWAxB
	8unqg+tOFUGIsnBIcrBRNciOiGgqQgLgYfuyQFj0P81HoDf0oV4zKa8DpQb+BVdXTttT7peF/xJE1
	YS5zEeW/vr32+6AMFGQJsanvdow52tPKTM/5s5E8nq/4wkSRZzqQlY0CdzA3eltEqFscpNLnDV2O0
	EGSEVTYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUOjX-0000000CCB7-1EFe;
	Mon, 29 Jan 2024 10:19:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUOjT-0000000CCAF-49Ov
	for barebox@lists.infradead.org;
	Mon, 29 Jan 2024 10:19:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rUOjQ-0000rQ-3h; Mon, 29 Jan 2024 11:19:12 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rUOjP-00398Q-NA; Mon, 29 Jan 2024 11:19:11 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rUOjP-001Qk3-27;
	Mon, 29 Jan 2024 11:19:11 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Marco Felsch <m.felsch@pengutronix.de>
In-Reply-To: <20240125133856.3792552-2-m.felsch@pengutronix.de>
References: <20240125133856.3792552-1-m.felsch@pengutronix.de>
 <20240125133856.3792552-2-m.felsch@pengutronix.de>
Message-Id: <170652355165.341066.16424936067167185155.b4-ty@pengutronix.de>
Date: Mon, 29 Jan 2024 11:19:11 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240129_021916_086759_795581C1 
X-CRM114-Status: UNSURE (   9.60  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: (subset) [PATCH v3 2/2] ARM: i.MX8M: convert the machine init
 to the soc driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 25 Jan 2024 14:38:56 +0100, Marco Felsch wrote:
> Convert the i.MX8M machine init code to the previously introduced soc
> framework. The soc driver was mostly copied from Linux with slightly
> adaptions for barebox. To the soc driver is called during the
> postcore_initcall to keep the level aligned with the previous imx_init().
> 
> The ocotp clock must keept running else the ARM-SMCCC stuck for calls
> where the TF-A tries to access the ocotp.
> 
> [...]

Applied, thanks!

[2/2] ARM: i.MX8M: convert the machine init to the soc driver
      https://git.pengutronix.de/cgit/barebox/commit/?id=d392a0aea330 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



