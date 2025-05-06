Delivery-date: Tue, 06 May 2025 09:23:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCCeJ-002irc-1z
	for lore@lore.pengutronix.de;
	Tue, 06 May 2025 09:23:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCCeJ-0003YH-3j
	for lore@pengutronix.de; Tue, 06 May 2025 09:23:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=K62DPk3CByQ848yl+egzPSCgwpXXKnXrUl0xylONZao=; b=f+Xo6pLESjKcby8VtPQl76bwHF
	0sy07514I3OFMVOBCYXYkHz7+OvCTNRbZSSlz2xQ143J/3MvMPiRS/ikHgJ8XqRXwYH/niJEQ/fF+
	tDCPkZYIjd9+kJ+zSzF0kUc8Tp2aDnvcLM2dBx0D7CO1jQeSGaIOHVpDMsQVWvKX6pKzgkIA14G3M
	p26v6BcFl7N2a55ckv++5faPVrgq8DugQXVIrTh3JCnXOxBaRhyfEKR5GBBMbd9Fdbgz7lSbEoWzw
	0pBhyuX9VZKVhqekqheM365Z8TYCop5Os3poja/dbPd3SefXao073MIfIBIA04ZQdUYhhYTTYythD
	Italuc2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCCds-0000000AuY4-13pA;
	Tue, 06 May 2025 07:23:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCCdp-0000000AuWz-2orc
	for barebox@lists.infradead.org;
	Tue, 06 May 2025 07:23:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uCCdo-0003M4-Am; Tue, 06 May 2025 09:23:00 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uCCdo-001MBB-0P;
	Tue, 06 May 2025 09:23:00 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uCCdo-00DNvp-0B;
	Tue, 06 May 2025 09:23:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250506062159.3091243-1-a.fatoum@pengutronix.de>
References: <20250506062159.3091243-1-a.fatoum@pengutronix.de>
Message-Id: <174651618005.3190234.7682618486978847603.b4-ty@pengutronix.de>
Date: Tue, 06 May 2025 09:23:00 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250506_002301_710624_C802FDCF 
X-CRM114-Status: UNSURE (   5.46  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] resource: replace wrong NULL check for
 dev_get_resource_by_name with IS_ERR
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 06 May 2025 08:21:59 +0200, Ahmad Fatoum wrote:
> On error, dev_get_resource_by_name returns an error pointer, but a NULL
> pointer was assumed instead erroneously.
> 
> 

Applied, thanks!

[1/1] resource: replace wrong NULL check for dev_get_resource_by_name with IS_ERR
      https://git.pengutronix.de/cgit/barebox/commit/?id=16f93a2397b2 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



