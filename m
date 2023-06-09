Delivery-date: Fri, 09 Jun 2023 08:39:19 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7VmK-00GqHy-Cc
	for lore@lore.pengutronix.de; Fri, 09 Jun 2023 08:39:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7VmI-0002WJ-59
	for lore@pengutronix.de; Fri, 09 Jun 2023 08:39:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JWT+9C2ovyP4RqKf5f40S3VeHHp5eyza/ICBKCsFQgE=; b=omYNTmo+8r7ZXPR7eGLYXjCpMg
	JhKK42gW5kYje1ExlVzWAvO480QMdGKd6hvt7K+RV0iSHvBApvqYKRiWkNa/9jQdhpntoE1NyDeWH
	+wns0XRKXf/Pj3wlDc3nCigVofvi1E8V6/pMua7ycaMZbeXX5dvymB4qUSjFsm9K3U23crMT5Z/m6
	cNHUWC46zlzB9eBFXUU89aV203aqPBWE2v0MGxuMuzG4Nr8o826YZCyIFu7AKR0KsvNVMNwJ2mbcz
	lXMcH0g1nx2cudyYpiwGnrtRrXIkipsYPa5yzKmVwRQqxYG5GB/gV0zZHaYbhtYl4ZHsjT1GZAOOh
	xTJdsOhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q7VlH-00BtiJ-2U;
	Fri, 09 Jun 2023 06:38:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q7VlE-00Btgj-0E
	for barebox@lists.infradead.org;
	Fri, 09 Jun 2023 06:38:13 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1q7VlC-0002PY-Om; Fri, 09 Jun 2023 08:38:10 +0200
Message-ID: <8e0570ef-ea42-b9d7-1ebf-ffd17bd0d97d@pengutronix.de>
Date: Fri, 9 Jun 2023 08:38:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Content-Language: en-US
To: Denis Orlov <denorl2009@gmail.com>, barebox@lists.infradead.org
References: <20230607051155.3175-1-denorl2009@gmail.com>
 <20230607051155.3175-4-denorl2009@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230607051155.3175-4-denorl2009@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230608_233812_113048_5F2A26BA 
X-CRM114-Status: GOOD (  15.20  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 3/3] ci: add a job for testing 64BIT MIPS with labgrid
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 07.06.23 06:59, Denis Orlov wrote:
> Signed-off-by: Denis Orlov <denorl2009@gmail.com>

https://mirrors.edge.kernel.org/pub/tools/crosstool/files/bin/x86_64/13.1.0/
has a dedicated mips64 toolchain. Given that you don't touch the Containerfile,
I assume this means that the normal toolchain can compile both 32- and 64-bit?

If so,

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  .github/workflows/test-labgrid-pytest.yml | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/.github/workflows/test-labgrid-pytest.yml b/.github/workflows/test-labgrid-pytest.yml
> index 2c74150066..674e4251d1 100644
> --- a/.github/workflows/test-labgrid-pytest.yml
> +++ b/.github/workflows/test-labgrid-pytest.yml
> @@ -26,6 +26,10 @@ jobs:
>              lgenv: test/mips/qemu-malta_defconfig.yaml
>              defconfig: qemu-malta_defconfig
>  
> +          - ARCH: mips
> +            lgenv: test/mips/qemu-malta64el_defconfig.yaml
> +            defconfig: qemu-malta64el_defconfig
> +
>            - ARCH: x86
>              lgenv: test/x86/efi_defconfig.yaml
>              defconfig: efi_defconfig

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



