Delivery-date: Thu, 13 Mar 2025 13:16:57 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tshUf-00DYya-28
	for lore@lore.pengutronix.de;
	Thu, 13 Mar 2025 13:16:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tshUe-0001mw-Gv
	for lore@pengutronix.de; Thu, 13 Mar 2025 13:16:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7uVRBgx/dFxZ+6EfaN8b0J6Tk8dm2REOGMz3qD1wyE4=; b=ISPtMHdNCzindPYEVn9d3n3pOK
	8iWmFvq1x+dICkHBJ/quoGtYt2P/NF5Ywi4ALkanLWENCf/SRRlnkDQZzNjxuwPF3gim/cmcaE9gc
	7NUz7PM2bdZDObRaLk9pusXEBS7D3piBuCMsd/dpY9htK7x3GoRS+Hh3LMocnG7Br+dEBNUUIZ9gN
	EUAj6PQBqXK8ekBqNwExFbzGSEvjY5peU/jye+J/58B3692ulMJmrM6x26HIEpryC26jkiH/sWSYV
	cnfS3kLAOns/bv4wEi6rpVKB3hONX7Osfdhf35oF8857IscKysr0BFuJkVKBKkBp8d7NUgWMR7uT8
	qpGaaAmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tshUC-0000000BD5q-1gUj;
	Thu, 13 Mar 2025 12:16:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsh9M-0000000B8hX-0dU3
	for barebox@lists.infradead.org;
	Thu, 13 Mar 2025 11:54:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tsh9J-0006ea-8i; Thu, 13 Mar 2025 12:54:53 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tsh9J-005Wme-0E;
	Thu, 13 Mar 2025 12:54:53 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tsh9J-007Ah6-01;
	Thu, 13 Mar 2025 12:54:53 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250313072309.141338-1-a.fatoum@pengutronix.de>
References: <20250313072309.141338-1-a.fatoum@pengutronix.de>
Message-Id: <174186689300.1709307.16238066312382038254.b4-ty@pengutronix.de>
Date: Thu, 13 Mar 2025 12:54:53 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250313_045456_191608_08A1FB56 
X-CRM114-Status: UNSURE (   7.59  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] FIT: early exit if digest fails
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 13 Mar 2025 08:23:09 +0100, Ahmad Fatoum wrote:
> fit_digest will hash the list of images in the configuration, so
> fit_check_signature() can compare it against the signed hash.
> 
> So far, parse errors while computing the hash were ignored. This is not
> directly exploitable as the hash would be incomplete and fail the
> signature verification, but it makes the code more difficult to reason
> about.
> 
> [...]

Applied, thanks!

[1/1] FIT: early exit if digest fails
      https://git.pengutronix.de/cgit/barebox/commit/?id=a676705feac6 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



