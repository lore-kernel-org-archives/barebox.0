Delivery-date: Mon, 25 Nov 2024 11:18:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFWAR-000A3S-09
	for lore@lore.pengutronix.de;
	Mon, 25 Nov 2024 11:18:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFWAO-0007Y7-54
	for lore@pengutronix.de; Mon, 25 Nov 2024 11:18:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vZreXSPKVgGp6T3CUbtOBB2PukkJRDsks6vdcu9LrHE=; b=tAU7KQWEprRGu2yBmtmbQSnkmy
	1uCBzzHJyQ48IJUNX52uzDakCEQ2UIkeShg/u1igyqd9f/hU8NdtZgkHWVy+QcLwFHPgxvK/C9z/E
	r//9ioVoO9D8a26nt59QsSgsCfE30UqM8S1GNLnj+lv1fbw9vtTijnyx/lHqMIvTy+aZix7q59C5Z
	sBAeTWmzB/4ahe3QAbWJKqumBplJzo939QOEIQamXgMwc9/TMA0gG46gGCoDUc89j0fE/PJO03/yG
	VdwYXzHDbdlIGGheP0nRrHCgPENBBkvMaWVUpT6FMXVEydvkFKfDTgKLCUaoEJ3aek7/rF2P9MoKX
	xxQIIEJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFW9m-00000007hej-0j77;
	Mon, 25 Nov 2024 10:17:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFVY7-00000007bV4-1pfw
	for barebox@lists.infradead.org;
	Mon, 25 Nov 2024 09:38:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tFVY5-00035L-UT; Mon, 25 Nov 2024 10:38:29 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tFVY4-0003ab-37;
	Mon, 25 Nov 2024 10:38:29 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tFVY5-000l3z-2A;
	Mon, 25 Nov 2024 10:38:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Stefano Manni <stefano.manni@gmail.com>
In-Reply-To: <20241115135242.1251691-1-a.fatoum@pengutronix.de>
References: <20241115135242.1251691-1-a.fatoum@pengutronix.de>
Message-Id: <173252750967.180890.11770281015270814533.b4-ty@pengutronix.de>
Date: Mon, 25 Nov 2024 10:38:29 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241125_013831_477775_B26D99AE 
X-CRM114-Status: UNSURE (   7.84  )
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
Subject: Re: [PATCH master] remoteproc: use I/O memory variants of
 memcpy/memset
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 15 Nov 2024 14:52:42 +0100, Ahmad Fatoum wrote:
> Reserved memory is unmapped strongly ordered in barebox and calling
> normal optimized memcpy on may trigger an abort due to misalignment.
> 
> Fix this by using the slower I/O variants of memcpy/memset, which are
> do not expect bufferable memory like the optimized variants and thus
> don't cause unaligned accesses.
> 
> [...]

Applied, thanks!

[1/1] remoteproc: use I/O memory variants of memcpy/memset
      https://git.pengutronix.de/cgit/barebox/commit/?id=b0081505fff7 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



