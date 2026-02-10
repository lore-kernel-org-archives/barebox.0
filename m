Delivery-date: Tue, 10 Feb 2026 10:08:52 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpjjo-0007Rs-0y
	for lore@lore.pengutronix.de;
	Tue, 10 Feb 2026 10:08:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpjjn-0000kd-OI
	for lore@pengutronix.de; Tue, 10 Feb 2026 10:08:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CZVlCx7LnTuyYX6ka3hT6V79VmFlh2iYIZIyu6e8ilE=; b=zgc5bhQVfNpqjpXk13eDVfMBNE
	p6oFYS32X4Op3tiMsI9H8Aqy03dEhMp06/m6IwexM/90bStLWACL95AdiofYdSGsjKsAHL6ta0wp8
	vJs2xGMNP1O3SYxWsVpy3mB9gMJtEEOs+L4Vi2soce8gGDf7p0+MmbruZGmbVbsrSOUNRK5QtW5jo
	Z9a5Iq+n9yC19NU+xXKj3qbJ1NmEg1CkF9/oeBJfFIqlKoJ+Y9dvkUeItm0CeOpYt8Qv0b8yQtU11
	oJmZauAAEWjRZjQ3+ZFTe5GUNXEAjsLJDhzaaqsiRYBE8VJKPc2rrz0UqnLLMeVg0iDGYyTdLEMPD
	pSkCRZbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpjiy-0000000GjBq-3t1l;
	Tue, 10 Feb 2026 09:08:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpjiv-0000000GjBI-3Q9l
	for barebox@lists.infradead.org;
	Tue, 10 Feb 2026 09:07:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vpjiu-0000db-9c; Tue, 10 Feb 2026 10:07:56 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vpjit-0003YZ-1W;
	Tue, 10 Feb 2026 10:07:55 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vpjiu-00000003cZC-02eD;
	Tue, 10 Feb 2026 10:07:56 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260209124202.2988120-1-a.fatoum@pengutronix.de>
References: <20260209124202.2988120-1-a.fatoum@pengutronix.de>
Message-Id: <177071447600.863219.3505073762448836248.b4-ty@pengutronix.de>
Date: Tue, 10 Feb 2026 10:07:56 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260210_010757_856561_EE40E203 
X-CRM114-Status: UNSURE (   5.91  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] test: arm: modules32_defconfig: increase memory size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 09 Feb 2026 13:41:53 +0100, Ahmad Fatoum wrote:
> While 128M is too much and leads to errors:
> 
>   pci_ecam_generic: relocation out of range, section 5 reloc 0
> 	sym 'dev_request_mem_resource'
> 
>   pci_ecam_generic: relocation out of range, section 12 reloc 0
> 	sym 'platform_driver_register'
> 
> [...]

Applied, thanks!

[1/1] test: arm: modules32_defconfig: increase memory size
      https://git.pengutronix.de/cgit/barebox/commit/?id=0214a388beb3 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



