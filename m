Delivery-date: Fri, 26 Sep 2025 13:37:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v26ly-001JXi-01
	for lore@lore.pengutronix.de;
	Fri, 26 Sep 2025 13:37:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v26lx-0000Mj-Gj
	for lore@pengutronix.de; Fri, 26 Sep 2025 13:37:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7h47LdPUwi4seLUIZuzX9703/C3JC5ku9mRGqauVe60=; b=SuwRc63mkDFbLmtkCESuvBmQH/
	98ceBQnD3fjGYcZaE4j/dZT79Gl6rJSN0Ce48frZtsSbgvFueljcd2KtRfesTXEantbr75oGDy71E
	SypE+0lsaKcJ6oG4oI3EUowwH+fS91/t9f5hHb2NBZMbsZNrVaIBA/GZOi6h20g3hvp0NtBC/fdud
	rET6tELQ+2tnXzXDXuoYzS05vkc0U3jE/Xa5D/AN7RAMYaZto7kmLAgkI5uOCt56A4VBDVA6j52CN
	ybsJ48EiT8j216dhsEG+e9whcUgTq33h0gqPk5ubajB/JCh/trw1GFo0jzTR8lgT69ayOBMrYMhE6
	TFcykCew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v26lX-00000000qDj-2jSM;
	Fri, 26 Sep 2025 11:37:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v26lV-00000000qC8-2ZWv
	for barebox@lists.infradead.org;
	Fri, 26 Sep 2025 11:37:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v26lT-0000HQ-QU; Fri, 26 Sep 2025 13:37:27 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v26lT-000aEI-23;
	Fri, 26 Sep 2025 13:37:27 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v26lT-0000000D0uX-2PFC;
	Fri, 26 Sep 2025 13:37:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Jonas Rebmann <jre@pengutronix.de>
In-Reply-To: <20250926090102.915685-1-a.fatoum@pengutronix.de>
References: <20250926090102.915685-1-a.fatoum@pengutronix.de>
Message-Id: <175888664757.3101746.1407679379458740553.b4-ty@pengutronix.de>
Date: Fri, 26 Sep 2025 13:37:27 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250926_043729_658247_D399A488 
X-CRM114-Status: UNSURE (   7.62  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH] common: binfmt: replace generic ENOENT message with
 "Command not found"
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 26 Sep 2025 11:01:00 +0200, Ahmad Fatoum wrote:
> A message like
> 
>   tlv: No such file or directory
> 
> can mean either tlv command is missing or it returned -ENOENT.
> 
> Let's differentiate between these two situations, so the former becomes:
> 
> [...]

Applied, thanks!

[1/1] common: binfmt: replace generic ENOENT message with "Command not found"
      https://git.pengutronix.de/cgit/barebox/commit/?id=eb8063890544 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



