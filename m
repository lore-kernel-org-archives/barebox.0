Delivery-date: Wed, 28 May 2025 18:28:42 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKJdy-001FMx-2y
	for lore@lore.pengutronix.de;
	Wed, 28 May 2025 18:28:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKJdx-0001eG-Gu
	for lore@pengutronix.de; Wed, 28 May 2025 18:28:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/WUeXhvL0A52PAgQInoGlqsQLhE0IJV+++wGtDmUB54=; b=AgHN7mQCeZNR5vjiFzqWjdzk6v
	RzE97EuAgeSxa/cbPpW3+tUWyrHcQWn57E2O17AU+Lp4yLA4HaA4OsP37ukXNmysCpW5Y9+gM8aj6
	XVMg1w7+2rYvuEffiREnaWOeLpg0yARBcbND/fHBOiKzNxsHAknOotonzGsn2kDn3+iQ3i2aI2MaU
	Jnudhlftgh6rg4dtAr2vkuCxuIrcyWHbH0J7U75ExfzRaGDzOEdjlGwgOontjPbJh+KMy+vX+ID9N
	J9RPAtrquzddUW/s2f8y4vijYiWZ2SgvfMQhE+8QWUe9jRonTr6QwB/i7qdEUCQYQdtuDSaE63ruL
	W9AD/v7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKJdK-0000000DeoQ-0mGP;
	Wed, 28 May 2025 16:28:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKIg7-0000000DYN1-38Ts
	for barebox@lists.infradead.org;
	Wed, 28 May 2025 15:26:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1uKIg6-0005n9-H1; Wed, 28 May 2025 17:26:50 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1uKIg6-000bxJ-14;
	Wed, 28 May 2025 17:26:50 +0200
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1uKIg6-00EXES-0k;
	Wed, 28 May 2025 17:26:50 +0200
Date: Wed, 28 May 2025 17:26:50 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@barebox.org>
Cc: barebox@lists.infradead.org
Message-ID: <20250528152650.qjditpuavl3rxd5m@pengutronix.de>
References: <20250528131411.935668-1-a.fatoum@barebox.org>
 <20250528131411.935668-4-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250528131411.935668-4-a.fatoum@barebox.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_082651_781558_DCFBDC67 
X-CRM114-Status: UNSURE (   7.58  )
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
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	SUBJECT_IN_BLACKLIST,SUBJECT_IN_BLOCKLIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 4/5] ARM: configs: enable deep probe for the most popular
 configs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 25-05-28, Ahmad Fatoum wrote:
> Now that all in-tree device trees should have a
> barebox,disable-deep-probe if they don't support deep probe, it should
> be safe to enable deep probe by default, so second stage boot on boards
> without board code can make use of deep probe by default.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>


