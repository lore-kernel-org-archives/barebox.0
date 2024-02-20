Delivery-date: Tue, 20 Feb 2024 08:27:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcKXS-00Fibm-1M
	for lore@lore.pengutronix.de;
	Tue, 20 Feb 2024 08:27:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcKXR-0006KJ-Sm
	for lore@pengutronix.de; Tue, 20 Feb 2024 08:27:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WwYpFge7YqWGblEhDLJC5K2D2tLAURxF400teuRARyM=; b=fVv32me0/XdqC3o7GL2R3Urafq
	FTGCvJbQCA43KWcsYFV9Dva+JLnezzh4IEo7biMQkIeN0dJ3HSfSrPuNRTG3IUkgVHzRD6UZoqdZW
	2V/2MP8cgd5r/Rf4iCkWGcGr+W6VsmLwb4OshEjC0Qg45M8k3TzHCmduuXsBAwut5i4hDv+88vaDJ
	FAVnul+ACb3ij8n+mDGCtYXeqSe527g+4utElu8fCqnLWv9QV9SWH8KYwZIprOv8RdxcUeLnI1OW5
	Co1Mbhlh5vaazcZfhu6E2aHy60O4zV/nMpusLPVSAYh5tTJKoKmZb5HyfgGuwt19naiEiR3DzdKld
	b5rjWbBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcKWw-0000000DWGb-03Th;
	Tue, 20 Feb 2024 07:27:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcKWt-0000000DWGA-23Of
	for barebox@lists.infradead.org;
	Tue, 20 Feb 2024 07:27:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rcKWs-0006EW-8T; Tue, 20 Feb 2024 08:27:02 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rcKWr-001nc4-Rr; Tue, 20 Feb 2024 08:27:01 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rcKWr-002TFZ-2a;
	Tue, 20 Feb 2024 08:27:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240219172659.3796647-1-a.fatoum@pengutronix.de>
References: <20240219172659.3796647-1-a.fatoum@pengutronix.de>
Message-Id: <170841402179.588781.7122911611501895669.b4-ty@pengutronix.de>
Date: Tue, 20 Feb 2024 08:27:01 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240219_232703_560431_3651F41A 
X-CRM114-Status: GOOD (  10.76  )
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
Subject: Re: [PATCH] treewide: use dev_err_probe instead of comparisons
 against EPROBE_DEFER
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 19 Feb 2024 18:26:59 +0100, Ahmad Fatoum wrote:
> Drivers should not need to compare an error value against EPROBE_DEFER.
> We have a number of drivers doing that though to decide whether to print
> an error or not. This error message will be lost if the probe is
> deferred, so use dev_err_probe to store the error in that case.
> 
> While at it, we shorten the error messages a bit. dev_err_probe will
> already print the string 'error' before the error code string.
> 
> [...]

Applied, thanks!

[1/1] treewide: use dev_err_probe instead of comparisons against EPROBE_DEFER
      https://git.pengutronix.de/cgit/barebox/commit/?id=b305ee5e0439 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



