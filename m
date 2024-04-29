Delivery-date: Mon, 29 Apr 2024 19:42:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s1V1F-0082Pz-04
	for lore@lore.pengutronix.de;
	Mon, 29 Apr 2024 19:42:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s1V1E-00081s-DU
	for lore@pengutronix.de; Mon, 29 Apr 2024 19:42:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9c9Yz+1tOX33Ykz7KNG0an/d5QYujBcXtivf6STsuvM=; b=nlQ/d5JIxwgTHDYg24UvbslyKg
	R64AkQ8zz8jLK+Z9e2absOvHlhqqT+GAyyAOk87y8JlaTSWKq31BOEH8ZjNWc8wnjzVF8hxI9HR2r
	mpdn885P/4p5N5jQrLOUusTSNv3NHCvtKR+sMfs/K0/ckfdhpwZBJM4M6TyxKq1iYss2DXFTUtCVm
	zkGvYpjm1q6pC+lo5AgFwnKC/9IVabiDUYxu3pB+s8uLwxr5KIijLnw4SllsjtZEcFT1GkxFnaLe4
	V/jI4zYKy637ROwulIFCLKC1tZVuyq49kKBMf1dWU/2cGmpdS2Q0uiW8L3lzs6uFHEo2ScqYN/j96
	y+Uci1ug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1V0c-00000003lFH-3uyH;
	Mon, 29 Apr 2024 17:41:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1V0Y-00000003lEa-3XZx
	for barebox@lists.infradead.org;
	Mon, 29 Apr 2024 17:41:44 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s1V0W-0007qo-Kd; Mon, 29 Apr 2024 19:41:40 +0200
Message-ID: <d360f4d9-dcfe-406a-8dbf-3fce88794f01@pengutronix.de>
Date: Mon, 29 Apr 2024 19:41:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>,
 barebox@lists.infradead.org
References: <lyv840ku39.fsf@ensc-pc.intern.sigma-chemnitz.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <lyv840ku39.fsf@ensc-pc.intern.sigma-chemnitz.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240429_104142_918371_E73A617B 
X-CRM114-Status: GOOD (  12.70  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: imx8: 'struct dram_timing_info' incompatibilities
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Enrico,

On 29.04.24 18:32, Enrico Scholz wrote:
> Hi,
> 
> commit e6234f90 ("ddr: Initial i.MX9 support") adds unconditionally
> fields to the dram timing info object (include/soc/imx/ddr.h):
> 
> |  struct dram_timing_info {
> |       ...
> | +	/* fsp config */
> | +	struct dram_fsp_cfg *fsp_cfg;
> | +	unsigned int fsp_cfg_num;
> 
> 
> However, the iMX8 ATF ([1]) does not have this field and DRAM related
> SMC calls like
> 
> |	arm_smccc_smc(FSL_SIP_DDR_DVFS, 0x11, i, 0, 0, 0, 0, 0, &res);
> 
> in the NXP busfreq-imx8mq.c driver will fail [2].
> 
> 
> Am I missing something here or should the dram_timing_info table somehow
> translated between these architectures (e.g. in dram_config_save())?

No, you are right. See the patch I shortly before:
https://lore.barebox.org/barebox/20240429141610.3556452-1-a.fatoum@pengutronix.de/T/#u

Cheers,
Ahmad

> 
> 
> 
> Enrico
> 
> Footnotes:
> [1]  https://github.com/nxp-imx/imx-atf/blob/lf_v2.8/plat/imx/imx8m/include/dram.h
> 
> [2]  typical message: "imx_busfreq: probe of busfreq failed with error -22"
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



