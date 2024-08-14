Delivery-date: Wed, 14 Aug 2024 11:31:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1seALS-009UUN-0N
	for lore@lore.pengutronix.de;
	Wed, 14 Aug 2024 11:31:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1seALR-0008Uk-F3
	for lore@pengutronix.de; Wed, 14 Aug 2024 11:31:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5wEypJHQNAd+IpSNNxj7H7E26Rp1Aqttg7iLDd1lWwk=; b=oBgIOgnWt9z3gheXqxXEkZgd+s
	Z0JabCY2kU+GI6Viq9f8FLQrQ1MfuTXfcEcpzuxy6BhVEVCuQWw3XT3MXPEt9iXEFA2KHMvfpcfya
	WdKj9YMrOveOOjdvDQyWzuFKouU1IveG51aGwe3wx9VtHNwujlsEMKY5bR8/XDTJKjPZTbr922SSR
	j6YbTxe58YSgNx+wI8vJPVAmUroOSy9gxEkosxlhSaRhFyU8dudZQz82Js1Su+ypZapcu9JP/7aoR
	DfN2J/0XGe3eZbkDUtZKUaOAXwmzVZZVB/iNkpmpG54ZXPgtKC73ltIuV+5Ca3/Pl/KD+TEjOl23j
	Oe1NqY8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seALE-00000006OgG-0jJh;
	Wed, 14 Aug 2024 09:30:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1se9L3-00000006Egw-23f4
	for barebox@lists.infradead.org;
	Wed, 14 Aug 2024 08:26:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1se9L1-0001kS-Py; Wed, 14 Aug 2024 10:26:35 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1se9L1-000JlT-Cw; Wed, 14 Aug 2024 10:26:35 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1se9L1-005OiD-16;
	Wed, 14 Aug 2024 10:26:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240809141808.312818-1-a.fatoum@pengutronix.de>
References: <20240809141808.312818-1-a.fatoum@pengutronix.de>
Message-Id: <172362399534.1286620.10651712104820848544.b4-ty@pengutronix.de>
Date: Wed, 14 Aug 2024 10:26:35 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240814_012637_564057_604CB5F3 
X-CRM114-Status: UNSURE (   7.63  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH] common: make BOOTM_SHOW_TYPE depend on UIMAGE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 09 Aug 2024 16:18:08 +0200, Ahmad Fatoum wrote:
> The config option only controls whether some extra uImage tags are
> displayed extracted by calling functions in image.c.
> 
> Rename image.c to uimage_types.c to make clear that it is
> uImage-specific and hide the option when UIMAGE is not enabled.
> 
> 
> [...]

Applied, thanks!

[1/1] common: make BOOTM_SHOW_TYPE depend on UIMAGE
      https://git.pengutronix.de/cgit/barebox/commit/?id=d33b8775bc97 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



