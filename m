Delivery-date: Mon, 29 Jan 2024 11:20:15 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rUOkQ-009sBF-1O
	for lore@lore.pengutronix.de;
	Mon, 29 Jan 2024 11:20:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rUOkR-00012j-5T
	for lore@pengutronix.de; Mon, 29 Jan 2024 11:20:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2ztqMzbP7rQFcUER1BKthBUEavjbiKI+/ddhsybg3lk=; b=mg0PBVw/joUe7leJs68ZNmKSd/
	q7UYqUstcWRyQz7X7YNlWMUJ+sS+RCXrQm+o54I6PMjs/fCpemZbcc8WSK4JtQ6PFC+wfaxtN7IVO
	PM5Sr4cZkKU4Q5Q/t07XZTL2vr4+w6eMRxv9GppGxVwZgLlNWJ7GzGl0lmys4g4YWSPsumclFZs82
	dWHc79LmylTyrJm8bNsu2nh2poefL/GtsS7ZV36tfCZvo3cn8RJ3Y9xJQE5gf3fV3WuhDwXNVY0lG
	xvnUgfB+823k8iddMTSfqqZTfBC1sCfrlOR+s9QF6/+73xZSUgyg3EyNPMTEQqbGjQTUTZS7u4I60
	5f8zE+jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUOk1-0000000CCIP-27vb;
	Mon, 29 Jan 2024 10:19:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUOjx-0000000CCGH-2igK
	for barebox@lists.infradead.org;
	Mon, 29 Jan 2024 10:19:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rUOjw-0000ut-Eu; Mon, 29 Jan 2024 11:19:44 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rUOjv-00398a-PI; Mon, 29 Jan 2024 11:19:43 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rUOjv-001QsO-2L;
	Mon, 29 Jan 2024 11:19:43 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Christian Melki <christian.melki@t2data.com>
In-Reply-To: <20240126075231.1285729-1-christian.melki@t2data.com>
References: <20240126075231.1285729-1-christian.melki@t2data.com>
Message-Id: <170652358372.341556.8255278391429102705.b4-ty@pengutronix.de>
Date: Mon, 29 Jan 2024 11:19:43 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240129_021945_751420_43AE9B30 
X-CRM114-Status: UNSURE (   6.09  )
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
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] barebox_imd: Add IMD sections to mpc-85xx.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 26 Jan 2024 08:52:31 +0100, Christian Melki wrote:
> Seems PowerPC in general is missing the IMD sections.
> Placement might be suboptimal, please correct if so.
> 
> 

Applied, thanks!

[1/1] barebox_imd: Add IMD sections to mpc-85xx.
      https://git.pengutronix.de/cgit/barebox/commit/?id=0b94be2390ec (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



