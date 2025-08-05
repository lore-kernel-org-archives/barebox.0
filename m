Delivery-date: Tue, 05 Aug 2025 11:34:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujE43-007FVN-0Q
	for lore@lore.pengutronix.de;
	Tue, 05 Aug 2025 11:34:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujE42-0003Rp-HZ
	for lore@pengutronix.de; Tue, 05 Aug 2025 11:34:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iBLvlzsco0ltYJsx6iGbdO6HRPSQ/nP5dtHAkwfqED8=; b=ZqECQthfwUk0bp/q768pos57cD
	jco9C8Twh7o7vgvISz3VBHn4WsrlJXOTREY/h2iMfwMAQn8uhHb4wb+A86NSdLO/xhDoS7pM4a4rO
	xsiQrw6o3ieT5FAWd2RNWOTO8oKn1ZDkIDYgcI7DJHgKXs98nIpSZL1aM/n7nSeAir2s6tnVjwdWu
	4ZbwVbAddVXsPBZTsQfrVyq46lKcgmsMzib8SIudEGEnSx/INMSowtJrAU1yAWXB1hyJ2CjxwBwuH
	J6G9nzhVGt+3Lk+OkW298+LcK04OAnripUmvkpP2DM5i48sj5/PO+PwDH2ubVoHyDtmacbr8FcTJ2
	HMVh+4VQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujE3U-0000000CMrL-30AS;
	Tue, 05 Aug 2025 09:34:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujDqD-0000000CKyy-2bRt
	for barebox@lists.infradead.org;
	Tue, 05 Aug 2025 09:20:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujDqC-00016T-5i; Tue, 05 Aug 2025 11:20:16 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujDqB-00C18Y-3C;
	Tue, 05 Aug 2025 11:20:16 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1ujDqB-00EiuA-30;
	Tue, 05 Aug 2025 11:20:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250709101249.4025552-1-a.fatoum@pengutronix.de>
References: <20250709101249.4025552-1-a.fatoum@pengutronix.de>
Message-Id: <175438561592.3509159.14603507577406101093.b4-ty@pengutronix.de>
Date: Tue, 05 Aug 2025 11:20:15 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_022017_664378_D54F107A 
X-CRM114-Status: UNSURE (   7.69  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fixup! ARM: add exception handling support for PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 09 Jul 2025 12:12:49 +0200, Ahmad Fatoum wrote:
> ARM: interrupts: fix guard page linker error in PBL
> 
> We set up the stack guard page only in barebox proper. Attempting to
> compile in support in barebox PBL leads to a compile error, because
> arm_mem_guard_page_get() references arm_mem_endmem_get(), which is not
> available.
> 
> [...]

Applied, thanks!

[1/1] fixup! ARM: add exception handling support for PBL
      https://git.pengutronix.de/cgit/barebox/commit/?id=61522f98c253 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



