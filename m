Delivery-date: Fri, 23 Jan 2026 09:36:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vjCeo-004QAm-2q
	for lore@lore.pengutronix.de;
	Fri, 23 Jan 2026 09:36:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vjCen-0005lv-UF
	for lore@pengutronix.de; Fri, 23 Jan 2026 09:36:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xOnr/AiBKvDhMlaAJRkAvBP0tTMYqhQUV361BkkDvmo=; b=4XtNQSq49tpqYuF+sIEDm283ZX
	94q5Cfbgov9NAdahHo90J5hbp0Ptl3BQ9Jbb0vWS3NvILnHzTooC+WjFQ369LpqNjAC8lbxIUEe6k
	aK3EBhY6Rwndwo281J8aGA9+SeA2zf2DIYtIJ5Fsd1ciLp2BXN5bHs7mhQnHqIbNyRI+ZgYRb3XGU
	lMFlBk5VXv7ObO8VT/3GIjVrcTgAB4WSwt9It7/65030INFRMSF6hC0hY0qgvZRJ5uQ/giXOBEb+y
	qppNTpI39uytlHVpSAWiSV2GVikWV42wmMA9R8zvypxbWksHFqv3bHvPqR9tP8SkV93xUwZLAv0fl
	hdIo7zvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjCeL-00000008Ue7-2EXD;
	Fri, 23 Jan 2026 08:36:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vjCeI-00000008Udb-13b1
	for barebox@lists.infradead.org;
	Fri, 23 Jan 2026 08:36:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vjCeG-0005gX-Gb; Fri, 23 Jan 2026 09:36:08 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vjCeG-0023xp-3C;
	Fri, 23 Jan 2026 09:36:08 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vjCeG-0000000GGnD-16NZ;
	Fri, 23 Jan 2026 09:36:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20260120122713.633785-1-a.fatoum@pengutronix.de>
References: <20260120122713.633785-1-a.fatoum@pengutronix.de>
Message-Id: <176915736825.3877624.935471879216809681.b4-ty@pengutronix.de>
Date: Fri, 23 Jan 2026 09:36:08 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260123_003610_298671_96EBC568 
X-CRM114-Status: UNSURE (   6.63  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] net: make default netboot artifact directory
 configurable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 20 Jan 2026 13:27:03 +0100, Ahmad Fatoum wrote:
> The artifacts we currently look up exclusively via TFTP could be equally
> well in a virtfs, NFS or in the future a HTTP web server.
> 
> To allow users and tests to override the directory, move it into a
> globalvar.
> 
> 
> [...]

Applied, thanks!

[1/1] net: make default netboot artifact directory configurable
      https://git.pengutronix.de/cgit/barebox/commit/?id=22b04802237a (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



