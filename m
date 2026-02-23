Delivery-date: Mon, 23 Feb 2026 10:17:57 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuS4i-004mOx-17
	for lore@lore.pengutronix.de;
	Mon, 23 Feb 2026 10:17:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuS4i-0001LX-MM
	for lore@pengutronix.de; Mon, 23 Feb 2026 10:17:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=W1mZPcGekQlQTLSdPWHrTqCgbEeenw8holnBPsQvEnY=; b=uYoyTNnz4ecq93kbZG9m8INy8r
	rpvEjLqnOhb+o1TOVpDXPXCMKnNvvZg5KZ6smar+a3+UJloDqulUlttBPp65iQZfTd1v43u0qztX3
	iyVt8c12LuYImYNQQIS3lSj6ti9ZohLAUybqqgGsRRqvM8+h2e5bbsJKx+hNdLHoWFfHfKdhmXUda
	4REvQWNk+FudUP5z9ZoFR0MgbZlPNCUSuK/TLa0EGRCOaMcJcWV4lDw0BFnP88LbY88nC3yo9K9xZ
	mJS9K42hg8vpZbey2kD159bcm9oowXiRxYJt0S661nE6F9u9UsDeVNDcitNOELHH62w9MfboLow0e
	J+qRVgng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuS4L-0000000HWHo-0MXo;
	Mon, 23 Feb 2026 09:17:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuS4I-0000000HWHM-0QZm
	for barebox@lists.infradead.org;
	Mon, 23 Feb 2026 09:17:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuS4G-0001FL-MI; Mon, 23 Feb 2026 10:17:28 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuS4F-002Chg-0U;
	Mon, 23 Feb 2026 10:17:28 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuS4G-00000000nfY-1pw8;
	Mon, 23 Feb 2026 10:17:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Jonas Rebmann <jre@pengutronix.de>
In-Reply-To: <20260217-scripts-compile-commands-hack-v1-1-85afb2af566b@pengutronix.de>
References: <20260217-scripts-compile-commands-hack-v1-1-85afb2af566b@pengutronix.de>
Message-Id: <177183824843.190921.18306060571432323587.b4-ty@pengutronix.de>
Date: Mon, 23 Feb 2026 10:17:28 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_011730_144860_C93819AF 
X-CRM114-Status: UNSURE (   9.25  )
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
Subject: Re: [PATCH] Makefile: include scripts/ in compile_commands.json
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 17 Feb 2026 14:56:41 +0100, Jonas Rebmann wrote:
> Although in many cases, C files in scripts/ would, because they rely on
> the host toolchain and no unusual compiler flags, work fine in clangd
> without a compile commands database, the (typically cross) compile
> commands of the first entry in compile_commands.json are applied as
> defaults once generated via `make compile_commands.json`.
> 
> As valid .cmd files are already present in scripts/ and
> gen_compile_commands.py supports reading all cmd files in a subtree
> recursively, simply add scripts to the gen_compile_commands.py
> invocation. All enabled code in scripts/ is now properly covered by
> compile_commands.json
> 
> [...]

Applied, thanks!

[1/1] Makefile: include scripts/ in compile_commands.json
      https://git.pengutronix.de/cgit/barebox/commit/?id=6c054d0060b9 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



