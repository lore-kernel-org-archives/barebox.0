Delivery-date: Wed, 22 Oct 2025 08:28:36 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBSKq-00AW13-20
	for lore@lore.pengutronix.de;
	Wed, 22 Oct 2025 08:28:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBSKq-0008JN-2j
	for lore@pengutronix.de; Wed, 22 Oct 2025 08:28:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PMiet0bJ778mW0DXOrA/Z6WA7kj+weIsLIrv4Ac5ir8=; b=yS1An+EUYQM9I29MJ4DEIViTlJ
	UXc8SnAeJbyjysD39DH/j3Y3X3d5dFaLNwnDTpPOkMQZc6JDvDrHbkHPaSEFertixUv65Nlh547Uk
	SO4YurJ07ODkpoQInc/nuRbUYSprEccM01eLfJUerWelo7jMWOiYfOZU4Mb4Q8Sf6AF4M8SsXJSJT
	3i5y9Kf2MNtg1ahv0SduiNa0LV90VtH1FKGrdZAVWhGePw9fxpuy4NqzKpZWgMMeWyTVFvyoe8V7b
	LoLmHT1i6kZsumXNzjMDoZUx/pYf/IAH1AxysF+YcLysfJEyNZBSNdCjxxks1RuSQSc94N9t7UhrA
	E2TW3xaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBSKI-00000001f7M-1EaU;
	Wed, 22 Oct 2025 06:28:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBSKF-00000001f5l-0nQI
	for barebox@lists.infradead.org;
	Wed, 22 Oct 2025 06:28:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vBSKB-0008E6-Nb; Wed, 22 Oct 2025 08:27:55 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vBSKB-004qXP-1m;
	Wed, 22 Oct 2025 08:27:55 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vBSKB-0000000H12s-22Y6;
	Wed, 22 Oct 2025 08:27:55 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251021145420.1274668-1-a.fatoum@pengutronix.de>
References: <20251021145420.1274668-1-a.fatoum@pengutronix.de>
Message-Id: <176111447547.4055565.1653642438831274704.b4-ty@pengutronix.de>
Date: Wed, 22 Oct 2025 08:27:55 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251021_232759_230800_A212EEF9 
X-CRM114-Status: UNSURE (   8.03  )
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
X-Spam-Status: No, score=-1.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,SUBJECT_IN_BLACKLIST,
	SUBJECT_IN_BLOCKLIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/2] test: self: malloc: fix double free after
 expect_alloc_fail
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 21 Oct 2025 16:54:13 +0200, Ahmad Fatoum wrote:
> If the realloc call unexpectedly succeeds, the p pointer is invalidated,
> but it's free'd unconditionally later on, which triggers a
> user-after-free.
> 
> Account for this by zeroing p when it becomes stale.
> 
> 
> [...]

Applied, thanks!

[1/2] test: self: malloc: fix double free after expect_alloc_fail
      https://git.pengutronix.de/cgit/barebox/commit/?id=745c925fa79e (link may not be stable)
[2/2] test: self: malloc: fix false positive when malloc store is registered
      https://git.pengutronix.de/cgit/barebox/commit/?id=e11c2f618876 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



