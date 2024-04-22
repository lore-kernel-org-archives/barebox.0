Delivery-date: Mon, 22 Apr 2024 13:24:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ryrn9-00BR41-1e
	for lore@lore.pengutronix.de;
	Mon, 22 Apr 2024 13:24:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ryrn8-0002Sv-Vh
	for lore@pengutronix.de; Mon, 22 Apr 2024 13:24:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QYyt8OL2MYPqL5rIEl67MR6GRr1Lmj7By6koG9fEaDk=; b=o0ZPAtMfKbbJDtQbCZzWPHiJhZ
	g1Sm/RHV94y7tyjslZr96nfZpeKo5Plat1iozJIh9C0pPJUTHZSzAcfQF8KCgjcUQEDDIyDLEh8p4
	CX+5i60OR2Uaq4SDwRAOfjAmvAMAZcz3WZ9IYiL8Tw9itdMFSp4Cnb1JSZMPjItnFgI2n2j/43YQ7
	HEUl+qPHMkwW9mEzq5108DaahCP/Dus9B3weR2EYy8317pvA0GIFMQZWi5Szr0GKGbv4Pf+gVYBMR
	M/b5nEeoE0CSxiGDYLuXUgBRfdcpK413txLZXT+upw7oHzFFvZ3125HGWsXWhmKDYFIW+kyl69aRh
	Vj8/+EgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ryrmc-0000000DMEw-0c9X;
	Mon, 22 Apr 2024 11:24:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ryrmY-0000000DMEN-2TYJ
	for barebox@lists.infradead.org;
	Mon, 22 Apr 2024 11:24:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ryrmV-0001u0-U2; Mon, 22 Apr 2024 13:24:19 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ryrmV-00DgGd-Hb; Mon, 22 Apr 2024 13:24:19 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ryrmV-005izW-1R;
	Mon, 22 Apr 2024 13:24:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240419060759.2590652-1-a.fatoum@pengutronix.de>
References: <20240419060759.2590652-1-a.fatoum@pengutronix.de>
Message-Id: <171378505943.1364470.11423040679806952073.b4-ty@pengutronix.de>
Date: Mon, 22 Apr 2024 13:24:19 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240422_042422_665027_11F6F021 
X-CRM114-Status: UNSURE (   6.16  )
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
Subject: Re: [PATCH 1/2] clk: add flags parameter to clk_dump(_one)
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 19 Apr 2024 08:07:58 +0200, Ahmad Fatoum wrote:
> We currently customize dumping by means of a single verbose argument.
> Follow-up commit will want to customize the dumping further, so turn
> the verbose parameter into a general flags parameter.
> 
> 

Applied, thanks!

[1/2] clk: add flags parameter to clk_dump(_one)
      https://git.pengutronix.de/cgit/barebox/commit/?id=ab544df4e368 (link may not be stable)
[2/2] commands: clk_dump: add json output option
      https://git.pengutronix.de/cgit/barebox/commit/?id=83b091903d70 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



