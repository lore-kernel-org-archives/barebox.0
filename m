Delivery-date: Tue, 17 Jun 2025 09:15:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRQX7-008BzI-35
	for lore@lore.pengutronix.de;
	Tue, 17 Jun 2025 09:15:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRQX7-0004aJ-Ea
	for lore@pengutronix.de; Tue, 17 Jun 2025 09:15:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wP5hooY9NAVLfHd3tByyIVqRi46qKVNp1OFmkkB/T+4=; b=YPsvLbhVsXbWlAQy0k+F4xJ5Ph
	ShzulWc302BJ1u1teizLnWY9aapF975gaoOrCLJGcyvvZpcC5+rIdhwCgixANKtBJz5zb/UJm9TTj
	LXpEbh6q85j/X25zwY27VAehEuievq/GAoz6G8nC5bKRsWGeWO0lSQAizF/0OmB+fkQQwjws5rV90
	YzonDnL9Zx9ltGioh4ujXLPY7djw2ao8cShtqCLpeNEit8MvZeWEFDjVCOv93KtUM4Wtm5QOPDvcG
	Zkd5WdESrrr/3sGZJLUjXY6VqkuSWElU4QroltOIkzpG838fKm7sisT3DjoPO8EsFtago0u4wLpXC
	aeYx+IVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRQWg-00000006RCQ-0DSB;
	Tue, 17 Jun 2025 07:14:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRQWc-00000006RBJ-1iGP
	for barebox@lists.infradead.org;
	Tue, 17 Jun 2025 07:14:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uRQWb-0003oS-63; Tue, 17 Jun 2025 09:14:29 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uRQWa-003w4L-3D;
	Tue, 17 Jun 2025 09:14:29 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uRQWa-00CQyn-2z;
	Tue, 17 Jun 2025 09:14:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20250612091611.11281-1-a.fatoum@barebox.org>
References: <20250612091611.11281-1-a.fatoum@barebox.org>
Message-Id: <175014446892.2963376.16242741819774262594.b4-ty@pengutronix.de>
Date: Tue, 17 Jun 2025 09:14:28 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_001430_469282_42D7701F 
X-CRM114-Status: UNSURE (   5.02  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] Documentation: migration-2025.05.0: note compressed
 kernel regression
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 12 Jun 2025 11:16:11 +0200, Ahmad Fatoum wrote:
> The breakage is annoying enough that it deserves being pointed out
> explicitly.
> 
> 

Applied, thanks!

[1/1] Documentation: migration-2025.05.0: note compressed kernel regression
      https://git.pengutronix.de/cgit/barebox/commit/?id=2ae2aa65792b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



