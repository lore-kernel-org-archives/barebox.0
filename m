Delivery-date: Thu, 23 Oct 2025 09:44:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBq0H-00At4Q-25
	for lore@lore.pengutronix.de;
	Thu, 23 Oct 2025 09:44:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBq0H-0007eK-56
	for lore@pengutronix.de; Thu, 23 Oct 2025 09:44:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XEngQ7DIBu2+0S6FskyVFlhCLPIUGbc3l14Gn/u7e14=; b=LYNjMTG29YyiOjsQOST694NR5E
	Da7a3df3/OAv4cVhttuIDhpszkXBPlXCMt6/6dbdNce0K+mUq48irAsTSHXHgR6SVZa6CZaxYuexp
	3MyR85JsCqPJ8/X0k+OT3x2xfk9EpqlZMFQf2tiTvD69dXDLEjr7LKi0DLfoodT/eeyMXAv5wbC/y
	W8YIfQqd8z6Ud81v7KPVUPPl7ih4EnNTXd6Ebu+3iRPC0s5yuOvUoW7v7odUvBQqVeC/OrSXTJT+1
	nA6wK4IY9BprRqZp7aGm+ViSR+9jh6DS5aq3tksNCL63FMh0RgK20OtEaSROwPz+C9Yyr2rDosadT
	lz/YzoHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBpzt-00000005PrE-21Cs;
	Thu, 23 Oct 2025 07:44:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBpzr-00000005Ppq-0C0I
	for barebox@lists.infradead.org;
	Thu, 23 Oct 2025 07:44:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vBpzp-0007Xs-59; Thu, 23 Oct 2025 09:44:29 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vBpzo-0051PA-39;
	Thu, 23 Oct 2025 09:44:28 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vBpzo-00000004lhJ-3oeB;
	Thu, 23 Oct 2025 09:44:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251023065943.2090602-1-a.fatoum@pengutronix.de>
References: <20251023065943.2090602-1-a.fatoum@pengutronix.de>
Message-Id: <176120546890.1136630.15970242003295764727.b4-ty@pengutronix.de>
Date: Thu, 23 Oct 2025 09:44:28 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251023_004431_086637_D2E9E9D7 
X-CRM114-Status: UNSURE (   5.13  )
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
Subject: Re: [PATCH] fixup! test: self: malloc: fix false positive when
 malloc store is registered
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 23 Oct 2025 08:59:43 +0200, Ahmad Fatoum wrote:
> test: self: malloc: fix false positive when using libc allocator
> 
> The initial memory pool allocated
> 
> 

Applied, thanks!

[1/1] fixup! test: self: malloc: fix false positive when malloc store is registered
      https://git.pengutronix.de/cgit/barebox/commit/?id=92dc4e4c516a (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



