Delivery-date: Fri, 25 Apr 2025 07:41:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u8BoA-0058IQ-2p
	for lore@lore.pengutronix.de;
	Fri, 25 Apr 2025 07:41:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u8BoA-00055p-9O
	for lore@pengutronix.de; Fri, 25 Apr 2025 07:41:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iuX+/NTS3xUpbCdS+hdbSr0dMaKyGCVfAENOZGEBJ8U=; b=ftrrOcEKNjUlUDQhT0f/ks/Xnl
	XLZJaNZgVt3CjmldpIamnTrqOrHWP78Sr8l8LCm+JaHKpD/DDMRgI3ODimayHEI9JvK5lf0W2bxjN
	3U915pYgmSm5NnvP+RrL2f46gM4j2xGMYune2T4bcnDbUhuRqQfA86QCf+7KfdfTkkhoQtZSIoULS
	E+KfDAsA1bWlhqBc4EJpYpzPHj7zchttdLwtj3Kw/iq3xRgKj71COBPFeXMqEM3XSoal8EofxwuFk
	PbhXu5CMQaGqQ2KM26K+HDt/pkxlHF7Hh8TVc0m1gQToZqCoj7Vm0btHzAyMopuD+maOyg0fzQ4Gc
	3yFEF9Cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8Bne-0000000G04r-0WM7;
	Fri, 25 Apr 2025 05:40:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8Bnb-0000000G03W-1bkR
	for barebox@lists.infradead.org;
	Fri, 25 Apr 2025 05:40:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u8BnZ-0004vv-UE; Fri, 25 Apr 2025 07:40:29 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u8BnZ-001zmr-2N;
	Fri, 25 Apr 2025 07:40:29 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u8BnZ-002Nni-29;
	Fri, 25 Apr 2025 07:40:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250414062530.2731978-1-a.fatoum@pengutronix.de>
References: <20250414062530.2731978-1-a.fatoum@pengutronix.de>
Message-Id: <174555962966.567416.3841128420333067210.b4-ty@pengutronix.de>
Date: Fri, 25 Apr 2025 07:40:29 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250424_224031_424199_16262B6D 
X-CRM114-Status: UNSURE (   5.82  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] commands: devlookup: add support for cdev aliases
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 14 Apr 2025 08:25:29 +0200, Ahmad Fatoum wrote:
> To allow easier observability into the newly added cdev alias
> functionality, extend devlookup to be able to resolve them.
> 
> 

Applied, thanks!

[1/2] commands: devlookup: add support for cdev aliases
      https://git.pengutronix.de/cgit/barebox/commit/?id=b00cd7d3ceb7 (link may not be stable)
[2/2] common: bootdef: output resolution at info log level
      https://git.pengutronix.de/cgit/barebox/commit/?id=35d4ff56ee19 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



