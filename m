Delivery-date: Tue, 22 Oct 2024 10:17:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t3A5O-007OLp-0f
	for lore@lore.pengutronix.de;
	Tue, 22 Oct 2024 10:17:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t3A5K-00043b-TR
	for lore@pengutronix.de; Tue, 22 Oct 2024 10:17:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8eQSn1dSjchB6BPsjV0hEldVCyefc1eLrHbm33/ZKC4=; b=0sEMIuObzLVWusiTN8JueiLsjf
	60nDrU8PJ3jFnUTb5oFU1CbVvy5JiiM5iwUXofnXJXAIbVn/I43p++MJvGIR63jbQdVgV99dm9ML6
	Cu2RW8ZR4HMKsXR2a2tDN4RM6qfWL7fOq+T12dxFwrVS0PAXWIefxmJVvINQQshJkb8VlKCzyyqyl
	IjnOWf7TsojLoE7MN71m6Gk2fGr+Amvmg4ICC4F7tUJizFfkCBLJUQXZgj1OfQC5GY7KmDLclvtiM
	30+onVQnvguo38PViusvzC0YEqfrUNy3UZWP65XjJbt/fkE34ZuVxzoEUVbWrmwxXpph43cNqOi8C
	WYaX6bAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3A4Z-0000000A8Oy-3yYi;
	Tue, 22 Oct 2024 08:16:59 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3A4S-0000000A8OT-466r
	for barebox@bombadil.infradead.org;
	Tue, 22 Oct 2024 08:16:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=8eQSn1dSjchB6BPsjV0hEldVCyefc1eLrHbm33/ZKC4=; b=VneSizGMIL3uXweLC+4+rWpahp
	i1HxyfrAnHd9wfqaNJ+CDdECP+/jwXZPtw3H42v2YJWK/FRVtz4IOjEkiKkpFCHsCWByZ+msGnqfu
	dXFsJpP5Wqi28SD7tsEzB+vnWVKd3VCEnyqcs/pwxIQhKAv63+Ke3ah7M0O+k7Mo+kYZbu7WOe2Y3
	blWGPxmCq+R22XpuE7PcVREcGfGGjpdYs4MnPju3ybU+XwFNEdr2itmX4NqHLNaEagPpLy8Krl/w7
	lQn0Mp+NlhJxKr3pO8bjpLbtRrP8DabGPHtMk5j6ncf1S/49CFYsOBz0owDTImEFuLlL1gFdkJwfa
	KRVcTZ2A==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3A4M-000000089r1-3Hk9
	for barebox@lists.infradead.org;
	Tue, 22 Oct 2024 08:16:50 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPV6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t3A4L-0003YS-QN; Tue, 22 Oct 2024 10:16:45 +0200
Message-ID: <34610877-ba1b-49af-9b07-ea1de8d8b783@pengutronix.de>
Date: Tue, 22 Oct 2024 10:16:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 "open list:BAREBOX" <barebox@lists.infradead.org>
References: <20241022-arm-layerscape-tfa-v2-0-69ac70ceb0ff@pengutronix.de>
 <20241022-arm-layerscape-tfa-v2-12-69ac70ceb0ff@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241022-arm-layerscape-tfa-v2-12-69ac70ceb0ff@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241022_091647_214110_E39AC64E 
X-CRM114-Status: GOOD (  16.85  )
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
Subject: Re: [PATCH v2 12/12] ARM: Layerscape: Update Documentation for TF-A
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 22.10.24 09:46, Sascha Hauer wrote:
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  Documentation/boards/layerscape.rst | 13 +++++++++++--
>  1 file changed, 11 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/boards/layerscape.rst b/Documentation/boards/layerscape.rst
> index ae089539e5..5791b86326 100644
> --- a/Documentation/boards/layerscape.rst
> +++ b/Documentation/boards/layerscape.rst
> @@ -37,13 +37,22 @@ Flashing to the eMMC is possible likewise::
>    In such a case, using eMMC and SD-Card at the same time is not possible.
>    Boot from QSPI to flash the eMMC.
>  
> +Get and Build the Trusted Firmware A
> +------------------------------------
> +
> +Get TF-A from https://github.com/ARM-software/arm-trusted-firmware.git and build with::
> +
> +  make PLAT=ls1046ardb
> +  cp build/ls1046ardb/release/bl31.bin ${barebox_srctree}/firmware/ls1046a-bl31.bin
> +
> +Although the binary is for a specific board (LS1046A-RDB) it should work on any other
> +board as well.
> +
>  Firmware Blobs
>  --------------
>  
>  Network: `fsl_fman_ucode_ls1046_r1.0_106_4_18.bin <https://github.com/NXP/qoriq-fm-ucode/raw/integration/fsl_fman_ucode_ls1046_r1.0_106_4_18.bin>`_.
>  
> -PSCI Firmware: `ppa-ls1046a.bin <https://github.com/NXP/qoriq-ppa-binary/raw/integration/soc-ls1046/ppa.itb>`_.
> -
>  Layerscape boards
>  -----------------
>  
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


