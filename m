Delivery-date: Mon, 22 Jan 2024 13:56:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rRtr4-00BU7x-2Y
	for lore@lore.pengutronix.de;
	Mon, 22 Jan 2024 13:56:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rRtr5-0003xB-H3
	for lore@pengutronix.de; Mon, 22 Jan 2024 13:56:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=h6VS5gPyRgg635bx3mKIEOmuvvmtpYO6G6gfLJa0mHA=; b=q7CpxDcKO65GJd3Y+eyh2yReQ7
	ilLYfh4Lhi9G/nFvjbDm7JSAB0zhsTLlMcThhCJJjz1fsGg+fCKLBgXzOXz9lab4ehHBCTaKFKkqx
	7dr9ZWs93j7zF4/Bj55G56ohXfJOlrXZ02JgVcqY+XoSE2XV/GBasM/k0aNNkdjBUvqdytmb/hzwo
	O84gXE5FqE0ACDGrOA77Q+wUe/lQkIT96buzFSL6FO0D7FkjB3DY702PkQjHzA/F+OwBpKxe4Za5N
	G9BaSnIqx1laXSsokxemD0mcpKFADgm4JNeJXXN0PrEyGikVl+NuBHY6Q7BLSctjyUkfcn7xn7cQM
	zZJ2ZW2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rRtq3-00CBiT-2m;
	Mon, 22 Jan 2024 12:55:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rRtq0-00CBi1-2q
	for barebox@lists.infradead.org;
	Mon, 22 Jan 2024 12:55:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rRtpz-0003tt-D0; Mon, 22 Jan 2024 13:55:39 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rRtpz-001bFT-0H; Mon, 22 Jan 2024 13:55:39 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rRtpy-001V83-30;
	Mon, 22 Jan 2024 13:55:38 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240122125239.2927330-1-a.fatoum@pengutronix.de>
References: <20240122125239.2927330-1-a.fatoum@pengutronix.de>
Message-Id: <170592813892.357664.17265980740198093753.b4-ty@pengutronix.de>
Date: Mon, 22 Jan 2024 13:55:38 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240122_045540_939990_AC7DE90C 
X-CRM114-Status: UNSURE (   5.68  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fixup! pmdomain: implement
 pm_genpd_remove/of_genpd_del_provider for cleanup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 22 Jan 2024 13:52:39 +0100, Ahmad Fatoum wrote:
> pmdomain: fix pm_genpd_remove stub definition when !CONFIG_PM_GENERIC_DOMAINS
> 
> A stray semicolon breaks CI build when built without generic power
> domain support. Remove it.
> 
> 

Applied, thanks!

[1/1] fixup! pmdomain: implement pm_genpd_remove/of_genpd_del_provider for cleanup
      (no commit info)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



