Delivery-date: Wed, 02 Jul 2025 08:14:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uWqjL-00DD59-0M
	for lore@lore.pengutronix.de;
	Wed, 02 Jul 2025 08:14:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uWqjK-0004za-G6
	for lore@pengutronix.de; Wed, 02 Jul 2025 08:14:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=P9AjNWpiWDnB7RKQua9ArSrA7m/HY4S8Uz8wUgkfVv4=; b=QL1J/va/i1y29Df7hwbGcTTmb2
	ErM3kB1QXNqH7Iu816f208NnEkCXACoM0pd9FsQs7OYgTnrrrVz7xmehgw0WoDF2Lsc+fSC/awpR/
	8ALDnh6ppM6AWKhBgFQwtU4Lr2hDreUvPKK6VTBpivrPe7hb6WpS8bC5rqpBl9i4X+PlmOJpSmrWl
	CKRk8UUVI5FEQey6Qs+bqG4dTaLiMMxQeslU+wL1X6icufmqF+7EBxZeOb3jtpT3Qxb77Q5XUuOUO
	Ye0dpdV6gbglbTw9pyV1bwIsqH7pknJTy5tnRnb+7J7cPOpYjFD/hrhfaR6KZFNy+kapTfKtTn5x/
	Ip2r8E9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWqif-00000007NO9-2gye;
	Wed, 02 Jul 2025 06:13:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uWqib-00000007NMg-3kYb
	for barebox@lists.infradead.org;
	Wed, 02 Jul 2025 06:13:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uWqia-0004MD-4p; Wed, 02 Jul 2025 08:13:16 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uWqiZ-006OJM-36;
	Wed, 02 Jul 2025 08:13:15 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uWqiZ-00Fzch-2u;
	Wed, 02 Jul 2025 08:13:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 Marco Felsch <m.felsch@pengutronix.de>
In-Reply-To: <20250630-arm-optee-early-helper-v2-0-c8cce3ae42b0@pengutronix.de>
References: <20250630-arm-optee-early-helper-v2-0-c8cce3ae42b0@pengutronix.de>
Message-Id: <175143679589.3811754.18100215175629866625.b4-ty@pengutronix.de>
Date: Wed, 02 Jul 2025 08:13:15 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250701_231317_936056_53133D03 
X-CRM114-Status: GOOD (  13.11  )
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
Subject: Re: [PATCH v2 00/14] i.MX6 TZASC and OP-TEE early helpers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Mon, 30 Jun 2025 09:45:42 +0200, Sascha Hauer wrote:
> This series combines Marcos "i.MX6Q TZASC and OP-TEE early helpers" [1]
> and my series fixing chainloading barebox on OP-TEE enabled i.MX6ul
> platforms [2] into one.
> 
> Changes to Marcos series are:
> 
> - rename imx6q_tzc380_is_enabled() to imx6q_tzc380_is_bypassed() as the
>   function really only detects if the bypass bits are set correctly and
>   not if the tzc380 is enabled.
> - Add i.MX6UL variants of the functions Marco created for i.MX6DQ
> - Marco created a mx6_start_optee_early() function that has a
>   switch/case for the actual SoC type. I have split that into SoC
>   specific functions so that we don't have to carry the binary weight
>   when only one specific SoC is needed
> 
> [...]

Applied, thanks!

[01/14] pbl: add panic_no_stacktrace()
        https://git.pengutronix.de/cgit/barebox/commit/?id=f5fd3cdae3db (link may not be stable)
[02/14] arch: Allow data_abort_mask() in PBL
        https://git.pengutronix.de/cgit/barebox/commit/?id=556b99617e63 (link may not be stable)
[03/14] ARM: add exception handling support for PBL
        https://git.pengutronix.de/cgit/barebox/commit/?id=f33372b459da (link may not be stable)
[04/14] ARM: i.MX6QDL: add imxcfg helper to configure the TZASC1/2
        https://git.pengutronix.de/cgit/barebox/commit/?id=91676c7f402b (link may not be stable)
[05/14] ARM: i.MX6Q: add imx6_get_mmdc_sdram_size
        https://git.pengutronix.de/cgit/barebox/commit/?id=b026f6e83284 (link may not be stable)
[06/14] ARM: i.MX: add config symbol for TZASC
        https://git.pengutronix.de/cgit/barebox/commit/?id=836d9a5660a6 (link may not be stable)
[07/14] ARM: mach-imx: tzasc: add region configure helpers
        https://git.pengutronix.de/cgit/barebox/commit/?id=c1c7be3b9abc (link may not be stable)
[08/14] ARM: mach-imx: tzasc: add imx6[q|ul]_tzc380_early_ns_region1()
        https://git.pengutronix.de/cgit/barebox/commit/?id=fe96d6d530c5 (link may not be stable)
[09/14] ARM: mach-imx: tzasc: add imx6[q|ul]_tzc380_is_bypassed()
        https://git.pengutronix.de/cgit/barebox/commit/?id=e841bfdaaa61 (link may not be stable)
[10/14] ARM: i.MX: add imx6_can_access_tzasc()
        https://git.pengutronix.de/cgit/barebox/commit/?id=0ae719a914f3 (link may not be stable)
[11/14] ARM: optee-early: add mx6_start_optee_early helper
        https://git.pengutronix.de/cgit/barebox/commit/?id=5f233de5e090 (link may not be stable)
[12/14] ARM: i.MX: tqma6ulx: fix barebox chainloading with OP-TEE enabled
        https://git.pengutronix.de/cgit/barebox/commit/?id=1dcba06ff316 (link may not be stable)
[13/14] ARM: i.MX: Webasto ccbv2: fix barebox chainloading with OP-TEE enabled
        https://git.pengutronix.de/cgit/barebox/commit/?id=710fcf4bbdd5 (link may not be stable)
[14/14] ARM: i.MX: tqma6ulx: use ENTRY_FUNCTION_WITHSTACK
        https://git.pengutronix.de/cgit/barebox/commit/?id=0935e23f8e10 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



