Delivery-date: Fri, 19 Jul 2024 08:39:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sUhGo-000kpu-2u
	for lore@lore.pengutronix.de;
	Fri, 19 Jul 2024 08:39:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sUhGo-0007TG-42
	for lore@pengutronix.de; Fri, 19 Jul 2024 08:39:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kaomXQ19wJqB1Bp9PPGnBnsAe1JDnap6JgopEEQybTk=; b=QpwIt4scZgzeP3caIXaCIxxKnh
	dHESUQCQCG1mcpsYU4HPOaaV3UKv32hsBw27Ap+UZuCukVvHIHJpPHkbCyakoFTLaAcl2eOc4SucD
	u8gxD63yBBGQqsszYKCAexX8lkgAHt0JNFLjyovl3M66rW2hFwlN5FAp//3LxFfEsMt1Iz7oxjb9H
	IZ/2PUk8EVmZ/tBVPXhjqHqrxYCh/0pFnFEzW1G7PUOoJ8DfeLXqOnDbzo4sTR2DSiA5X23wHRsXe
	e0l3LENDKnPUB1F8r+ryTDQP795LZY071l6MXrSRsX2vvTd7gQFNNowVMfmT4oUSoINONaEAecX7q
	+c9pj6uA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUhGO-00000001peF-00Uf;
	Fri, 19 Jul 2024 06:38:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUhFi-00000001pZw-1uU5
	for barebox@lists.infradead.org;
	Fri, 19 Jul 2024 06:38:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sUhFh-0007P3-0C; Fri, 19 Jul 2024 08:38:01 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sUhFg-000ckV-JW; Fri, 19 Jul 2024 08:38:00 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sUhFg-002QxW-1j;
	Fri, 19 Jul 2024 08:38:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240717061941.2809074-1-a.fatoum@pengutronix.de>
References: <20240717061941.2809074-1-a.fatoum@pengutronix.de>
Message-Id: <172137108053.580213.942360828459207164.b4-ty@pengutronix.de>
Date: Fri, 19 Jul 2024 08:38:00 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240718_233802_530473_9403596A 
X-CRM114-Status: UNSURE (   7.51  )
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
Subject: Re: [PATCH 1/2] ci: bump action versions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 17 Jul 2024 08:19:40 +0200, Ahmad Fatoum wrote:
> Github Actions run log warnings about some of our actions being
> deprecated, because they use outdated node.js versions.
> 
> For actions/checkout we just need to bump the version.
> actions/upload-artifact@v4 now refuses identically named artifacts,
> so we fix this by factoring in the name of the defconfig.
> 
> [...]

Applied, thanks!

[1/2] ci: bump action versions
      https://git.pengutronix.de/cgit/barebox/commit/?id=fc5f4bf42d5c (link may not be stable)
[2/2] ci: labgrid: use different names per Test Results entry
      https://git.pengutronix.de/cgit/barebox/commit/?id=8b3cb3dc8765 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



