Delivery-date: Tue, 27 May 2025 21:14:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uJzlG-000wTW-0T
	for lore@lore.pengutronix.de;
	Tue, 27 May 2025 21:14:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uJzlF-0000j0-KY
	for lore@pengutronix.de; Tue, 27 May 2025 21:14:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XGogK2EcEcoe+7/CSAX0sP8IvvND7huQ59zraKoGnZQ=; b=zWXKe026kJHIjWC6K9apO0yLs8
	+jkjkf1x9LnRtkRFMWB/TMKYuKX0YFNcPtXMXNh1aX69HsRBB8Gn2iLhrYK0MpaOgduFvIxs4suJg
	wOQKOVi1XItgEAW0WKtqD3H0e6YolaUHeVIxVMwAwZ63wruJUTjCb5oK+HRiSGvi93JMJrvTcFBEM
	BBxJ9l3wkEXOoK+S7IvCEdmRaLAIC+yXzsBm1rL6GzfL07veBuykxdU6QWrzyUTXyXdulPFqunh0u
	eGIzEKGGvBjEd8tewnb48cNbU+4BiskDd+5KBI5mZesM3vtSaBl7wKj9gkyw6ylipujAJBP+FsCbY
	AnTOKHUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJzkh-0000000BPYr-2qSK;
	Tue, 27 May 2025 19:14:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJzke-0000000BPYQ-03N5
	for barebox@lists.infradead.org;
	Tue, 27 May 2025 19:14:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uJzka-0000Nj-MS; Tue, 27 May 2025 21:14:12 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uJzka-000T62-1e;
	Tue, 27 May 2025 21:14:12 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uJzka-000i3z-1P;
	Tue, 27 May 2025 21:14:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20250523075549.681144-1-s.hauer@pengutronix.de>
References: <20250523075549.681144-1-s.hauer@pengutronix.de>
Message-Id: <174837325243.169336.5530921795797103771.b4-ty@pengutronix.de>
Date: Tue, 27 May 2025 21:14:12 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250527_121416_056031_0F7D3CDC 
X-CRM114-Status: UNSURE (   7.09  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] environment: explicitly set env path to /dev/env0
 where used
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 23 May 2025 09:55:49 +0200, Sascha Hauer wrote:
> Most board set the path for to the environment storage either directly
> through default_environment_path_set() or indirectly via the
> barebox,environment driver.
> For the remaining older boards explicitly call
> default_environment_path_set("/dev/env0").  With this all boards set the
> path to the environment storage explicitly. This gives us the
> possibility to repurpose now unused default case.
> 
> [...]

Applied, thanks!

[1/1] environment: explicitly set env path to /dev/env0 where used
      https://git.pengutronix.de/cgit/barebox/commit/?id=4778be24e7fd (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



