Delivery-date: Thu, 26 Feb 2026 13:15:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vvaHW-005sZy-1W
	for lore@lore.pengutronix.de;
	Thu, 26 Feb 2026 13:15:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vvaHW-00083W-QR
	for lore@pengutronix.de; Thu, 26 Feb 2026 13:15:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4gGmtQP15f77NiybMpIfAzCzYDBN116ZFpzFPw/pNF0=; b=3m3FlIplJP1Re4Zad9MYe7QYma
	iI9q6NvwCr2T9mk2tIGUQhpZuqjuonSwo9URImHT11PJzxb90ARngXNdyb5bwEZSSWfmac7hxpr1O
	ypljmp58F02zCxYjxoVkPPW449XI+18iaQz7EPAHbV/N2fvou7dSiPnKqPTnpZDpeZHVCLVWUQ9yh
	01m2+itZvzRSdIFruDPZBk4p+QW2qbKIwp9sbMfwhbN6lRjA6ySuWa7pBkDPNeRtHHeAQ5Got3gYJ
	1Eix2izQHbQJCTH2HQCHLXy8v4oJJtru6Aa2sr7YRiag4WAqO2vWAu1u5N2c0IYzWK7UnumtEbY5E
	JtxVsqMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvaGD-00000006639-2Bh7;
	Thu, 26 Feb 2026 12:14:29 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvaGB-00000006631-2nVi
	for barebox@bombadil.infradead.org;
	Thu, 26 Feb 2026 12:14:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=4gGmtQP15f77NiybMpIfAzCzYDBN116ZFpzFPw/pNF0=; b=Y3PGb+4hQsDvEmjI9aHQUMVPQ6
	/1A71Ymn/UvPJwnmd/Lkxw0gJXuR1zHX/rrZtWd9yoJIlLIeGipcK+/LQBlhntgDkjUzLLOQT5GXn
	24wbKuHMiqhVhyTJr9gRM6K2hzcp1mSSEhMWgGP/SMf534IRl78Vw0vntSZereBA2ynR3Jj7YB4fr
	JId3+JSak2NFN7UIneHvC5OxKB4lyoWBKNYfSFG422J8RFG51eV6NDPB5gfUsPj6F5qyaXqvaBDz9
	tWtPc5xYiix0TgEcuCW4DtrMDGoaOIYrv1P/yIZBR5ulRc2PEk8cSYsKvnP+p/kh3tTdMw0aRTXo0
	T1hGY6LQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvaG8-0000000AvC3-2T79
	for barebox@lists.infradead.org;
	Thu, 26 Feb 2026 12:14:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vvaG7-0007iw-UF; Thu, 26 Feb 2026 13:14:23 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vvaG6-002jBj-1I;
	Thu, 26 Feb 2026 13:14:23 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vvaG7-00000009Aq9-2tN1;
	Thu, 26 Feb 2026 13:14:23 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260225141536.258005-1-a.fatoum@pengutronix.de>
References: <20260225141536.258005-1-a.fatoum@pengutronix.de>
Message-Id: <177210806368.2186588.13500727787857098039.b4-ty@pengutronix.de>
Date: Thu, 26 Feb 2026 13:14:23 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260226_121424_796057_5C9347A1 
X-CRM114-Status: UNSURE (   8.46  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] test: py: network: await prompt after ctrl+c
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 25 Feb 2026 15:15:34 +0100, Ahmad Fatoum wrote:
> The expect buffer will contain the <INTERRUPT> string output by barebox
> followed by a prompt, which run_check would gobble up.
> 
> Currently, this doesn't matter, but when we start to additionally match
> against the plain prompt, this would lead us not to match the prompt
> string with the marker in run_check.
> To fix this, _await_prompt to get the <INTERRUPT><prompt> removed from
> the expect buffer.
> 
> [...]

Applied, thanks!

[1/1] test: py: network: await prompt after ctrl+c
      https://git.pengutronix.de/cgit/barebox/commit/?id=ca40477c067d (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



