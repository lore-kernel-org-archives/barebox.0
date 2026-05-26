Delivery-date: Tue, 26 May 2026 08:39:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wRlS7-003ugt-2a
	for lore@lore.pengutronix.de;
	Tue, 26 May 2026 08:39:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wRlS7-00037y-8I
	for lore@pengutronix.de; Tue, 26 May 2026 08:39:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Gccs6GWKjgF8qBnXjXVvrjdv8pX9pNUof2CxtGyh71c=; b=Kyk7WrkiEau4rO6WNXxb+MJXcg
	cyvAnzbxgcaMl8jJOUq2W0CvgwlD3NtAPLRt1siCB3IWRXP7/Mvvl+Ok6Ftj++Dl3sQ2ZIKWgoA/f
	WhI/vb5w57xd6seejuEiQ/Ps/S/xcP/9UcH6j0GJeVHvzhMvY0uRgJjYoJw0sWj5SlVtkK50T1edQ
	wyZCIj4WGmpTg58p0rutU/au0OC8Ooc3nQYrkZNJN3ya0Sn5CnQALuJnKCcvwva6OgKrz8O3WsdQ5
	CvxJ8HLFqscmoid77LS9cpFpHbL9/BPmi4KA1gkKK8E0xTG4NBXMiSQ6WLDsxNqZ/eDQcwIJtBwpO
	sxYBncug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRlRA-00000001BSf-0UB1;
	Tue, 26 May 2026 06:38:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRlR6-00000001BRS-2VDG
	for barebox@lists.infradead.org;
	Tue, 26 May 2026 06:38:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wRlR4-0002ya-WB; Tue, 26 May 2026 08:38:43 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wRlR4-001sA4-1D;
	Tue, 26 May 2026 08:38:42 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wRlR4-0000000GXrT-3hF7;
	Tue, 26 May 2026 08:38:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260522072207.2265178-1-a.fatoum@pengutronix.de>
References: <20260522072207.2265178-1-a.fatoum@pengutronix.de>
Message-Id: <177977752287.3943334.12810612142296445158.b4-ty@pengutronix.de>
Date: Tue, 26 May 2026 08:38:42 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260525_233844_636194_0F593612 
X-CRM114-Status: UNSURE (   6.00  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] common: env: make ENV_HANDLING_AUTOPROBE
 default to INSECURE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 22 May 2026 09:22:06 +0200, Ahmad Fatoum wrote:
> The CONFIG_ prefix is not used inside Kconfig, but outside in Makefiles
> and preprocessor symbols.
> 
> Drop it, so ENV_HANDLING_AUTOPROBE correctly changes with regards to
> CONFIG_INSECURE=y.
> 
> 
> [...]

Applied, thanks!

[1/1] common: env: make ENV_HANDLING_AUTOPROBE default to INSECURE
      https://git.pengutronix.de/cgit/barebox/commit/?id=0504c72c4ecf (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



