Delivery-date: Mon, 01 Dec 2025 09:55:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vPzgr-006l30-0o
	for lore@lore.pengutronix.de;
	Mon, 01 Dec 2025 09:55:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vPzgq-0003m4-Od
	for lore@pengutronix.de; Mon, 01 Dec 2025 09:55:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JwlEbWmzNsPnRlKYdIwvaBtq0DHWbRG4aaxxZzsfBX0=; b=jw9E03olySQit0lP27Uy/3IJzz
	qKyodxtWWG9TXpr+5ks5kaj4FaCfaWjCy8a+J5KgoBPZ99ZnNe9Vt4LOy0G3C8C0ARTh3af0HTOQ+
	S2XcX3ZGVNb3lO/3gmqsHIWYvp0fDDe/3CyUa0SYzlxonidWw762kF+Wcq7S3rMHwl372WEC/S+sJ
	WJ52tc6wvRMpcPdDMs8/2jbN26RAYL4nfeFPLWJT5QxyTBzkiy1pAx8fzEKP9er+uUq/TSZlLIGCE
	mshPLk5boO6Zq7pQrd+EMlKSMDtBtXLcETctzY6s/gRH6rekvOqNTvQ4ZjDPsXQCP9+Qvls2hrGMc
	zykCkPKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vPzgS-00000003AXi-0LIO;
	Mon, 01 Dec 2025 08:55:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vPzgP-00000003AWl-0JOb
	for barebox@lists.infradead.org;
	Mon, 01 Dec 2025 08:54:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vPzgM-0003gL-4D; Mon, 01 Dec 2025 09:54:54 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vPzgL-003PZo-33;
	Mon, 01 Dec 2025 09:54:53 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vPzgL-00000000ZCn-3jDE;
	Mon, 01 Dec 2025 09:54:53 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20251128200957.361169-1-a.fatoum@barebox.org>
References: <20251128200957.361169-1-a.fatoum@barebox.org>
Message-Id: <176457929388.135318.12558970253630257880.b4-ty@pengutronix.de>
Date: Mon, 01 Dec 2025 09:54:53 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251201_005457_119120_AA0CAE82 
X-CRM114-Status: UNSURE (   5.17  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fixup! video: fsl-ldb: add ported driver from linux
 kernel
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 28 Nov 2025 21:09:56 +0100, Ahmad Fatoum wrote:
> video: fsl-ldb: fix unintended implicit fallthroughs
> 
> Coverity flagged this fallthroughs and they indeed look unintended.
> 
> 

Applied, thanks!

[1/1] fixup! video: fsl-ldb: add ported driver from linux kernel
      https://git.pengutronix.de/cgit/barebox/commit/?id=ea57ae858deb (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



