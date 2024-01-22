Delivery-date: Mon, 22 Jan 2024 10:33:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rRqfw-00BHRb-3D
	for lore@lore.pengutronix.de;
	Mon, 22 Jan 2024 10:33:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rRqfx-00031b-MD
	for lore@pengutronix.de; Mon, 22 Jan 2024 10:33:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yI3VcAolGkz5IwENrglFEHb7iSeMBrtj75z0XOByeds=; b=a2WOjYPVE9oeSixyvF+ySwwBgD
	GgF9c4a0p9j7O7CdvKT2YNUbCswT4vOhzwpZY9CdKCsWgnuEh5Zc8i3cx0sTxIyHeSxqNjcDkF86D
	PhIqFcxztp5RjWVUPybTOuWfLYCag8xSeaoy7WQZd62tEXX5B9UxCtHHzfdrsA0QOMaH09ASay7hL
	VAjdqeClaP/e88rlcT0bdclquD/jyL+B7IspNlxdH2W1yH6IRCATwWjXPpSATznGUA0hP9zHVjIAF
	PIacTICqTEKVVsL6DsgltNkAWcAszTxg9iTfGGLUVmXrmS0FKY4IUY7XsMbqBvi9U2UBtdxzFRLIi
	xANTnIbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rRqet-00BIcI-10;
	Mon, 22 Jan 2024 09:31:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rRqeo-00BIb6-0H
	for barebox@lists.infradead.org;
	Mon, 22 Jan 2024 09:31:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rRqem-0002xH-Lx; Mon, 22 Jan 2024 10:31:52 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rRqel-001Yim-IQ; Mon, 22 Jan 2024 10:31:51 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rRqel-007yoX-1d;
	Mon, 22 Jan 2024 10:31:51 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Hans Christian Lonstad <hcl@datarespons.com>
In-Reply-To: <20240119224522.1399213-1-a.fatoum@pengutronix.de>
References: <20240119224522.1399213-1-a.fatoum@pengutronix.de>
Message-Id: <170591591150.1901999.3487105164925478242.b4-ty@pengutronix.de>
Date: Mon, 22 Jan 2024 10:31:51 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240122_013154_122517_319E4595 
X-CRM114-Status: GOOD (  10.26  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 0/3] soc: imx: featctrl: finalize support for i.MX8MP
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 19 Jan 2024 23:45:19 +0100, Ahmad Fatoum wrote:
> We only had preliminary feature controller support for i.MX8MP and
> support for detecting missing VPU, DSP, NPU, LVDS and CPUs was missing.
> 
> Add support for them, so barebox may fix up the kernel device tree to
> disable these nodes. This is especially important for the VPU and NPU as
> the kernel's blk-ctrl power domain driver may try to power them down as
> they are unused, which would make the SoC hang.
> 
> [...]

Applied, thanks!

[1/3] soc: imx: imx8m-featctrl: make header self-contained
      https://git.pengutronix.de/cgit/barebox/commit/?id=e21b25c8210e (link may not be stable)
[2/3] nvmem: ocotp: prepare adding tester3 support
      https://git.pengutronix.de/cgit/barebox/commit/?id=897ca1a97280 (link may not be stable)
[3/3] soc: imx: featctrl: finalize support for i.MX8MP
      https://git.pengutronix.de/cgit/barebox/commit/?id=aaea50bbcde2 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



