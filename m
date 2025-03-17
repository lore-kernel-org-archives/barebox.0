Delivery-date: Mon, 17 Mar 2025 13:27:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tu9ZN-000c0D-1N
	for lore@lore.pengutronix.de;
	Mon, 17 Mar 2025 13:27:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tu9ZM-00085q-B9
	for lore@pengutronix.de; Mon, 17 Mar 2025 13:27:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/g/LnpqviEWnoCNR4OAERWsNvrE56ElWuzXVYDDBYnk=; b=c07h8cK9z8Q5Dleo7U6/qdb6pS
	A9XgsDMGzplHuVVfaibJeaxVRpXJ6lLjWFiD/7kFiOcJFhCMsQIXEC6iumyzqGdstkHwH3xHdgN/K
	H3z83VsIWdDHmfWXgZS8C7p3mo4gKwlBTpOweBgTclffg5Q/ZqQQb7H//gW8WIMqU4BWhQrlNfJzI
	VfctgOYmwC0lyRubk60G2KJvkTL4uT0QB4LJ7PbWgpyc1/RKXERMUym95ypzNWH3y+NbfLPbdujMQ
	52hEkhHwPdKbVtMxH4AIOtVmMLM6lAeFShZiFHnxh2oWcG3qJLaSp62bIlzqX6EcrnkturCnvi4/d
	Q74Slb4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tu9Yj-00000002Z6T-0cvq;
	Mon, 17 Mar 2025 12:27:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tu9Yg-00000002Z5S-2SKK
	for barebox@lists.infradead.org;
	Mon, 17 Mar 2025 12:27:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tu9Yf-0007ui-2a; Mon, 17 Mar 2025 13:27:05 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tu9Ye-000FED-1W;
	Mon, 17 Mar 2025 13:27:04 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tu9Ye-00DLR4-2b;
	Mon, 17 Mar 2025 13:27:04 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250317113142.1862481-1-a.fatoum@pengutronix.de>
References: <20250317113142.1862481-1-a.fatoum@pengutronix.de>
Message-Id: <174221442479.3180549.5387539647769916844.b4-ty@pengutronix.de>
Date: Mon, 17 Mar 2025 13:27:04 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250317_052706_621716_9D07E435 
X-CRM114-Status: UNSURE (   5.59  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] net: am65-cpsw-nuss: fix out-of-bounds access
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 17 Mar 2025 12:31:42 +0100, Ahmad Fatoum wrote:
> GCC 12.2.0 complains about am65_cpsw_recv:
> 
> drivers/net/am65-cpsw-nuss.c: In function ‘am65_cpsw_recv’:
> drivers/net/am65-cpsw-nuss.c:495:30: warning: array subscript 9 is
>   above array bounds of ‘struct am65_cpsw_port[9]’ [-Warray-bounds]
>   495 |         port = &common->ports[port_id];
>       |                 ~~~~~~~~~~~~~^~~~~~~~~
> drivers/net/am65-cpsw-nuss.c:115:33: note: while referencing ‘ports’
>   115 |         struct am65_cpsw_port  ports[AM65_CPSW_CPSWNU_MAX_PORTS];
>       |                                 ^~~~~
> 
> [...]

Applied, thanks!

[1/1] net: am65-cpsw-nuss: fix out-of-bounds access
      https://git.pengutronix.de/cgit/barebox/commit/?id=9c9f95c45431 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



