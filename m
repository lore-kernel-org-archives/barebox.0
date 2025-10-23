Delivery-date: Thu, 23 Oct 2025 09:38:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBpu1-00Asve-1G
	for lore@lore.pengutronix.de;
	Thu, 23 Oct 2025 09:38:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBpu0-0006rJ-ST
	for lore@pengutronix.de; Thu, 23 Oct 2025 09:38:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wkhvah8vd/8hU4NmHF+P1FgFjCF63qZuJEB4X7UOOCk=; b=wxZgd9HO+qWWTBtzWpQ3tWz2gQ
	1Z3Rin+sShmdYdiW4FYINbMwkoaJIGDHe7cpwDXafZ93LelYG0bC2tg24u+WvIgOvu5tNF/M1NfzC
	BVmrRoPzals9RR24AdT5oRfzFKJJOuSezxUlztjFhqr63XDTcemNmmYJZwZU5xg+W1+kKk4Vou+1J
	PQOH9OaQ1Oi+gXowAx8MRqbonAcdhI0KmD+ubJHVJnZ7ENpNHBRXRlz+47TIZpFkGI61FA048Ip8n
	VL2AWKYlePTs4DL8W43LdRenGvj2qA0iHbHxdzAFs9Ygo2WOUibCqQvHOytJej3Ouj//yiQSRH7eg
	tSXdC/QA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBptW-00000005OaN-0Mub;
	Thu, 23 Oct 2025 07:37:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBptU-00000005OZT-06wt
	for barebox@lists.infradead.org;
	Thu, 23 Oct 2025 07:37:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vBptQ-0006jI-RY; Thu, 23 Oct 2025 09:37:52 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vBptQ-0051Od-2A;
	Thu, 23 Oct 2025 09:37:52 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vBptQ-00000004lWZ-2ZNa;
	Thu, 23 Oct 2025 09:37:52 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251015092706.2358673-1-a.fatoum@pengutronix.de>
References: <20251015092706.2358673-1-a.fatoum@pengutronix.de>
Message-Id: <176120507260.1135972.7474310604321819651.b4-ty@pengutronix.de>
Date: Thu, 23 Oct 2025 09:37:52 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251023_003756_067120_16BBE7BE 
X-CRM114-Status: UNSURE (   7.76  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] commands: devinfo: print Deep Probe status for
 top-level machine device
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 15 Oct 2025 11:27:01 +0200, Ahmad Fatoum wrote:
> There is a log message when deep probe is disabled, but to make it
> easier to verify that it's enabled, let's introduce it as extra info
> in the devinfo command.
> 
> 

Applied, thanks!

[1/2] commands: devinfo: print Deep Probe status for top-level machine device
      https://git.pengutronix.de/cgit/barebox/commit/?id=0c31ce02f25c (link may not be stable)
[2/2] devinfo: print / as device tree node for the root node
      https://git.pengutronix.de/cgit/barebox/commit/?id=74494cef0010 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



