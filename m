Delivery-date: Mon, 23 Feb 2026 11:15:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuSxv-004nLf-2V
	for lore@lore.pengutronix.de;
	Mon, 23 Feb 2026 11:15:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuSxw-0007Lq-0d
	for lore@pengutronix.de; Mon, 23 Feb 2026 11:15:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Xm2RWrSaDkwK+4L35TpDKuTFYROX8eFIEjtRlEj0eKU=; b=jgOn9vsTVZs4hJTmpt141SDcwP
	pBI9MYJHpr4Hrft5h2cyXL7QrQHZJigHRqdPwgGtqMuEf4Q5AQ+YqFfYf/jnp1KN++zGLSJTps5Dl
	vrOS3XxcexUaUczlqghvPR+WZzwWVDlt2KSDQi3G6FmkISg2flZ8R4Z72KRSvM6rpaE4JkeNlDVE2
	XN7kn+tQPEgsNO1t5njrAIWFGq/TSUQDMTfNaWeqr2fqrKelp2aSA/MjdSuJzH5sl51inveL5M0fr
	LY3tTMArPwh53s9uurQJqsnkSl4OtBZAAbrBOUK1qcx78Un3sqc4ie2gS1MYqxVJkBlsX50rJTvsW
	PQTixQTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuSxZ-000000001VX-1hUu;
	Mon, 23 Feb 2026 10:14:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuSxU-000000001V1-3hu7
	for barebox@lists.infradead.org;
	Mon, 23 Feb 2026 10:14:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuSxT-0007Em-6J; Mon, 23 Feb 2026 11:14:31 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuSxR-002D9u-26;
	Mon, 23 Feb 2026 11:14:31 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuSxS-00000000r7A-3vdk;
	Mon, 23 Feb 2026 11:14:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260215180511.2707275-1-a.fatoum@pengutronix.de>
References: <20260215180511.2707275-1-a.fatoum@pengutronix.de>
Message-Id: <177184167093.204158.8730941323867128598.b4-ty@pengutronix.de>
Date: Mon, 23 Feb 2026 11:14:30 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_021432_925353_C6B0764C 
X-CRM114-Status: UNSURE (   5.84  )
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
Subject: Re: [PATCH] test: 9p: switch security_model from mapped to none
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Sun, 15 Feb 2026 19:05:06 +0100, Ahmad Fatoum wrote:
> QEMU's security_model=mapped doesn't allow reading host symlinks (those
> not created through 9P) and instead returns ELOOP.
> 
> Switch to security_model=none, which passes through real filesystem
> semantics (including symlinks) while silently ignoring ownership and
> permission changes that would require root.
> 
> [...]

Applied, thanks!

[1/1] test: 9p: switch security_model from mapped to none
      https://git.pengutronix.de/cgit/barebox/commit/?id=5c5955e8a0e1 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



