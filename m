Delivery-date: Fri, 20 Jun 2025 14:04:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uSaUI-009Gvh-0r
	for lore@lore.pengutronix.de;
	Fri, 20 Jun 2025 14:04:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uSaUH-0002o4-O8
	for lore@pengutronix.de; Fri, 20 Jun 2025 14:04:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Daw+dTvg8t0FGG73kERRHnDVrn6Rj+3Ng25z7T6xgHQ=; b=Np8XntRvi1YU/zP0X9gjDTEFqz
	nGuDRLICngsfQzrE0iXdFPlEkg82Vd8beYfQTZbIu5nOYhCOt8jbVxQDvcZX0I9FQJqNrjPL3F42+
	zoqGhzeNinRWwgLq9Lw/xoCFXnHvNJ+5J32PLRDXaFbAymIm3LalyoyvAJHR3bV23nIfK5F43v2e5
	5BWvOx1qo4m4A7SRKwNKwipWOlgkQxnLbsgbrh3dACouUcUpOjhn/HRHjfZVIuaabOTz6WU3Bz4dR
	JxWr8MUcvqviD4LpZT9fkEFB0rD0KfjaAw+QR4RqvFa1aDApyTb6Fmtlz1fz70zU1IbxjHESykPmQ
	zWZueV3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSaTk-0000000FWo4-3S23;
	Fri, 20 Jun 2025 12:04:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSaCz-0000000FUsC-0rMX
	for barebox@lists.infradead.org;
	Fri, 20 Jun 2025 11:47:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uSaCy-0005iZ-0M; Fri, 20 Jun 2025 13:47:00 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uSaCx-004SEb-2f;
	Fri, 20 Jun 2025 13:46:59 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uSaCx-00D0qc-2Q;
	Fri, 20 Jun 2025 13:46:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Alexander Shiyan <eagle.alexander923@gmail.com>
In-Reply-To: <20250620080715.21194-1-eagle.alexander923@gmail.com>
References: <20250620080715.21194-1-eagle.alexander923@gmail.com>
Message-Id: <175042001974.3101457.12600747098198034118.b4-ty@pengutronix.de>
Date: Fri, 20 Jun 2025 13:46:59 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250620_044701_244611_21DBACB9 
X-CRM114-Status: UNSURE (   8.05  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: at91: sam9_smc: remove redundant SAMA5D2 check
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 20 Jun 2025 11:07:15 +0300, Alexander Shiyan wrote:
> The SAMA5D2 SoC uses a different SMC driver implementation (located in
> drivers/mfd/atmel-smc.c) and doesn't utilize this low-level sam9_smc
> driver. The check for AT91_SOC_SAMA5D2 in the read mode function is
> therefore redundant and can be safely removed.
> 
> This cleanup eliminates dead code and improves maintainability by
> removing an unused codepath. No functional changes are introduced.
> 
> [...]

Applied, thanks!

[1/1] ARM: at91: sam9_smc: remove redundant SAMA5D2 check
      https://git.pengutronix.de/cgit/barebox/commit/?id=cdde08be1a5a (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



