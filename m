Delivery-date: Thu, 05 Jun 2025 13:58:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN9ET-00408m-1k
	for lore@lore.pengutronix.de;
	Thu, 05 Jun 2025 13:58:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN9ET-0006e6-0h
	for lore@pengutronix.de; Thu, 05 Jun 2025 13:58:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fNXTqT+wB0bCBofkfgJbKsM++9SLXkf/4JttsjBjUHw=; b=MzFuXrGElr8dfZkuPCdkKqlVGI
	Vi9Ee+lIepLVdP/YwE5t5fohB4CXKUOtC/Wt9RNEI5cfXNjV8uAaAV7T1Chfwx+4b8RRqGMOQ2GE9
	2W/nAzzp61uvbaBkacAxKtHa1U+KYonkZcBoxAMXy5/kpP0maKR8v4UMrGmyukOff1DXiomUG7qMR
	JemYfjDuRRSzLNweNkVyd5PC2bQ9WPm4i36QZKFddoCKZ/IHgOyCNDp76eBcR6sGcYbIEfgvryWMP
	HKGhn6cHPP4yXLV0UG8F06EkuPL9z522IyS0ag7NTlPcQXIZxvG1mhfOOyVPgcOO+mfILKZZgltEv
	ClN1is9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN9E5-0000000FQh1-0Ced;
	Thu, 05 Jun 2025 11:57:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN9Db-0000000FQfC-2EOE
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 11:57:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uN9Da-0005wZ-3n; Thu, 05 Jun 2025 13:57:10 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uN9DZ-001x3N-2z;
	Thu, 05 Jun 2025 13:57:09 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uN9DZ-0022Oo-2l;
	Thu, 05 Jun 2025 13:57:09 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250605112607.1970520-1-a.fatoum@pengutronix.de>
References: <20250605112607.1970520-1-a.fatoum@pengutronix.de>
Message-Id: <174912462985.485793.16146949639306740253.b4-ty@pengutronix.de>
Date: Thu, 05 Jun 2025 13:57:09 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_045711_572358_FC5FC00B 
X-CRM114-Status: UNSURE (   5.73  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] of: fdt: fix length comparison
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 05 Jun 2025 13:26:06 +0200, Ahmad Fatoum wrote:
> If haystack_len equals needle_len the following memcmp would overflow,
> because needle_len is incremented in the memcmp.
> 
> 

Applied, thanks!

[1/2] of: fdt: fix length comparison
      https://git.pengutronix.de/cgit/barebox/commit/?id=76f09774c553 (link may not be stable)
[2/2] of: fdt: verify length within bounds before using it
      https://git.pengutronix.de/cgit/barebox/commit/?id=d31119846cff (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



