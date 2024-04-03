Delivery-date: Wed, 03 Apr 2024 13:33:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rrysD-0060O8-0Z
	for lore@lore.pengutronix.de;
	Wed, 03 Apr 2024 13:33:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rrysC-0006sl-HJ
	for lore@pengutronix.de; Wed, 03 Apr 2024 13:33:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JpxmM+WIsLr/W6pGXXtbGF5ftn+BShbcLxLDBGDpXZY=; b=NyD3wJHyW5SwREHnRRctCjpSkw
	hQoHftMR7WcqakPgLVJmYhHseWhYSFULf33ruVXTizvzUOdrLgxqpRpKkTrPUZX8vWzjkpOT4oNlV
	kZaWziAraR8VctoSarhRJYWj/h5ZyxxFhcgVCGK8ypqpIznD3OGNg/6dhKkxx3DUkrUb4BYwBQCwE
	ZIZNfk3P3++xYdV5arA/yVyotQ9zHkk8L8BXt+CGJ2HL6JGbW/3X1dH2M2zYeC+prGFnJ58/iqOFU
	bIpz0vUVS0CoAjM+KQBTPRDF9CJix25EP2rowhRXf7GckzZZW3HcTuICpQQKGrTOrQKJDkEJpbi4k
	BYKjguwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rryrl-0000000FmyZ-0tQS;
	Wed, 03 Apr 2024 11:33:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rryrh-0000000Fmxj-209g
	for barebox@lists.infradead.org;
	Wed, 03 Apr 2024 11:33:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rryrf-0006Qc-Q5; Wed, 03 Apr 2024 13:33:11 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rryrf-00AALz-Db; Wed, 03 Apr 2024 13:33:11 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rryrf-006FWP-18;
	Wed, 03 Apr 2024 13:33:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240402134501.3689322-1-a.fatoum@pengutronix.de>
References: <20240402134501.3689322-1-a.fatoum@pengutronix.de>
Message-Id: <171214399134.1489612.2332390134532727879.b4-ty@pengutronix.de>
Date: Wed, 03 Apr 2024 13:33:11 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240403_043313_766084_91C8C722 
X-CRM114-Status: UNSURE (   6.86  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master 1/3] soc: sifive: l2_cache: fix 32-bit
 compilation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 02 Apr 2024 15:44:59 +0200, Ahmad Fatoum wrote:
> The StarFive SoCs are 64-bit, but the L2 cache driver could be
> compile-tested on 32-bit as well. Currently, this would fail, because
> writeq isn't defined. Fix this by emulating it using a lo-hi write.
> 
> 

Applied, thanks!

[1/3] soc: sifive: l2_cache: fix 32-bit compilation
      https://git.pengutronix.de/cgit/barebox/commit/?id=046ceb972493 (link may not be stable)
[2/3] RISC-V: riscvemu: build overlay as DTSO
      https://git.pengutronix.de/cgit/barebox/commit/?id=d75ee46bea16 (link may not be stable)
[3/3] treewide: replace references to barebox.org/jsbarebox with demo
      https://git.pengutronix.de/cgit/barebox/commit/?id=c0dde74b1c9a (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



