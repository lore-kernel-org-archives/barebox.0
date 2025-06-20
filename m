Delivery-date: Fri, 20 Jun 2025 14:59:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uSbKq-009Hlf-2H
	for lore@lore.pengutronix.de;
	Fri, 20 Jun 2025 14:59:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uSbKq-0005sY-61
	for lore@pengutronix.de; Fri, 20 Jun 2025 14:59:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pupeMW9f/C3/uAt2WAldzYKwia1FLyt5xpHys5oWm3Q=; b=JkPdSXwo2EsA6m0piEY9Cdi7zj
	d552gbOkL/NzxSvwLlhADY8rOthr2taJ9W/G5K/aT7R4wLyT6bzebvEujQ4JXix2FVmmLSLdHQBJB
	QH0iXp15RhobYzS8v4wBE4kUw4ZGKCqdvkDdQ/wZJ1WUlZgexQCFDKoY3NcoKdbRw/ejkD6e/YA3y
	MtwlB4OdQypNpyJgOHyN3rtnIHouq5p8Js5mXHAObueNi4lcgvExbSfru494ttr3qJBtRPLaW/wXJ
	ag9/+JitiJwhzvbp121/031XKgKodYt9cnbkiZvRlhhKv3UKkkYwZ9+DkHdq1m6xmTLcT2s5Xq/zf
	nmBHyeeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSbKL-0000000FdLQ-3IUl;
	Fri, 20 Jun 2025 12:58:41 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSb8W-0000000FbDN-1XHA
	for barebox@bombadil.infradead.org;
	Fri, 20 Jun 2025 12:46:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=pupeMW9f/C3/uAt2WAldzYKwia1FLyt5xpHys5oWm3Q=; b=AwhQCSsfBhHSn6Hau/afusV3VK
	U2AfTP47DmMHkZMFiycRnTr+mDIU4IZTcUFey4aeltPGKUQXgM9k5o8YJ9ospGVX8+KqWxZpHKslH
	mWo1s5C37f/85DOnBCrrtGCKvBNY396+bTsK18kJDTJ1y9IJHd1xUJX8Q5G0c14AHAahKte+3BEUq
	1AybFCALQf3tbdz9PzxIGFXehp4VzpLVSssFeFF7Uxuxk6XrCTvX8TfKfJw9SVHImmymNwmjEqc/J
	1niOrXuMfIIYIADe7CxuUf2uUxTXCU5WyP+VA4m0uSqd3nHZaixvcUkrLELTBiEIAU2CoIu1Ueofn
	6+t4helw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSb8T-00000004jZp-3Bz7
	for barebox@lists.infradead.org;
	Fri, 20 Jun 2025 12:46:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uSb8S-0007yd-TN; Fri, 20 Jun 2025 14:46:24 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uSb8S-004So2-28;
	Fri, 20 Jun 2025 14:46:24 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uSb8S-00D3ns-1u;
	Fri, 20 Jun 2025 14:46:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20250618123727.2110575-1-s.hauer@pengutronix.de>
References: <20250618123727.2110575-1-s.hauer@pengutronix.de>
Message-Id: <175042358459.3112807.507690576974334605.b4-ty@pengutronix.de>
Date: Fri, 20 Jun 2025 14:46:24 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250620_134626_093374_90E1E87E 
X-CRM114-Status: UNSURE (   5.43  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] commands: sleep: add msleep support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 18 Jun 2025 14:37:27 +0200, Sascha Hauer wrote:
> Sometimes it's useful to delay execution for less than a second. Add
> support for msleep command which is implemented as an alias to the sleep
> command.
> 
> 

Applied, thanks!

[1/1] commands: sleep: add msleep support
      https://git.pengutronix.de/cgit/barebox/commit/?id=4ad6fe5fef76 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



