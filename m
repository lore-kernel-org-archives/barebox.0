Delivery-date: Tue, 02 Apr 2024 10:21:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rrZOQ-0035LS-1p
	for lore@lore.pengutronix.de;
	Tue, 02 Apr 2024 10:21:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rrZOO-0003st-IN
	for lore@pengutronix.de; Tue, 02 Apr 2024 10:21:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZxO0n2gDsOCoEGO3M0nOuqkpVOV+3ClT7Bp5S3ZQkZQ=; b=jkVdomSSJWJIpzvxfn1N3qXn6T
	A/06h0GefH+vNGdAJhDJ36DsXnGIJU6jnYdS6y4DQrOLVGFmOYeJBuxC9x2jaIdsOSNIcQ5qPA4eb
	ZfHEowg8lxlPJ3vwp3KrpG8qRVEzrdU/S2b9Sk3FJtak1Vsx7NFqSRvPcx1guUTR4WKfNQ+Z8uc3u
	wPUPy8MTAYVR8KVYTc0viHs6R5fdcr8J9jdYM3nh6Qv/tLJKsPKuX4K+v8glpzke42OnTPXJyyO5m
	9yq0evkhrRaJynXW+Hndb0ObCX0ZNec/1LC0YyA8byaY6vJHlH5wzbCTrPTtHIqr1KMQ9erRVis12
	qrbk+ARw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrZNX-0000000ADFR-2EJp;
	Tue, 02 Apr 2024 08:20:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrZNU-0000000ADEz-3Xli
	for barebox@lists.infradead.org;
	Tue, 02 Apr 2024 08:20:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rrZNS-0002xl-3E; Tue, 02 Apr 2024 10:20:18 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rrZNR-009wfM-MZ; Tue, 02 Apr 2024 10:20:17 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rrZNR-00DrbM-1z;
	Tue, 02 Apr 2024 10:20:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Steffen Trumtrar <s.trumtrar@pengutronix.de>
In-Reply-To: <20240326-worktree-barebox-bosch-be-ppm4-v1-0-7ea75c487348@pengutronix.de>
References: <20240326-worktree-barebox-bosch-be-ppm4-v1-0-7ea75c487348@pengutronix.de>
Message-Id: <171204601761.3304297.6851593123903463454.b4-ty@pengutronix.de>
Date: Tue, 02 Apr 2024 10:20:17 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240402_012020_920280_AD9A7E08 
X-CRM114-Status: UNSURE (   7.62  )
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
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/2] mci: fix warning and linker error
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 26 Mar 2024 12:50:40 +0100, Steffen Trumtrar wrote:
> This series fixes the following warning in mci-core:
> 
>    drivers/mci/mci-core.c:1455:17: warning: the address of 'status' will always evaluate as 'true' [-Waddress]
> 
> And the following linker error:
> 
>    arm-v7a-linux-gnueabihf-ld: drivers/mci/arasan-sdhci.o: in function `arasan_zynqmp_sdcardclk_set_phase': drivers/mci/arasan-sdhci.c:467: undefined reference to `zynqmp_pm_set_sd_tapdelay'
>    arm-v7a-linux-gnueabihf-ld: drivers/mci/arasan-sdhci.c:472: undefined reference to `zynqmp_pm_sd_dll_reset'
>    arm-v7a-linux-gnueabihf-ld: drivers/mci/arasan-sdhci.o: in function `arasan_zynqmp_sampleclk_set_phase': drivers/mci/arasan-sdhci.c:372: undefined reference to `zynqmp_pm_sd_dll_reset'
>    arm-v7a-linux-gnueabihf-ld: /home/str/work/customers/bosch.be.ppm2/worktree/barebox/bosch.be.ppm2/drivers/mci/arasan-sdhci.c:398: undefined reference to `zynqmp_pm_set_sd_tapdelay'
>    make[1]: *** [Makefile:900: .tmp_barebox1] Error 1
> 
> [...]

Applied, thanks!

[1/2] mci: mci-core: fix mci_switch_status call
      https://git.pengutronix.de/cgit/barebox/commit/?id=7818608d7e69 (link may not be stable)
[2/2] mci: arasan: fix build for non-ZynqMP
      https://git.pengutronix.de/cgit/barebox/commit/?id=98bfb54c0a0f (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



