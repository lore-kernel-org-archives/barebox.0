Delivery-date: Tue, 28 Oct 2025 09:24:16 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDf04-00Ccim-06
	for lore@lore.pengutronix.de;
	Tue, 28 Oct 2025 09:24:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vDf03-0003LZ-Gd
	for lore@pengutronix.de; Tue, 28 Oct 2025 09:24:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eGT6svGExkD6BNIQnGt3c/viGpzHdEMPEybgavJqD8g=; b=etIc/ymKm1EYJRRfKe/6RenOjN
	QDsCPAE1xKVxFfsPIZx30edKwiZL+CCTZGxCXzjCi7HLGmyn0TG/DBDjXz40+GvOsje8ZltAS7vOo
	EdZA7iS1bn6pzT251mte3fOeM8uCCCrowpf9yX0yRPpITEmeldSVY0fJ6PoMzlsHn2UGY/mut/XWx
	eAE4qh2SAc/xBqkXNE0paYTnEoR1ehlwWHw1XLJcqRYd1LsGSb42ERON0mSy9AQLuAuiryNgwX6kB
	8uSjDmKYCHcXhBSIC5Nij2SrWMGaRMbQ3nX1xNCtKtdsfneNAcZQ+RO+SvnOJKxOZyU87Bxqd6OVa
	4wKki2Uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDezc-0000000FXjk-0q0Y;
	Tue, 28 Oct 2025 08:23:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDezZ-0000000FXj2-1Po9
	for barebox@lists.infradead.org;
	Tue, 28 Oct 2025 08:23:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vDezX-0003Dt-Hu; Tue, 28 Oct 2025 09:23:43 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vDezX-005qO4-1C;
	Tue, 28 Oct 2025 09:23:43 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vDezX-0000000Blj1-3AUK;
	Tue, 28 Oct 2025 09:23:43 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251024090708.2476109-1-a.fatoum@pengutronix.de>
References: <20251024090708.2476109-1-a.fatoum@pengutronix.de>
Message-Id: <176163982330.2804936.21936771626993143.b4-ty@pengutronix.de>
Date: Tue, 28 Oct 2025 09:23:43 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251028_012345_378918_60B3727D 
X-CRM114-Status: UNSURE (   8.14  )
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
Subject: Re: [PATCH 1/5] Documentation: gen_commands.py: escape special
 characters
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 24 Oct 2025 11:07:02 +0200, Ahmad Fatoum wrote:
> commands/global.c has following line:
> 
>   BAREBOX_CMD_HELP_TEXT("Without options, print all global and env
>                         (prefixed with *) variables.")
> 
> which triggers a warning as the * has a special meaning in ReST and it
> is never terminated.
> 
> [...]

Applied, thanks!

[1/5] Documentation: gen_commands.py: escape special characters
      https://git.pengutronix.de/cgit/barebox/commit/?id=224116290eee (link may not be stable)
[2/5] Documentation: gen_commands.py: align whitespace with coding style
      https://git.pengutronix.de/cgit/barebox/commit/?id=7f7a2bb946cb (link may not be stable)
[3/5] Documentation: gen_commands.py: rework if statements for compactness
      https://git.pengutronix.de/cgit/barebox/commit/?id=fcae900f30b2 (link may not be stable)
[4/5] Documentation: gen_commands.py: use literal block for help text
      https://git.pengutronix.de/cgit/barebox/commit/?id=a59a5da1ca11 (link may not be stable)
[5/5] Documentation: gen_commands.py: escape name in title
      https://git.pengutronix.de/cgit/barebox/commit/?id=9d42fe52c4f9 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



