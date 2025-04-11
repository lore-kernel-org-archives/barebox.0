Delivery-date: Fri, 11 Apr 2025 09:31:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u38qv-00B9kN-1h
	for lore@lore.pengutronix.de;
	Fri, 11 Apr 2025 09:31:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u38qu-0002US-BT
	for lore@pengutronix.de; Fri, 11 Apr 2025 09:31:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4SNRNfXf+EVMrUfBvY6Hr0yufFUqXZPXrJMbQ663vbg=; b=ZF9/kkpqFeicZgfv1E8biJX+2W
	qBslsQ75iGMHlO7nr4jcT2FblkB1A3ptTNoaoLeP+RAXVLFIOsVK8IoQ187J9VH1n/bbdliHsl+vf
	ihgFEQUb1gGTfIU7rbC6aUPRh0sRZw75TxGQtEKvAmYJ2EipPotKoCqmjy2axgShwxYBTiAj/rgDV
	86GBU5rRGQunBr4oua2aKFoZn3ELY34uD31ymZvBP4GlmEh5oSZ6jEdWADqLxkcL45ayiDhFwVt1S
	ZuO9P5ABW3qZO4ghHBgutHLFXzm1TrvVoB4mke6Ikrw9fq7ycrnsn1MZBNIMUm6JTDuo9sOuc4LFf
	jB+3HTKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u38qL-0000000Cs4G-3PwW;
	Fri, 11 Apr 2025 07:30:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u38ho-0000000CqYN-2pLo
	for barebox@lists.infradead.org;
	Fri, 11 Apr 2025 07:21:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u38hn-0000HF-AV; Fri, 11 Apr 2025 09:21:39 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u38hn-004ObX-0S;
	Fri, 11 Apr 2025 09:21:39 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u38hn-006Ony-0F;
	Fri, 11 Apr 2025 09:21:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250410095958.2271159-1-a.fatoum@pengutronix.de>
References: <20250410095958.2271159-1-a.fatoum@pengutronix.de>
Message-Id: <174435609907.1525259.6782818480336084613.b4-ty@pengutronix.de>
Date: Fri, 11 Apr 2025 09:21:39 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250411_002140_714673_478043B0 
X-CRM114-Status: UNSURE (   5.55  )
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
Subject: Re: [PATCH] of: use pr_ family functions to log messages
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 10 Apr 2025 11:59:58 +0200, Ahmad Fatoum wrote:
> KERN_DEBUG and KERN_ERR don't work in barebox, replace them with pr_
> family of functions and while at it simplify hexdump.
> 
> 

Applied, thanks!

[1/1] of: use pr_ family functions to log messages
      https://git.pengutronix.de/cgit/barebox/commit/?id=8508f002b397 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



