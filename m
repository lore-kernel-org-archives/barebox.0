Delivery-date: Tue, 21 May 2024 13:07:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s9NLF-00C92P-0K
	for lore@lore.pengutronix.de;
	Tue, 21 May 2024 13:07:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s9NLE-0002lb-IT
	for lore@pengutronix.de; Tue, 21 May 2024 13:07:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nCIP/E/Le+Q9X0ypv03OZQ8cbAMJntlvH6d3cne/q64=; b=G6UWWRfwKPxAMtNMAHoawLDWU9
	X+/VF8RwcBFzQ9dBrt5izbEresT4UmV5v8fxA0FzKg0LFx4T6f31cvfPykNyNgne6/ez7Pn3Zklh4
	4HSQVh9e0NOZwAqGH3agpUejw6DJErVsozJBCZIScU0iqPIevuk5WIXXGJNxR+bAaZvmf8ekOOojy
	NOX7R+MWlelYYe0VA5/SwhTixlKyGCUQT3SNgCxNybw1g9tomsi6tcBoWknNcOWidYAqW7jzVjYee
	VcYL3fesJucaOY7oCZHAg3VfII5Eyv1bMyFCoRDylz4FI8eHbnhqHK1V/0JqodhE7oCKZPajW4UIq
	D+WxupiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9NKn-0000000HEdu-0yQN;
	Tue, 21 May 2024 11:07:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9NKk-0000000HEcd-1zEQ
	for barebox@lists.infradead.org;
	Tue, 21 May 2024 11:07:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s9NKi-0002bA-Ii; Tue, 21 May 2024 13:07:04 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s9NKi-002NZI-6E; Tue, 21 May 2024 13:07:04 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s9NKi-008c7x-0I;
	Tue, 21 May 2024 13:07:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Marco Felsch <m.felsch@pengutronix.de>
In-Reply-To: <20240521080617.1532603-1-m.felsch@pengutronix.de>
References: <20240521080617.1532603-1-m.felsch@pengutronix.de>
Message-Id: <171628962408.2052821.2091167701213737948.b4-ty@pengutronix.de>
Date: Tue, 21 May 2024 13:07:04 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240521_040706_801857_F96469B4 
X-CRM114-Status: UNSURE (   5.81  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] usbgadget: fix error code in common code base
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 21 May 2024 10:06:16 +0200, Marco Felsch wrote:
> Don't use command error codes in the common code base. Instead the
> commands should convert common error codes into command error codes.
> 
> 

Applied, thanks!

[1/2] usbgadget: fix error code in common code base
      https://git.pengutronix.de/cgit/barebox/commit/?id=41276fd07089 (link may not be stable)
[2/2] usbgadget: split usbgadget_register into prepare and register
      https://git.pengutronix.de/cgit/barebox/commit/?id=ef3c7fac172c (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



