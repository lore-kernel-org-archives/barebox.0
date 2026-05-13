Delivery-date: Wed, 13 May 2026 16:09:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wNAHG-001HVW-1i
	for lore@lore.pengutronix.de;
	Wed, 13 May 2026 16:09:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wNAHE-00058i-35
	for lore@pengutronix.de; Wed, 13 May 2026 16:09:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=v54TktfJqbTnidMC4QZirPoP9P9gCt1uKb34DGm4c5M=; b=VeB0R/RwOHMixfP9e57htPCqEv
	pskB/cCw79IR5CXOh66D3g8GchpL6cCq8EEqfdV92bR3DOg6o48GqbsdOATJ8U6udIIgTXdCvDpBZ
	GGqn+4cq6K+BKRoZY73V46rVMnk1dB18OCmgRaGkJEn5mueCwSEUQawFCpW1YDU0FysNB12I6KQBH
	zChN0OP81ecF+DVSbn0xZi9YJ2qJ1qQPe1IbAd/auvX0g23K72I7Ed4b3PaDjrDwXTJTtWqNeqwOL
	ww4YdS0HNIYOdciKKXQLieJGPI7WfvIiMGKXKGQjk8n3L3Jvllb89IoictMJpv4BzmzYh6YeQQKcY
	XtkyZ5FQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNAGs-00000002siN-2dak;
	Wed, 13 May 2026 14:09:10 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNAGr-00000002shy-0GiI
	for barebox@bombadil.infradead.org;
	Wed, 13 May 2026 14:09:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=v54TktfJqbTnidMC4QZirPoP9P9gCt1uKb34DGm4c5M=; b=LlkGX+2U1GwWYrKiTQULshLIla
	RWP4MariYVPsP4udefwHg4DlAuE1h2D8NEuhe9/Fs5LRVcvR6tRljToyBX115Nax2wX2AjjyAe1vj
	vvTxDXo6z23BOq4PQe4m/Txe+9LfZ/VruEP9lCAobXpDFbcatEs1Uq5Nmt9jyuvFLe5ExuJI+4Oj8
	Uo/YhVwbAknp0TNIs1652SVncexwvUqbPZeB8mfOecCJ6FZqjiVnm7babHp3c/ZHnWidfgfGggcRk
	G80wcxHrLn5TR+rJHTMqLpduynjVAEqxxB1pqIH6a53HysDPYoJiWvgd3h4DyWb7Caf9LykRHmLUN
	EhWu7hiw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNAGn-000000007kE-2pQ4
	for barebox@lists.infradead.org;
	Wed, 13 May 2026 14:09:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wNAGn-0004yj-AO; Wed, 13 May 2026 16:09:05 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wNAGn-000boC-0r;
	Wed, 13 May 2026 16:09:05 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wNAGn-00000001Dej-0qOJ;
	Wed, 13 May 2026 16:09:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: str@pengutronix.de
In-Reply-To: <20260513133859.3877113-1-a.fatoum@pengutronix.de>
References: <20260513133859.3877113-1-a.fatoum@pengutronix.de>
Message-Id: <177868134519.290802.13330297627148171035.b4-ty@pengutronix.de>
Date: Wed, 13 May 2026 16:09:05 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260513_150906_090365_54DDCE4F 
X-CRM114-Status: UNSURE (   6.36  )
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
Subject: Re: [PATCH master] mci: atmel_mci: fix mci_pbl breakage after
 mci_cmd::data change
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 13 May 2026 15:30:51 +0200, Ahmad Fatoum wrote:
> To align with Linux, mci_cmd was extended by a data pointer and the
> send_cmd in barebox proper was adapted to drop the mci_data member.
> 
> The PBL drivers were not adapted and just ignore mci_data, except for
> the Atmel MCI driver, which now discards the actually populated data and
> passes cmd->data, which is always NULL.
> 
> [...]

Applied, thanks!

[1/1] mci: atmel_mci: fix mci_pbl breakage after mci_cmd::data change
      https://git.pengutronix.de/cgit/barebox/commit/?id=26c3f0823a56 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



