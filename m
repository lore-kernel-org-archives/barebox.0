Delivery-date: Fri, 27 Jun 2025 17:09:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uVAiC-00Beot-2A
	for lore@lore.pengutronix.de;
	Fri, 27 Jun 2025 17:09:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uVAiC-0004i8-0r
	for lore@pengutronix.de; Fri, 27 Jun 2025 17:09:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4x+iyo6dLLnIODdT89YMJBwUikzZsKkHVpRz07IzuR8=; b=z+JG1F75wDijyXSy66cDzDCDzF
	1G+MZDmuEl28mtIZxNkNW6PsDXOIUcEIiqb/jFqs1ABr48pzyBZov6MrCdJ1iM7EldKhBaNidHa/e
	UpTIUXyBt1eIKadihWV3+L5HLnRXrpZIAKLKWA1g5IYG5Wv6IvxvSLVQZLqLNc4tC4EF5E+XLFkH5
	tb7pYperw2I+4r4BoR92iokEKyNN6PnWWl+V7wvaJ/rqHrG0flJJtHeBUfvapE0t7GaOB9U6bAm+A
	LdLocH3gpWGpQUMTQ/EYhf9IZC+ldXfW4s6upJbed+xR1r3Ig12y8z8RS16ll41e/c3AgVFJFGoJN
	3MUMEH5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uVAhl-0000000F10r-1239;
	Fri, 27 Jun 2025 15:09:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uVAGG-0000000EwD7-0wvD
	for barebox@lists.infradead.org;
	Fri, 27 Jun 2025 14:41:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uVAGE-0007Jt-UL; Fri, 27 Jun 2025 16:41:02 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uVAGE-005dJg-2Q;
	Fri, 27 Jun 2025 16:41:02 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uVAGE-0053mj-2C;
	Fri, 27 Jun 2025 16:41:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Roland Hieber <rhi@pengutronix.de>
In-Reply-To: <20250625105145.3626715-1-rhi@pengutronix.de>
References: <20250625105145.3626715-1-rhi@pengutronix.de>
Message-Id: <175103526268.1206162.15885047669230891912.b4-ty@pengutronix.de>
Date: Fri, 27 Jun 2025 16:41:02 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250627_074104_269847_BECE82F3 
X-CRM114-Status: UNSURE (   7.52  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/3] doc: user: rename appendix section and keep it as
 last entry
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 25 Jun 2025 12:51:43 +0200, Roland Hieber wrote:
> This additional appendix section describes how to set up the development
> host. Adjust its title to reflect its contents. An appendix also looks
> bad in the middle of a table of contents, so move it to the bottom.
> Rename the file accordingly.
> 
> 

Applied, thanks!

[1/3] doc: user: rename appendix section and keep it as last entry
      https://git.pengutronix.de/cgit/barebox/commit/?id=aa3dba7d2269 (link may not be stable)
[2/3] doc: user: usb: link to syntax when explaining the partition variables
      https://git.pengutronix.de/cgit/barebox/commit/?id=17580910e8d4 (link may not be stable)
[3/3] doc: user: net: document Fastboot over UDP usage
      https://git.pengutronix.de/cgit/barebox/commit/?id=b48ff0a003e8 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



