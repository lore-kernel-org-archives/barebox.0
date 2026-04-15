Delivery-date: Wed, 15 Apr 2026 08:31:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCtmb-00CKFH-0k
	for lore@lore.pengutronix.de;
	Wed, 15 Apr 2026 08:31:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCtma-0006Bb-ND
	for lore@pengutronix.de; Wed, 15 Apr 2026 08:31:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QFyvJhTVzmtgncei9n975FEaMI0P3lMnRFdUWThzs0M=; b=HtSjfgORS5kv1AgHnwgSYevJj3
	cG7vzvuNYBMnXXXd+5Lc9s4s4MX5tMzzGTwEgG9oMqbYqZSgfQfv0D31QDFmqCwvWZt69IR9x/RCt
	6+Io3S8lQr32B30JmYuiY3YjS41YXJ4AB1cZPMexJv3W67ZM78rvkLzl589p7HaGiYrQQafSunm5B
	Uv/agxyEnfz97IT79Lvnsu1rvw3kO1xmnm/thAxiKplqft3xg3QnTytES08QAB2XAtgMHATkBbQyR
	xT9HPQcZn2YDhWpuHstZ1/YHxU1x/MqymoGxMCgQWslSlkhnz+4l6N7xSQSwcXucskt1UZ21gyDPA
	IpcHi1RA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCtmB-00000000eRO-0XeO;
	Wed, 15 Apr 2026 06:31:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCtm7-00000000eR1-43Rb
	for barebox@lists.infradead.org;
	Wed, 15 Apr 2026 06:31:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCtm6-00064r-BV; Wed, 15 Apr 2026 08:30:58 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCtm6-005Sta-0X;
	Wed, 15 Apr 2026 08:30:58 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wCtm6-0000000Dpm5-0Rrz;
	Wed, 15 Apr 2026 08:30:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20260414080652.397582-1-a.fatoum@pengutronix.de>
References: <20260414080652.397582-1-a.fatoum@pengutronix.de>
Message-Id: <177623465810.3297188.13671908520346785982.b4-ty@pengutronix.de>
Date: Wed, 15 Apr 2026 08:30:58 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260414_233100_010333_71D21AA6 
X-CRM114-Status: UNSURE (   5.46  )
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
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/3] ppc: define sync_caches_for_execution only for
 MPC85xx
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 14 Apr 2026 10:06:28 +0200, Ahmad Fatoum wrote:
> In preparation for adding a call to sync_caches_for_execution() into
> common code, make sure PowerPC configurations without an out-of-line
> definition fallback to the inline no-op definition.
> 
> 

Applied, thanks!

[1/3] ppc: define sync_caches_for_execution only for MPC85xx
      https://git.pengutronix.de/cgit/barebox/commit/?id=586caca9efd2 (link may not be stable)
[2/3] riscv: make header self-contained
      https://git.pengutronix.de/cgit/barebox/commit/?id=54449e5c2c1e (link may not be stable)
[3/3] mem: add flush callback to sync caches for execution
      https://git.pengutronix.de/cgit/barebox/commit/?id=eca53ad82a74 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



