Delivery-date: Thu, 07 May 2026 12:40:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKw9e-001vyU-0u
	for lore@lore.pengutronix.de;
	Thu, 07 May 2026 12:40:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKw9X-0001ps-Qy
	for lore@pengutronix.de; Thu, 07 May 2026 12:40:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QfemgzRBvHGne7pwqescmk47VHBm+nkWxxPHrXZ3ab0=; b=CLtRXd8PdXk03F7UIlEmXGVWFG
	cDmWHwxNNSaLm5JeVJgi9jhPLVVspPo+IR1wwhm2yXauJ5m7CGCmrmBIztgcOl/s4qSDehxD8pS5l
	nHwmh0qci02tyZsGJ9/hLuxoD8Qth3igMvQY0zpaQknrmWC8neqNktyg+y7ac2wpmHq5rB0tLpOc+
	bnXWzKkQDhxDl95JsZwYJRbU9ZTrlcgNY1RViyEEs2FeD/a0hulr6H5De5sW2CJtHGa/vvY468uk5
	1N+mzfsNNM16QTJnFy2MXXhAH63A4A+zgB1dcMX84qdXfBBYzOnnTOwM7/od2WI8t3Xen5xeBUIu4
	fetyBk+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKw7z-00000003VlS-0FXP;
	Thu, 07 May 2026 10:38:47 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKw7x-00000003VjY-1ZGp
	for barebox@bombadil.infradead.org;
	Thu, 07 May 2026 10:38:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=QfemgzRBvHGne7pwqescmk47VHBm+nkWxxPHrXZ3ab0=; b=kBKoJXCI/Nf0dueoluWOEvoAeO
	jwZqn98nwAA7wBz0QDQNZdE4VWV5/O1ayEsCFAO172a0Uriwpqc/D9Uk47LwPkPAfLmUtc/JdrE1F
	aB3zLHkIZXQiTsjxsmlvfULylnfBoL/jMiqTTcoiS7723uZlFRZBHAOMNTje0C6+DfwT+YaLYlCMr
	vAn8JFveenoXsRwHU5O3ZVvyqHRC6hI18P+lju1m84sgaBCBHrlIfzuI8xThrmexlv32ReN6J8XdM
	jP7LGZvxXuMAyeKRQNSup5QVfkg1VsMSy/SqMVFkM+FXgxKdjoEaJQXJqx4DvYck+jiIAgwfclK/k
	G1ggMYbQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKw7s-00000003EQY-3aoq
	for barebox@lists.infradead.org;
	Thu, 07 May 2026 10:38:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wKw7k-0000TB-KJ; Thu, 07 May 2026 12:38:32 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wKw7j-000uD6-2E;
	Thu, 07 May 2026 12:38:32 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wKw7k-0000000BjIN-05p5;
	Thu, 07 May 2026 12:38:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20260503083115.2763213-1-a.fatoum@barebox.org>
References: <20260503083115.2763213-1-a.fatoum@barebox.org>
Message-Id: <177815031202.2795644.11602086737922641496.b4-ty@pengutronix.de>
Date: Thu, 07 May 2026 12:38:32 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260507_113842_030397_1372CBB4 
X-CRM114-Status: UNSURE (   7.28  )
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
Subject: Re: [PATCH 1/3] netconsole: terminate netcat background process on
 exit
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Sun, 03 May 2026 10:30:04 +0200, Ahmad Fatoum wrote:
> We ship no ncb utility and Debian doesn't package it, so the fallback
> path with netcat is what everyone is going to hit.
> 
> Drop the ncb branches and make sure to actually kill the netcat process
> and not only the subshell that spawned it.
> 
> 
> [...]

Applied, thanks!

[1/3] netconsole: terminate netcat background process on exit
      https://git.pengutronix.de/cgit/barebox/commit/?id=2a519746b769 (link may not be stable)
[2/3] netconsole: add support for binding to specific IP
      https://git.pengutronix.de/cgit/barebox/commit/?id=1af03d3d5044 (link may not be stable)
[3/3] test: py: implement --port-forward option
      https://git.pengutronix.de/cgit/barebox/commit/?id=26bf5faf4ed3 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



