Delivery-date: Fri, 08 Mar 2024 08:03:30 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1riUGQ-00DNSP-2T
	for lore@lore.pengutronix.de;
	Fri, 08 Mar 2024 08:03:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1riUGM-0006cQ-EZ
	for lore@pengutronix.de; Fri, 08 Mar 2024 08:03:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bgaGCUpMXRK/CRNh8IQgddrK1nx1moWYYXOjZnfetCM=; b=4FhsmaI/e9B2CEouAm/8ZW91sI
	Rp/iAKGYIpPwFnVX0wu/5BHbXJ41eFiqcTCscDyPMSk3ekwq9t//lls7SJMB6ZBJ8viz5lW9fCuy8
	3FQhOAhPafsrJkGnyv3XBCzkKSry4+PMCduFOtWBluPahA6sfWRyQaNFbhc5AnQizhZEqHZRPbI6r
	O94C2WaTl5dk7szE9NnCXKgs9FD6sAU1/BuRpwKxNmfUr3GBqEVjbEjNlzb3Hw67JnZ34lPbZ9tdF
	rFcCFEoVVb5eJ5bM4rjR/xPxYuHkHy3KMCVbznJ5zwm/Uin8JHOMiDGHMTDGFuKmhY1bD/vEDVHuW
	paz5KKtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riUFr-0000000842Z-05Ed;
	Fri, 08 Mar 2024 07:02:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riUFo-00000008423-0chH
	for barebox@lists.infradead.org;
	Fri, 08 Mar 2024 07:02:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1riUFm-00066r-T4; Fri, 08 Mar 2024 08:02:50 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1riUFm-0055N8-GX; Fri, 08 Mar 2024 08:02:50 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1riUFm-006dN4-1S;
	Fri, 08 Mar 2024 08:02:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240306184526.627028-1-a.fatoum@pengutronix.de>
References: <20240306184526.627028-1-a.fatoum@pengutronix.de>
Message-Id: <170988137045.1581193.7515833405195638101.b4-ty@pengutronix.de>
Date: Fri, 08 Mar 2024 08:02:50 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240307_230252_220192_F66C849B 
X-CRM114-Status: UNSURE (   8.11  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] mci: add comment about hardcoded 512 bytes for DDR
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 06 Mar 2024 19:45:26 +0100, Ahmad Fatoum wrote:
> Quoting eMMC 5.1 6.6.24 Dual Data Rate mode operation[1]:
> 
>   After the Device has been enabled for dual data rate operating mode, the
>   block length parameter of CMD17, CMD18, CMD24, CMD25 and CMD56
>   automatically default to 512 bytes and cannot be changed by CMD16
>   (SET_BLOCKLEN) command that becomes illegal in this mode.
> 
> [...]

Applied, thanks!

[1/1] mci: add comment about hardcoded 512 bytes for DDR
      https://git.pengutronix.de/cgit/barebox/commit/?id=248ac493112f (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



