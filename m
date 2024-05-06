Delivery-date: Mon, 06 May 2024 08:33:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s3ruM-005e0Q-0o
	for lore@lore.pengutronix.de;
	Mon, 06 May 2024 08:33:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s3ruK-0005Ii-BM
	for lore@pengutronix.de; Mon, 06 May 2024 08:33:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3I3Pnn0vM/SjzdFE2692xynpedOGm6QUwq0k1lV89SY=; b=PME7UI+9hN2Iy4yulZTTSfWVo9
	G1K21g48jnSKEGQHXCgkOFbY5r2G9UMU/Sr6zsAvUBuQa6JDmkzPnVvpuHp74KMyxZ43JoRwJnKCc
	4/NBoJhY4CKGQNSheajSPz13byEvouKFMPGcsr3qNFXivXGL6KCx7Dvxa+ANeJwddAsO/+qZK4rS3
	T6ZVNoGVEyoYSk5N1f+5DstPjPCpTbASyHbMUZ2bkpALrlqIPzHJ0yQWl9W2jU92zVtXzTXlCU43T
	R1b1NZxUK1hOlCcwxw2s42bEQXfa4K6P7tsakjENJ6VqWduKkvjiWUGrkGBtXDiOVO+ebZPlS4rlV
	SET+G5BA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3rtw-00000006Jna-1txF;
	Mon, 06 May 2024 06:32:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3rtt-00000006JmJ-0GwM
	for barebox@lists.infradead.org;
	Mon, 06 May 2024 06:32:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s3rtr-0005Ae-Km; Mon, 06 May 2024 08:32:35 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s3rtr-00GDBX-8B; Mon, 06 May 2024 08:32:35 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s3rtr-001OHE-0d;
	Mon, 06 May 2024 08:32:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: mfe@pengutronix.de
In-Reply-To: <20240503103230.1367842-1-a.fatoum@pengutronix.de>
References: <20240503103230.1367842-1-a.fatoum@pengutronix.de>
Message-Id: <171497715519.331591.620226712013489169.b4-ty@pengutronix.de>
Date: Mon, 06 May 2024 08:32:35 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240505_233237_137913_A77A5F84 
X-CRM114-Status: UNSURE (   8.39  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/3] firmware: support optional firmware in barebox
 proper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 03 May 2024 12:32:28 +0200, Ahmad Fatoum wrote:
> For firmware used in the prebootloader, missing firmware is handled
> according to the CONFIG_MISSING_FIRMWARE_ERROR symbol:
> 
>   - If set, barebox will throw an error when assmebling the final image
>     with a list of missing firmware
> 
>   - If unset, a warning will be printed for each barebox image that
>     can't be built due to missing firmware and all
> 
> [...]

Applied, thanks!

[1/3] firmware: support optional firmware in barebox proper
      https://git.pengutronix.de/cgit/barebox/commit/?id=bd29a3aa7e2a (link may not be stable)
[2/3] ARM: layerscape: add helpful runtime warning when firmware is missing
      https://git.pengutronix.de/cgit/barebox/commit/?id=9e436059695a (link may not be stable)
[3/3] ci: test: remove generation of dummy firmware
      https://git.pengutronix.de/cgit/barebox/commit/?id=8dc8635d90cb (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



