Delivery-date: Thu, 02 Nov 2023 08:22:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qyS1u-00Eu0z-Ir
	for lore@lore.pengutronix.de; Thu, 02 Nov 2023 08:22:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qyS1p-0002FO-LM
	for lore@pengutronix.de; Thu, 02 Nov 2023 08:22:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mZdmdLZuIemWhJaVd+sxRAwXishDaI6iThaac6NTl8E=; b=CJi9hFVT2pAkJiuB25QnrgLzzy
	ZJJv9HD4R4EmNu3SFWHfDLJ2cyQ4RCNNpmJOWB3sDbLWDVC5XwsprWBrD9+RJoG1nQZ9rJIBl+1/7
	lFUFd82wG+srQMC2Oqfh/lNba/JeqgL5pPjcffJVwi1xFpuPs0AOafawIkRXzPJ2Q8JD8zyna7k6h
	5UVjkIm1BcuysI87VnQmypmoVM/DBBW+kZruyL3ZEGBy1eKWHRsRMwnL/P5zScn5DqLoIuZgeHtaL
	HeaXWQKSlx3wKm5yrRa34lV/Z8b7AWH5oDPl3WCCFTmYzzzpqhHx/Kl43csVq40jS7+v1d+TdDMIr
	hTe0PEvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qyS04-008syB-0k;
	Thu, 02 Nov 2023 07:20:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qyRzu-008swe-0K
	for barebox@lists.infradead.org;
	Thu, 02 Nov 2023 07:20:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qyRzp-00024P-AM; Thu, 02 Nov 2023 08:20:05 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qyRzo-00614q-UQ; Thu, 02 Nov 2023 08:20:04 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qyRzo-00HYha-S4; Thu, 02 Nov 2023 08:20:04 +0100
Date: Thu, 2 Nov 2023 08:20:04 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231102072004.GM235829@pengutronix.de>
References: <20231023143122.1760217-1-a.fatoum@pengutronix.de>
 <20231023143122.1760217-4-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231023143122.1760217-4-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231102_002010_136572_FF6E1338 
X-CRM114-Status: GOOD (  15.56  )
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
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 3/3] test: self: add JSON Web Token tests
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Ahmad,

On Mon, Oct 23, 2023 at 04:31:23PM +0200, Ahmad Fatoum wrote:
> diff --git a/test/self/Makefile b/test/self/Makefile
> index 8168abf26278..24e78a186513 100644
> --- a/test/self/Makefile
> +++ b/test/self/Makefile
> @@ -9,6 +9,7 @@ obj-$(CONFIG_SELFTEST_OF_MANIPULATION) += of_manipulation.o of_manipulation.dtb.
>  obj-$(CONFIG_SELFTEST_ENVIRONMENT_VARIABLES) += envvar.o
>  obj-$(CONFIG_SELFTEST_FS_RAMFS) += ramfs.o
>  obj-$(CONFIG_SELFTEST_JSON) += json.o
> +obj-$(CONFIG_SELFTEST_JWT) += jwt.o jwt_test.pem.o
>  obj-$(CONFIG_SELFTEST_DIGEST) += digest.o
>  obj-$(CONFIG_SELFTEST_MMU) += mmu.o
>  obj-$(CONFIG_SELFTEST_STRING) += string.o
> @@ -16,5 +17,13 @@ obj-$(CONFIG_SELFTEST_SETJMP) += setjmp.o
>  obj-$(CONFIG_SELFTEST_REGULATOR) += regulator.o test_regulator.dtbo.o
>  obj-$(CONFIG_SELFTEST_TEST_COMMAND) += test_command.o
>  
> -clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.z
> +ifdef REGENERATE_RSATOC
> +
> +$(obj)/jwt_test.pem.c_shipped: $(src)/jwt_test.pem FORCE
> +	$(call if_changed,rsa_keys,$(basename $(target-stem)):$<,-s)
> +
> +endif
> +
> +clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.z *
                                                            ^^^

This additional '*' removes parts of the source tree when doing a make
clean. Was there any intention with this or is this just an accident?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


