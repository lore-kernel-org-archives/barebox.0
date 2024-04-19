Delivery-date: Fri, 19 Apr 2024 08:25:43 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rxhgs-0075JC-37
	for lore@lore.pengutronix.de;
	Fri, 19 Apr 2024 08:25:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rxhgs-0000lC-EJ
	for lore@pengutronix.de; Fri, 19 Apr 2024 08:25:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NC8mQS54/1uTyAfrRjjSkdXNFZXDiZgLUcr2UrLmrCw=; b=C0Ht/8RVCni8HxhjVm6+XUF6Ei
	GRhkkcoyv/0z7A9ncF0U1X5X78TtMU/GPWupNDi5deLfQ+HcXyedZxg0zAb+2R8z6Qg8Bi+eSSBp7
	Zn5/XxIQxYL+gwihrJoRTkc+A/J+ixQ5L3BqwodM57gUd6xzzr40PbOEnPAw1zqXRetxpgqqKOaq3
	TKDnMhGvkeVX7S/Z244h4J9t1jS7GakUmxQxxObKkCYDppC34YNHaJgJ3vdNurotpyM5JuXkse+Py
	I3ZltLxiAyMb5/P7uSUtc1muZgFmnKhiRiltTA4zYEy08VwXm1fp1kEohSErkUO2cIb/mqkOSZeTl
	vr83BB8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxhgP-00000004bhE-0OX3;
	Fri, 19 Apr 2024 06:25:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxhgJ-00000004bfb-3J7H
	for barebox@lists.infradead.org;
	Fri, 19 Apr 2024 06:25:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rxhgH-0000Ak-0J; Fri, 19 Apr 2024 08:25:05 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rxhgG-00D6jE-Jb; Fri, 19 Apr 2024 08:25:04 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rxhgG-003l44-1k;
	Fri, 19 Apr 2024 08:25:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20240411071122.696683-1-s.hauer@pengutronix.de>
References: <20240411071122.696683-1-s.hauer@pengutronix.de>
Message-Id: <171350790453.895881.2283279834151664726.b4-ty@pengutronix.de>
Date: Fri, 19 Apr 2024 08:25:04 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240418_232507_872592_724F2ACB 
X-CRM114-Status: UNSURE (   6.53  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: i.MX: remove platform device registration helpers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 11 Apr 2024 09:11:22 +0200, Sascha Hauer wrote:
> With two exceptions the imx_add_* platform device registration helpers
> are no longer used, so remove them.
> In two cases a framebuffer is still registered with a helper function.
> Replace them with add_generic_device().
> 
> 

Applied, thanks!

[1/1] ARM: i.MX: remove platform device registration helpers
      https://git.pengutronix.de/cgit/barebox/commit/?id=0556365d0377 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



