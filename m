Delivery-date: Thu, 22 Aug 2024 12:52:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sh5R1-00CDqS-1R
	for lore@lore.pengutronix.de;
	Thu, 22 Aug 2024 12:52:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sh5R0-0005Km-Sz
	for lore@pengutronix.de; Thu, 22 Aug 2024 12:52:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rx2h7H5AWwkm+iHVwkKskcyp/tM9WVgDDSbhG78nN78=; b=gtg1RV/O5Q0S8eCUajfpF8LezW
	H1qmhw57Aetl0eIA/A1aSSdr318Fzcox8KEuGyfKGpFxwHmzZIHe/cZ5vG83pO30ftsM+Vk7hzKc9
	VjgPM/aF2i+a1f6JvoEYdAzwVs9kCStYg7g4RTVNB6ztUocobYUDsDj9FTlKb/WLS2n9jmd1gxsRA
	LfF3m0jPtxZtOoaegHr7WFcyBqQmY8llBl1LMzgd4lRGeN0NjO4UbipLmXt0kVYzcLZdYpfIiZvvB
	EbnmJ0eWLxXCty21QXAeD7pUxnYppwhmMIxyTlFluc6yWTAcxzHAVImRPxGmByJm8VlZ9HTHU7Ov/
	swLu9V3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sh5QL-0000000CUAJ-01H7;
	Thu, 22 Aug 2024 10:52:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sh5QH-0000000CU8y-1fFJ
	for barebox@lists.infradead.org;
	Thu, 22 Aug 2024 10:52:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sh5QE-0005Bg-BD; Thu, 22 Aug 2024 12:52:06 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sh5QD-002EL0-U9; Thu, 22 Aug 2024 12:52:05 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sh5QD-007nSZ-2o;
	Thu, 22 Aug 2024 12:52:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240815114455.2723000-1-a.fatoum@pengutronix.de>
References: <20240815114455.2723000-1-a.fatoum@pengutronix.de>
Message-Id: <172432392586.1858406.17385845509266242910.b4-ty@pengutronix.de>
Date: Thu, 22 Aug 2024 12:52:05 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240822_035209_466591_247E0192 
X-CRM114-Status: UNSURE (   8.64  )
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
Subject: Re: [PATCH v2] acpi: fix compilation for 32-bit
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 15 Aug 2024 13:44:55 +0200, Ahmad Fatoum wrote:
> Build test on x86 fails due to pointer cast and because of forcing the
> bigger alignment on the flexible array.
> 
> The problematic pointer cast is for the XSDT, which is 64-bit-only, so
> let's fix the cast and return an error if we somehow see an XSDT on
> 32-bit.
> 
> [...]

Applied, thanks!

[1/1] acpi: fix compilation for 32-bit
      https://git.pengutronix.de/cgit/barebox/commit/?id=cd20189cd18b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



