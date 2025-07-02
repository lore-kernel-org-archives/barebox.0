Delivery-date: Wed, 02 Jul 2025 14:46:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uWwr1-00DIi9-0t
	for lore@lore.pengutronix.de;
	Wed, 02 Jul 2025 14:46:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uWwr0-0001yX-Md
	for lore@pengutronix.de; Wed, 02 Jul 2025 14:46:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kfbN1vIDCb2SOAt8ny+9xgqIf4bBK39cxeBoDaT7d5M=; b=PLzBLjyqUmtEyuSTX2SZg9Kfdy
	ItH6lFzCRkHpqDMucRgVU4lpl5VlutzzcMVYk+C2X86gSkuB9kZolO5Iym5t4lYV2g6AUMmb2gVap
	hygvplHCHv3qhV/Wf4okhO3V83kSirnnzJ13GVMATfR2smBotpUKngmfGmp67+zVbI/IiNV9GEG06
	+1tVDN94dMbdt1L+Ia5QS3PiPMnWV4wyeWf1b8G/8FACNowSYsfnkhN8LIBKzgH5CANXgpf5hUBGC
	wX4BhVrchj13kAqxYsKdO0YRK6RHCv7o97JV0YkpMdC5fUXwgP11ZDkCeazTiMx6qVuw9mxMpmV3p
	HosM1aAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWwqV-00000008LcY-3j3S;
	Wed, 02 Jul 2025 12:45:51 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWwZB-00000008Jy5-1zNB
	for barebox@bombadil.infradead.org;
	Wed, 02 Jul 2025 12:27:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:From:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=kfbN1vIDCb2SOAt8ny+9xgqIf4bBK39cxeBoDaT7d5M=; b=nlISOC4EkTPF0HeWcBxGbpHouT
	mqSSXptu1XnUEx+gTVHOs6EsLS8i1YX760kntv1iTwvhm075UfUaRqf0xbS5uW/+fqsTZg9bEKqlF
	GJeuRM0+aYbYlGyRu5CsLVYD89slJ9nTmZ+70ZLwHsByEt7hmt6GZwS4UUVy4PitHydJEE/YKui/y
	3LHFO7lWpw324RBYQJJmdZFyoCDZTtyW//+9cpvdK7TjWfzbqEK4cVAhSPKkUSKHhJEA7vibjeqRr
	BKOgFpZSyUEFvBMuVBfVuihhfs3GfN/O3/giRrj8DZSd3ihHFxvUaRSINKzN2hBcvRge9WJd2lirN
	Sf/Z4ZXQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWwZ7-00000007MGS-31eo
	for barebox@lists.infradead.org;
	Wed, 02 Jul 2025 12:27:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uWwYz-0006ei-A8; Wed, 02 Jul 2025 14:27:45 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uWwYz-006R28-0P;
	Wed, 02 Jul 2025 14:27:45 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uWwYz-001CLW-0D;
	Wed, 02 Jul 2025 14:27:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250702105947.2232095-1-a.fatoum@pengutronix.de>
References: <20250702105947.2232095-1-a.fatoum@pengutronix.de>
Message-Id: <175145926506.285365.12382265002393482551.b4-ty@pengutronix.de>
Date: Wed, 02 Jul 2025 14:27:45 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250702_132754_140958_842F7677 
X-CRM114-Status: UNSURE (   8.96  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master 1/2] mci: imx-esdhc: restore longer timeouts for
 idle
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Wed, 02 Jul 2025 12:59:46 +0200, Ahmad Fatoum wrote:
> Commit 02986964885c ("mci: imx-esdhc: implement esdhc_poll using
> sdhci_read32_poll_timeout") introduces sdhci_compute_timeout() which
> takes a default timeout, but that default timeout is ignored in the
> function.
> 
> Commit bbecd0b7bb7e ("mci: sdhci: add support for struct mci_data::timeout_ns")
> then makes use of this function and with this breaks the polling for DATA0
> line by reducing the original 2.5s timeout to SDHCI_CMD_DEFAULT_BUSY_TIMEOUT_NS
> which is 10ms.
> 
> [...]

Applied, thanks!

[1/2] mci: imx-esdhc: restore longer timeouts for idle
      https://git.pengutronix.de/cgit/barebox/commit/?id=e44d8628b582 (link may not be stable)
[2/2] mci: sdhci: fix too short timeout in sdhci_wait_idle_data
      https://git.pengutronix.de/cgit/barebox/commit/?id=848a56aa1559 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



