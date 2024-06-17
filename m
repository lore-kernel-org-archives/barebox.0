Delivery-date: Mon, 17 Jun 2024 08:49:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sJ6Ay-007Rrj-28
	for lore@lore.pengutronix.de;
	Mon, 17 Jun 2024 08:49:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sJ6Ay-0006rY-3X
	for lore@pengutronix.de; Mon, 17 Jun 2024 08:49:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=anluFF31IFTsJOGFQxSRUziSH96ulzDzMT8fbR6qoX0=; b=2TU7oqAtj6cZzr/j6MEQzWvrg+
	H3jQjEPSjKYXhXz35ta19Vdmom7lkx2T1GHgWaE6Te48t5Tnrf+0iXSVypmvWZSp1u7rumkZF+ux2
	SmXHZO8IvKb2E/eEQAd29mdiTnxMw4SntyQgZ6CHbYARs83OeRJN28Aj9bHWSTaduQwmEhhQdOQCe
	0QnPo8OInavWlQEwrIhx06ka6Llkie8XEazUHpcz9yxDGFcIba021w7qnE0mEOB4SMvowv56Etxu0
	ypztbyv6fbT/CgaxxnchC1BcoE534jDsib11xlVk1D8WZPbnDQz2jS+xSYAyGhtyU1cBdrzXXPpB5
	1c30B/iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJ6AF-00000009UPj-2oNX;
	Mon, 17 Jun 2024 06:48:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJ6AB-00000009UP9-2Ok0
	for barebox@lists.infradead.org;
	Mon, 17 Jun 2024 06:48:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sJ6A8-0006n4-6w; Mon, 17 Jun 2024 08:48:20 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sJ6A7-002uhv-Qa; Mon, 17 Jun 2024 08:48:19 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sJ6A7-0015TZ-2O;
	Mon, 17 Jun 2024 08:48:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Marco Felsch <m.felsch@pengutronix.de>
In-Reply-To: <20240613130659.165278-1-m.felsch@pengutronix.de>
References: <20240613130659.165278-1-m.felsch@pengutronix.de>
Message-Id: <171860689973.259338.5476710075653560755.b4-ty@pengutronix.de>
Date: Mon, 17 Jun 2024 08:48:19 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240616_234823_672038_4599C7EE 
X-CRM114-Status: UNSURE (   8.88  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 1/2] ARM: aarch64: align scr_el3 register setup with
 U-Boot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 13 Jun 2024 15:06:58 +0200, Marco Felsch wrote:
> Currently we don't honor the setup done by the BootROM. Fix this by
> reading the scr_el3 first and update the corresponding bits afterwards.
> 
> Furthermore also align the register settings:
>  - Remove the register with (RW) setup since this is done by the EL3
>    firmware (TF-A).
>  - Set IRQ/FIQ/EA bits to make it possible to handle early exceptions
>    within the PBL at EL3. Early exception handling requires platform
>    support since it involves exception table and DAIF handling.
> 
> [...]

Applied, thanks!

[1/2] ARM: aarch64: align scr_el3 register setup with U-Boot
      https://git.pengutronix.de/cgit/barebox/commit/?id=678a5248ec00 (link may not be stable)
[2/2] ARM: i.MX8M: add support to handle ROM SError ERR050350
      https://git.pengutronix.de/cgit/barebox/commit/?id=d50745ce72e0 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



