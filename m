Delivery-date: Thu, 12 Jun 2025 10:10:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPd0n-006RPj-1e
	for lore@lore.pengutronix.de;
	Thu, 12 Jun 2025 10:10:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPd0m-0008Ei-VT
	for lore@pengutronix.de; Thu, 12 Jun 2025 10:10:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cncvYSRK+6jaeKDLybbnRJPTD5tASWsYvfnIA/YcF5o=; b=UEkS56UaPt1JGV0HtpOTvRLsKp
	iELK1TFVl8Suzy7ivXPjN9WCF+Jq696U9mTaSDq3AOyhazZXAQ1IuWBioR3ZaUo77J3W8SoHB+ag+
	mG5ZtZJANRxtL0jm8MjudCBosS2ohBakTxTqK8F1gam+LvITe7rDAJ/5Dw01nODDIgXbAa0JUOnqn
	+txNoncYCCd4q8kGps89K31VExnfs8W2Ubx+T6xzSuGQNaEjM8clF4R9LGJlktNVE4v5Pv1lr0Jw4
	3p7YqrKhAvfscJTrrr3ZMz2Aqf1zzlV7wSHSkIsWYhxT38zYXWtok+D8306Ve7WrG9AfynyDa8Ugx
	pxYw6AuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPd0L-0000000CYpp-2Os7;
	Thu, 12 Jun 2025 08:09:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPcbf-0000000CU42-304y
	for barebox@lists.infradead.org;
	Thu, 12 Jun 2025 07:44:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uPcbW-0006Jx-DK; Thu, 12 Jun 2025 09:44:06 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uPcbW-0035Hg-0k;
	Thu, 12 Jun 2025 09:44:06 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uPcbW-000chg-0X;
	Thu, 12 Jun 2025 09:44:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250611063910.754462-1-a.fatoum@pengutronix.de>
References: <20250611063910.754462-1-a.fatoum@pengutronix.de>
Message-Id: <174971424616.148381.10729712484564046239.b4-ty@pengutronix.de>
Date: Thu, 12 Jun 2025 09:44:06 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250612_004415_756535_EDFB89A4 
X-CRM114-Status: UNSURE (   8.28  )
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
Subject: Re: [PATCH master] of: fdt: fix overflowing in dt_struct_advance
 arguments
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 11 Jun 2025 08:39:10 +0200, Ahmad Fatoum wrote:
> While dt_struct_advance was taking care to check its arguments don't
> overflow their type, the addition of len (that is read from the FDT)
> to a constant was already overflowing before the function was called.
> 
> Move all additions with untrusted input into the function to fix this.
> 
> This resolves crashes detected by libfuzzer when the digest functions
> were ultimately called with a length of -1 == 0xffffffff.
> 
> [...]

Applied, thanks!

[1/1] of: fdt: fix overflowing in dt_struct_advance arguments
      https://git.pengutronix.de/cgit/barebox/commit/?id=26136fd068d7 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



