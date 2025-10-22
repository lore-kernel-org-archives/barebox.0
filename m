Delivery-date: Wed, 22 Oct 2025 17:55:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBbBt-00Aekh-1V
	for lore@lore.pengutronix.de;
	Wed, 22 Oct 2025 17:55:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBbBs-0002yD-Uo
	for lore@pengutronix.de; Wed, 22 Oct 2025 17:55:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pV2UZECBxaKfkgKyHZ7vCMyzEokCHk4PfRFy8joMvbw=; b=iGzCpywwHe5jLyyquu9nLK7wB2
	XDhAWHRdPRO9hA2VIEiG010UH632fGP/5uXcGqmsGd6vHuReJpqCPVZIK8H2/J/2k6KIQ6ENc3sYx
	r48nCZ+LN5q/5WCf5B+/MHH6xQDsvitVn8unmRRs6vh0k/WlPp7GnOIruPZsTSsk+1xLGOrsXijE/
	dtCIbqxakHWn5t9LscmXnUt19XFsQi11XYTqVYKe1g6acgjZWfH2ZK84VJEkLIf2X+mTWNBy1YIZu
	BIBJaoRTbljp8nv75Gu35tyA4Ja4gOBZ03Mv9X9bLA2DYXaNL5+xf0ttR1X3I5/EBk/Rnk+z7w4LQ
	iEWjpZ1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBbBS-00000003Sgh-1UlV;
	Wed, 22 Oct 2025 15:55:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBbBP-00000003Sg0-0oT0
	for barebox@lists.infradead.org;
	Wed, 22 Oct 2025 15:55:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vBbBN-0002qR-Eg; Wed, 22 Oct 2025 17:55:25 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vBbBN-004umf-0o;
	Wed, 22 Oct 2025 17:55:25 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vBbBN-000000020JN-0lAO;
	Wed, 22 Oct 2025 17:55:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251022141323.2233469-1-s.hauer@pengutronix.de>
References: <20251022141323.2233469-1-s.hauer@pengutronix.de>
Message-Id: <176114852517.477766.4452194103490868514.b4-ty@pengutronix.de>
Date: Wed, 22 Oct 2025 17:55:25 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251022_085527_327626_44E66236 
X-CRM114-Status: UNSURE (   6.32  )
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
Subject: Re: [PATCH] Kbuild: make sure to build fixdep first
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 22 Oct 2025 16:13:23 +0200, Sascha Hauer wrote:
> A host tool is built with:
> 
> $(host-csingle): $(obj)/%: $(src)/%.c FORCE
> 	$(call if_changed_dep,host-csingle)
> 
> if_changed_dep calls fixdep after successful compilation. fixdep is a
> host tool itself, so this only works when fixdep ist the first host tool
> that is being built.
> 
> [...]

Applied, thanks!

[1/1] Kbuild: make sure to build fixdep first
      https://git.pengutronix.de/cgit/barebox/commit/?id=e7f7ae79c4b8 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



