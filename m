Delivery-date: Thu, 11 Jun 2026 17:56:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wXhm2-004kXc-07
	for lore@lore.pengutronix.de;
	Thu, 11 Jun 2026 17:56:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wXhm1-0002QV-E1
	for lore@pengutronix.de; Thu, 11 Jun 2026 17:56:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GjEiwBcd9hzAxzR0sFB5KOWJUqxd7NOVzmrF7m/Sdr0=; b=MvLfm1NVzLiIaA53o5WPBKijzd
	kOiV/zFbkjKNk/5ezcpICXuY/LcUzKlmBi9y+4Nm8GUVxLmvDOJhxrQdAnkgXaz1hD03kVrUQGrpJ
	Mr+vZaATW3qdunfUp8alsSiPAyQ4t6TX7+ZP7XgwbqTRjPJadn2oRAoX7lFD7YDPndeV+ndjH76TB
	yd7Llysa90QOnEJDYUS61sf9ekLvmj5qSkdpluu9mg2KUFyoDjosmh9/rVrLal1qQ38vy6rGx4lbN
	g/Q0PJ3JQ4m5B9bjyQb2UhblRNSAuY7eJTYsnBoTg1J4q3RB/6nf0vK2Jt5GPpWxO8PQoWIr9IvD3
	5OJrL+dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXhkf-00000009ikA-2nnN;
	Thu, 11 Jun 2026 15:55:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXhkd-00000009ijn-0Q9O
	for barebox@lists.infradead.org;
	Thu, 11 Jun 2026 15:55:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wXhka-0002Ca-OO; Thu, 11 Jun 2026 17:55:24 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wXhka-002EmR-2F;
	Thu, 11 Jun 2026 17:55:24 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wXhka-00000002yjA-2aib;
	Thu, 11 Jun 2026 17:55:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
Cc: Fabian Pflug <f.pflug@pengutronix.de>
In-Reply-To: <20260609160939.2032936-1-a.fatoum@barebox.org>
References: <20260609160939.2032936-1-a.fatoum@barebox.org>
Message-Id: <178119332461.710051.7326083802472753676.b4-ty@pengutronix.de>
Date: Thu, 11 Jun 2026 17:55:24 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260611_085527_141214_DA9F29DA 
X-CRM114-Status: UNSURE (   6.06  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH RFT] ARM: lib32: bootm: support booting EFI-stubbed
 kernels without EFI
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 09 Jun 2026 18:09:37 +0200, Ahmad Fatoum wrote:
> The bootm_efi_check_image callback implements the global.bootm.efi aware
> handling for EFI-stubbed kernels:
> 
>   - If no CONFIG_EFI_LOADER support is compiled in, boot normally
>   - If CONFIG_EFI_LOADER=y, consult global.bootm.efi
> 
> In absence of this callback, the filetype match is taken literally,
> which will just lead to EFI-stubbed kernel images being refused
> outright.
> 
> [...]

Applied, thanks!

[1/1] ARM: lib32: bootm: support booting EFI-stubbed kernels without EFI
      https://git.pengutronix.de/cgit/barebox/commit/?id=f06425b6aa3f (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



