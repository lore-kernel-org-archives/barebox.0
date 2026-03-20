Delivery-date: Fri, 20 Mar 2026 08:09:31 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w3Tz9-002wdw-19
	for lore@lore.pengutronix.de;
	Fri, 20 Mar 2026 08:09:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w3Tz8-0007dv-RD
	for lore@pengutronix.de; Fri, 20 Mar 2026 08:09:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CgCCZ6G6eZU3UoxS22595mZLwV70TUeLVqgJhuQzMsk=; b=UXsWqVCAX062DvlzIzMaO1/wce
	63vIQKCVsJZ0kRUpCzTcIL/VRyqT6J1SMFHA/72MjY7yUqwlQtezL8DGsKZDmU36Tun+V5vG5KXaL
	KyDRQovG3poYe3IF7G8BgDlU1zNSbLOw/tiuVJqG71Yj2mbOHpdiqDAS5vPYzYwr4bQl3Tax6GF5A
	SK1cYYpoeqzPnmLuCQUyrUEBnaF5GqktJgHVjHN3MAB5B1ftPs0B82f2IWbEtllGepaCarir4UM4C
	J7UJwfuC44/pWlMNBX8UR8lAYd0VcduiCXu3vGcCAKRFxWRn5uMab3ERY/hPMwYhaahC03C8NU99O
	EZikw5jQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3Tyn-0000000CDHt-4BvH;
	Fri, 20 Mar 2026 07:09:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3Tyk-0000000CDHa-36RW
	for barebox@lists.infradead.org;
	Fri, 20 Mar 2026 07:09:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w3Tyj-0007Yh-3T; Fri, 20 Mar 2026 08:09:05 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w3Tyi-001CX8-2x;
	Fri, 20 Mar 2026 08:09:04 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w3Tyi-00000004z7d-3cdw;
	Fri, 20 Mar 2026 08:09:04 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20260319142055.3942960-1-s.hauer@pengutronix.de>
References: <20260319142055.3942960-1-s.hauer@pengutronix.de>
Message-Id: <177399054486.1186851.1549920509591482284.b4-ty@pengutronix.de>
Date: Fri, 20 Mar 2026 08:09:04 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260320_000906_805954_29EA6E6F 
X-CRM114-Status: UNSURE (   4.57  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: rockchip: atf: add missing newline in message
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 19 Mar 2026 15:20:55 +0100, Sascha Hauer wrote:
> 


Applied, thanks!

[1/1] ARM: rockchip: atf: add missing newline in message
      https://git.pengutronix.de/cgit/barebox/commit/?id=13cef7365625 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



