Delivery-date: Thu, 21 May 2026 10:44:36 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPz1A-002AtZ-1K
	for lore@lore.pengutronix.de;
	Thu, 21 May 2026 10:44:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPz19-0004r1-TL
	for lore@pengutronix.de; Thu, 21 May 2026 10:44:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CsbNqkpUfue21dUSjxLUNU0QBSi5bUV2tGU0gSuCo3c=; b=DnZvkp6I87RX/NkwSG+JZFNz5/
	9aL4YANQfvmBYrObRM5zAk/q4LhQZW1VlnYHntm2501exl9lKN/OffGgQfPxoB3DfCVzomPrPR0Rl
	nfKeUWQzq5TAAK6HFYizD6hJiQs7WaYlaaPcCGi3J5qnFGOFhsdCmchLPM3Jl54hiyfN5d8eS3qdv
	GeVBwZRQmt0AO47O40vhplNMYHW4bFnb7wvpfXR7NEXFlrxQoHTqED30AikJ54JlNoPUiKQJGGG8O
	Ei6/3RnjOGWKEa3apJxUoDkiDJtvvZSe/sklMjIOlXRIpMXk3kPCC9Ujz/rvEBWOfDmmWSZFkze8V
	cTfKcPGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPz0B-00000007CCp-0LwZ;
	Thu, 21 May 2026 08:43:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPz09-00000007CC6-0BBP
	for barebox@lists.infradead.org;
	Thu, 21 May 2026 08:43:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wPz07-0004gp-CM; Thu, 21 May 2026 10:43:31 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wPz06-0014e7-2S;
	Thu, 21 May 2026 10:43:31 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wPz07-0000000DU1Z-16qm;
	Thu, 21 May 2026 10:43:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Alexander Shiyan <eagle.alexander923@gmail.com>
In-Reply-To: <20260520145215.412167-1-eagle.alexander923@gmail.com>
References: <20260520145215.412167-1-eagle.alexander923@gmail.com>
Message-Id: <177935301125.3213548.10950216034341176512.b4-ty@pengutronix.de>
Date: Thu, 21 May 2026 10:43:31 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260521_014333_085899_A00BD6BE 
X-CRM114-Status: UNSURE (   3.84  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH] .gitignore: Add *.z generated files
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 20 May 2026 17:52:15 +0300, Alexander Shiyan wrote:
> 


Applied, thanks!

[1/1] .gitignore: Add *.z generated files
      https://git.pengutronix.de/cgit/barebox/commit/?id=65fb4174efef (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



