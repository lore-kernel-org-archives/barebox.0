Delivery-date: Mon, 13 Apr 2026 16:58:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCIjl-00Bkiq-1B
	for lore@lore.pengutronix.de;
	Mon, 13 Apr 2026 16:58:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCIjk-0002mF-Ri
	for lore@pengutronix.de; Mon, 13 Apr 2026 16:58:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ich5HSYQhd5qqZL0Sa8GLJUMGckrPBWU5zct9vjcldQ=; b=DKiyxWUjpMcA9O9QdcxpLEQsJk
	UT7pKHnBRQhNv0fwMSna/7WZNjw3FTanc7mmPPn+Cln6GRM49QGLF11G7JM6rzXTxN6VxLzF8GNvQ
	0KWGG03H3mrH2rRS2ppGsmx5owV69JiaiMP21TzTGMUUZHlwITajLsSARC4Zf3t2uQ4zKtybGyH6g
	gcng5O6NlfUljTIZdY82HcNRHbSrpznoOMNQ6zCADQaZYpWWc4XXNXUrtd1NCk4XDyEAQsfrIPbIA
	rc8EkiO+7T67eL0IxemXbE6siU5v1i7Ln0/ZPV4Ut3CDL/9rnjYPPyhdDRf5v285o3rymxGTuwXU9
	s1cSuiiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCIjQ-0000000FuRS-0PK0;
	Mon, 13 Apr 2026 14:57:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCIjN-0000000FuR9-2Zqg
	for barebox@lists.infradead.org;
	Mon, 13 Apr 2026 14:57:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCIjM-0002gt-14; Mon, 13 Apr 2026 16:57:40 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCIjL-005Bn6-2I;
	Mon, 13 Apr 2026 16:57:39 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCIjL-0000000Fret-2eE5;
	Mon, 13 Apr 2026 16:57:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
Cc: Sohaib Mohamed <sohaib.amhmd@gmail.com>
In-Reply-To: <20260323072408.4011172-1-a.fatoum@barebox.org>
References: <20260323072408.4011172-1-a.fatoum@barebox.org>
Message-Id: <177609225962.3779680.6481275684929747507.b4-ty@pengutronix.de>
Date: Mon, 13 Apr 2026 16:57:39 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_075741_655458_3BBAC67B 
X-CRM114-Status: UNSURE (   6.11  )
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
Subject: Re: [PATCH] regmap: align dev_get_regmap error return with Linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 23 Mar 2026 08:24:07 +0100, Ahmad Fatoum wrote:
> dev_get_regmap returns NULL in Linux and not an error pointer as in
> barebox. Align the barebox return, so kernel code using it can be ported
> unmodified.
> 
> 

Applied, thanks!

[1/1] regmap: align dev_get_regmap error return with Linux
      https://git.pengutronix.de/cgit/barebox/commit/?id=9873ebb62370 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



