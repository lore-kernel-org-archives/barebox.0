Delivery-date: Mon, 09 Mar 2026 16:22:19 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vzcR0-009mrl-2h
	for lore@lore.pengutronix.de;
	Mon, 09 Mar 2026 16:22:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vzcR1-0004oy-6g
	for lore@pengutronix.de; Mon, 09 Mar 2026 16:22:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LJ8JGxDSNyrxoGvfR1yOnlYsbtwAG2vdlkInV10lt9w=; b=eDyEE6C1uY7gQlMfkN0/UxHlHf
	GrhSx/Fx5AxkT/HhFOrIwaxkrlXuGSzfJ2yKlfIzsCVFGtMYUFy1wN1na2HCPl4rQtAi4XuKKWcyE
	OvPG7kYxCob2FbVw9/+kSKt0K5CPNLEyqBaG0GMPK2/TfTFX6Fvb4cNZNCXXbhxAFX3pVazySIyYd
	zl5uk0lhG+IYVYxpDSNX3pbEUxIAc/X7Vl+D2Gb6cmjMfeTH3NpmCrj0DL8Uc3Iv5VW8kwwWpLEfT
	D51imLFBaXleaeT2eGzUVljEoI7YoDcSdLdmU19zvxTnGEVCnRCKFl+SJsAoTRMEGbH1Y0xQptZKd
	TBQIo2uA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzcQZ-00000007ahJ-38OS;
	Mon, 09 Mar 2026 15:21:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzcQX-00000007agM-0pFv
	for barebox@lists.infradead.org;
	Mon, 09 Mar 2026 15:21:50 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vzcQV-0004ij-HL; Mon, 09 Mar 2026 16:21:47 +0100
Message-ID: <e411ed96-4ba4-49cc-847b-f0b521605004@pengutronix.de>
Date: Mon, 9 Mar 2026 16:21:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>,
 barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: David Jander <david@protonic.nl>
References: <20260309-v2026-02-0-topic-imx8-ecc-v2-0-6aab6d795061@pengutronix.de>
 <20260309-v2026-02-0-topic-imx8-ecc-v2-4-6aab6d795061@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260309-v2026-02-0-topic-imx8-ecc-v2-4-6aab6d795061@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260309_082149_241524_D8EC824B 
X-CRM114-Status: GOOD (  12.83  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 4/4] arm: boards: protonic-imx8ml: Add ECC + scrubbing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 3/9/26 8:46 AM, Steffen Trumtrar wrote:
> +ENTRY_FUNCTION(start_prt_prt8ml_ecc, r0, r1, r2)
> +{
> +	imx8mp_cpu_lowlevel_init();
> +
> +	relocate_to_current_adr();
> +	setup_c();
> +
> +	prt_prt8ml_start(&prt8ml_dram_ecc_timing);

Taking the address of a global variable in a function that calls
relocate_to_* is not a good idea, see commit f36c980fd6e5 ("ARM: cpu:
add compiler barrier around unrelocated access") for an example where
GCC miscompiled such a pattern.

I would suggest you pass an ecc = true/false here and move taking the
address into the noinline function. I expect that the compiler should
optimize the other struct away. If not, you will have to define two
noinline functions instead...

Sorry about that, I hope we will get rid of this error prone wart in the
coming months, so that the board entry point runs with relocations
applied right away.

Thanks,
Ahmad

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



