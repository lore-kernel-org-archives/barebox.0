Delivery-date: Thu, 29 Feb 2024 09:21:44 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfbfk-00F4xW-2a
	for lore@lore.pengutronix.de;
	Thu, 29 Feb 2024 09:21:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfbfj-0006Op-28
	for lore@pengutronix.de; Thu, 29 Feb 2024 09:21:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=m0jCJgoCTuDbZm99NmOPB2nGQcQG9568B96PLeLbGSA=; b=wR8EC9eyOqVOlt0mKlAa2d/Pl6
	JKdc1mfP+llW3F/pYr4c1vi5TRJVV6aYdi6TMr0ujMJbf2LYZUVuRi6hZ+Lpaidi5Biv98Ur/gso1
	neU81j1OZuXx+IE5ADC70rtpAN5DfRAQDXukIthCR9V/3LTHy/pVWIblMxhtGopFt7LNpnNYtflLi
	w6W1EB8N1/Lo4ePVfIMcfaiX/81Xsfx3MTea+sX4pg3iQhXsAWGbdZslNSnAldtvo6rOh1Ty+vmJj
	rjRAitz41imKoA3UwdmMOOnWuoymz6ry4OkFGW5IvTiCwy8WXb1A1BAwhOGxU6GeWCOaA068NzKwj
	I8xm6F6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfber-0000000Ccfm-43BP;
	Thu, 29 Feb 2024 08:20:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfbep-0000000CcfJ-04Aj
	for barebox@lists.infradead.org;
	Thu, 29 Feb 2024 08:20:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rfben-00069a-C1; Thu, 29 Feb 2024 09:20:45 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rfbem-003YFr-Vk; Thu, 29 Feb 2024 09:20:44 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rfbem-007019-2y;
	Thu, 29 Feb 2024 09:20:44 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: mfe@pengutronix.de
In-Reply-To: <20240228175128.2734265-1-a.fatoum@pengutronix.de>
References: <20240228175128.2734265-1-a.fatoum@pengutronix.de>
Message-Id: <170919484491.1668210.17980218685165333492.b4-ty@pengutronix.de>
Date: Thu, 29 Feb 2024 09:20:44 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240229_002047_091381_70C74446 
X-CRM114-Status: UNSURE (   7.75  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/2] ARM: i.MX8M: drop function prototype for removed
 imx8m_uid
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 28 Feb 2024 18:51:27 +0100, Ahmad Fatoum wrote:
> The i.MX8M UID and some other SoC-related info is now available over
> soc0.soc_uid and imx8m_uid's function definition was removed.
> 
> Therefore remove the prototype as well.
> 
> 

Applied, thanks!

[1/2] ARM: i.MX8M: drop function prototype for removed imx8m_uid
      https://git.pengutronix.de/cgit/barebox/commit/?id=92a798ed6b94 (link may not be stable)
[2/2] env: export getenv_ullx() helper
      https://git.pengutronix.de/cgit/barebox/commit/?id=3aac1a9dfc97 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



