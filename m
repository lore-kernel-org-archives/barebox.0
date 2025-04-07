Delivery-date: Mon, 07 Apr 2025 09:56:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u1hLi-009Sol-1B
	for lore@lore.pengutronix.de;
	Mon, 07 Apr 2025 09:56:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u1hLh-0003lB-PF
	for lore@pengutronix.de; Mon, 07 Apr 2025 09:56:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WHlyJ7j0WQlPIV+UjUMIXhSD16vM0yQDEah1q7vrCMg=; b=s0FSoS7K8HLi7xiqV4egkhnPYG
	1XHtU+Epc68NideWsxjlvqSwlwRZgRJ6qMxf/4DSWceshZx+pABAS93W/icAjNzLDpbqdl6e7Jeuw
	9k1SV+oppaPM9IKUL/xOhePXMv+5elsliW2ucHVjeUFt3ZOzbFaHzy6CaATTzPKzIH9KtQsUKGOxB
	h1zkfqnnHu76jMkBX/lb4XoxRN5B5SJ1X8rsMfDmTMbtJN1+TN1GXAK3F/c2sr8svBOj76vFTahYg
	8sPywdbcSdZl+ggr4vxZJVAcQRGu3xpEEP8WG8mxcsLLMgXQ1Kwo3zkE14WBpIKjVjGxZg0XcZQXj
	Ok7LPcBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1hLD-0000000Gt8D-0Qpp;
	Mon, 07 Apr 2025 07:56:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1gzH-0000000GnN4-2vpA
	for barebox@lists.infradead.org;
	Mon, 07 Apr 2025 07:33:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u1gzG-0000MI-EI; Mon, 07 Apr 2025 09:33:42 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u1gzG-003im7-0q;
	Mon, 07 Apr 2025 09:33:42 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u1gzG-004ae3-0c;
	Mon, 07 Apr 2025 09:33:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250404155805.2865565-1-a.fatoum@pengutronix.de>
References: <20250404155805.2865565-1-a.fatoum@pengutronix.de>
Message-Id: <174401122218.1094146.15949376020965794932.b4-ty@pengutronix.de>
Date: Mon, 07 Apr 2025 09:33:42 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250407_003343_737540_6B4B41C2 
X-CRM114-Status: UNSURE (   5.83  )
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
Subject: Re: [PATCH] banner: print out enabled sanitizers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 04 Apr 2025 17:58:05 +0200, Ahmad Fatoum wrote:
> KASAN and UBSAN can currently be detected only indirectly via their test
> commands or in case of KASAN by observing the MMIO reservations.
> 
> Improve upon this by printing out their status on bootup if they are
> enabled.
> 
> 
> [...]

Applied, thanks!

[1/1] banner: print out enabled sanitizers
      https://git.pengutronix.de/cgit/barebox/commit/?id=3ea5d63b1824 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



