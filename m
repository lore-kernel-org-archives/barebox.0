Delivery-date: Wed, 03 Apr 2024 14:17:41 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rrzYj-0066pQ-0K
	for lore@lore.pengutronix.de;
	Wed, 03 Apr 2024 14:17:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rrzYi-0005o6-Ir
	for lore@pengutronix.de; Wed, 03 Apr 2024 14:17:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/HPwdCUcScp76WnhTr628Kt3B0focgMymolGDsdtNl4=; b=esRbS6Vw2PyCdjjt1zBHfl0YSn
	nMg7PfS7cFoORxDKdxBvhFMQFgu9Mjw9xlv5PpQF/Vvbc2j3TQMZrkjqZG2+uhN0ZrfDpelPcVlSg
	j7J8KfqQk9mvnC53mW3ANioV+li4rg/QJG3cikJ++5IVLyiqugrgcJUvqXH4z1CyV8XkV6BEglbl2
	U0byHvE5Dg0na6PcEWcksl3yd+iAH3kbyr1rR1ecfQEfIQCVWMIQdvFp0UWzmjRzOiSs+/t4HUEz7
	K05n78p5ZeD2jYSxne0Ek7g4Ng981oy20hdI8Gv5w+3VmYnxr1+xZBQ9fp/szVazqmFjCPUFYKoNM
	PJEbxj0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrzYJ-0000000Fv4o-2jEv;
	Wed, 03 Apr 2024 12:17:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrzYG-0000000Fv4M-0b2P
	for barebox@lists.infradead.org;
	Wed, 03 Apr 2024 12:17:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rrzYE-0005Lt-O7; Wed, 03 Apr 2024 14:17:10 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rrzYE-00AAp3-BU; Wed, 03 Apr 2024 14:17:10 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rrzYE-007BsY-0x;
	Wed, 03 Apr 2024 14:17:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Marco Felsch <m.felsch@pengutronix.de>
In-Reply-To: <20240319154718.3510015-1-m.felsch@pengutronix.de>
References: <20240319154718.3510015-1-m.felsch@pengutronix.de>
Message-Id: <171214663029.1713911.7727808589932523427.b4-ty@pengutronix.de>
Date: Wed, 03 Apr 2024 14:17:10 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240403_051712_214337_C1AE9ACB 
X-CRM114-Status: UNSURE (   5.92  )
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
Subject: Re: [PATCH] console: make console_set_stdoutpath public
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 19 Mar 2024 16:47:18 +0100, Marco Felsch wrote:
> This can be an very useful helper for boards to setup the linux console
> boot param.
> 
> 

Applied, thanks!

[1/1] console: make console_set_stdoutpath public
      https://git.pengutronix.de/cgit/barebox/commit/?id=b36842429b6a (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



