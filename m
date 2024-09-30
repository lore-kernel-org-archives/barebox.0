Delivery-date: Mon, 30 Sep 2024 09:00:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1svAOl-004TRv-0t
	for lore@lore.pengutronix.de;
	Mon, 30 Sep 2024 09:00:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1svAOl-0001tE-Q4
	for lore@pengutronix.de; Mon, 30 Sep 2024 09:00:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FLcNVsR9YpR6RLqwJjlYb2/nJObL5oRhmbJCmRVS9Hw=; b=FzeETC+n/J6WLXYmlvFYvyl0Nf
	H6UwFn3MgKR64GLwsbNlgHBEwksURyXBKezIpgt9YEc0gpXbrFVTBuIISXwwfRjTHvyCPlteJ0JmT
	A+V5genVABA3EFXxALHf25mCZj8/nbLPylJee5OvQir8yDdI5/vKDDhw5Ejwm4KmpPQ3/SCnFdQQ6
	4kCYUHyU+QDHF1HxKseDb+oXFCHX55CETLkNK5yEK6JJlSCrZNt//aIaq5/LQ6FDNmrJ9J3Asqe83
	Jy/D/jkO4fUj+bKs7W4sbfK4EYKT5UCkbKqKLeHts7ztTpx2Lcu0GYdA2fItjn/IP5BX8GlO4u6WX
	EVjzkzcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svAOD-0000000G78n-2S98;
	Mon, 30 Sep 2024 07:00:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svAOA-0000000G78O-2Pwr
	for barebox@lists.infradead.org;
	Mon, 30 Sep 2024 07:00:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1svAO5-0001Y0-Dt; Mon, 30 Sep 2024 09:00:05 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1svAO4-002ZZa-UY; Mon, 30 Sep 2024 09:00:04 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1svAO4-000gYL-2s;
	Mon, 30 Sep 2024 09:00:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Julian Vetter <jvetter@kalrayinc.com>
Cc: Yann Sionneau <ysionneau@kalrayinc.com>
In-Reply-To: <20240927135359.1128779-1-jvetter@kalrayinc.com>
References: <20240927135359.1128779-1-jvetter@kalrayinc.com>
Message-Id: <172767960489.163566.18322519623137232820.b4-ty@pengutronix.de>
Date: Mon, 30 Sep 2024 09:00:04 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240930_000010_653649_5B898CF9 
X-CRM114-Status: UNSURE (   6.57  )
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
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1] kvx: Fix SoC version/revision string
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 27 Sep 2024 15:53:59 +0200, Julian Vetter wrote:
> In the register $PCR the bitfield SV (SoC Version) determines on which
> SoC iteration we are (e.g., KV2, KV3, etc.), whereas CAR (Core
> ARchitecture Revision) determines the Revision within each iteration,
> e.g., KV3-1, KV3-2, etc. Since this port is only for KV3, SV should not
> change anyway. But CAR changes depending on the revision. So fix the SoC
> info driver to give out the right SoC version/revision string.
> 
> [...]

Applied, thanks!

[1/1] kvx: Fix SoC version/revision string
      https://git.pengutronix.de/cgit/barebox/commit/?id=01e744c86aaf (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



