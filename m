Delivery-date: Fri, 15 Mar 2024 08:09:39 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rl1hD-007Oz6-2m
	for lore@lore.pengutronix.de;
	Fri, 15 Mar 2024 08:09:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rl1hD-0007TP-BV
	for lore@pengutronix.de; Fri, 15 Mar 2024 08:09:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9b/WSD0J0BzR1/br7wZZ0YE9DIgUNnqA/gtfj0MuB7Y=; b=CkyuF1p/0gZsZKa0SADFOvWyD5
	qc39rQ3BR3L3d2lcszGfxzGOcihL4bocv8T/J3QDI6J9kzPqDMbE5p2i+lOopxX7CB+V76tY+cJJx
	60S7GZP22mZK39NZL2qOP07zPmzj5qQk6J3pPR4VbXs4r9E88cla28tZgFuIXat6eRdUsWSsS8Fi5
	tto9qSAEEUQUGTCZd/kS1SnAb13rtJtDqOa/AuzB6R4dPWJIJ4pipwjGtDZ1J2WTFqR0DeUpBo3TX
	ccH3erB2/EMhTW70jaix/04tvTGmRRH198cWvPXdVaUhT9m2VWf4nPUdq90F0cXUh4e3s+BfYASnz
	yC8dhipA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rl1gn-0000000GuQi-36eF;
	Fri, 15 Mar 2024 07:09:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rl1gk-0000000GuOz-17Bz
	for barebox@lists.infradead.org;
	Fri, 15 Mar 2024 07:09:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rl1gi-0007Cc-US; Fri, 15 Mar 2024 08:09:08 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rl1gi-006SdA-Hx; Fri, 15 Mar 2024 08:09:08 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rl1gi-00888s-1b;
	Fri, 15 Mar 2024 08:09:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240313144136.2157496-1-a.fatoum@pengutronix.de>
References: <20240313144136.2157496-1-a.fatoum@pengutronix.de>
Message-Id: <171048654849.1937905.5848935190853036288.b4-ty@pengutronix.de>
Date: Fri, 15 Mar 2024 08:09:08 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240315_000910_388944_CED39761 
X-CRM114-Status: UNSURE (   7.56  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master 1/2] ARM: i.MX8MQ: fix early boot hang
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 13 Mar 2024 15:41:35 +0100, Ahmad Fatoum wrote:
> Commit 6ea731079140 ("ARM: i.MX8MQ: Streamline lowlevel startup code")
> changed i.MX8MQ PBL code to mimic the code introduced for later i.MX8M
> variants. The mimicry went a bit too far though and it exchanged i.MX8MQ
> boot source lookup with that of the i.MX8MN. Fix this to avoid the boot
> hanging with:
> 
>   Unhandled bootsource BOOTSOURCE_0
> 
> [...]

Applied, thanks!

[1/2] ARM: i.MX8MQ: fix early boot hang
      https://git.pengutronix.de/cgit/barebox/commit/?id=a4d3c0b78250 (link may not be stable)
[2/2] pmdomain: imx: gpc2: ignore missing regulators
      https://git.pengutronix.de/cgit/barebox/commit/?id=7ef7a95ac49e (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



