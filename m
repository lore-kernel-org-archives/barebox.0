Delivery-date: Mon, 22 Sep 2025 17:46:41 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v0ikT-0060LB-24
	for lore@lore.pengutronix.de;
	Mon, 22 Sep 2025 17:46:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v0ikT-0004Ga-2c
	for lore@pengutronix.de; Mon, 22 Sep 2025 17:46:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=empWFsElLo3NGnwknfRXJNjd4ixyuCrDLFJ9c0UMw0A=; b=odJ0UGOAPw2a4yr4zxwYxLkNv+
	5fmLTmvpuvCnmBJ+P/4z4pxEaIsX8UcG5xsiDfYoUPOHcHJDUgzqS5+hn5URlDYNH5sjYBihar9vk
	9y0kHkNCl4A8QAac1mDrTCPPaYbgAe5xuUgK4/rwCGAWMG2GjNXoKkvHNHfuSNv8E+kMDd/w2Wyp3
	N/GY1H2K6mLae3yQwEOr82sezowPmJn8+qXNzyjnNhlYmjOCZVIEb1M4e1V23Jp2KJaVqAzADcjBt
	9c7OrGbr6tay0KlXmk+FosfWqLlpgNFydAHZQsrjtk6Jmf+aJ3uEf+6hW0lPEeDlwTOOittU1aBPi
	OqoBJ6JA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0ik2-0000000Asrt-3v2v;
	Mon, 22 Sep 2025 15:46:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0ik0-0000000AsrM-1ow1
	for barebox@lists.infradead.org;
	Mon, 22 Sep 2025 15:46:13 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v0ijz-0004Aa-0w; Mon, 22 Sep 2025 17:46:11 +0200
Message-ID: <b65f5060-c04c-4ace-8602-d48705c59701@pengutronix.de>
Date: Mon, 22 Sep 2025 17:46:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Tobias Waldekranz <tobias@waldekranz.com>, barebox@lists.infradead.org
References: <20250918074455.891780-1-tobias@waldekranz.com>
 <20250918074455.891780-12-tobias@waldekranz.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250918074455.891780-12-tobias@waldekranz.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250922_084612_478411_A19CE047 
X-CRM114-Status: GOOD (  15.73  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 11/11] ci: pytest: Enable device-mapper labgrid tests
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 18.09.25 09:43, Tobias Waldekranz wrote:
> For targets that support inclusion of the testfs, make sure to inject
> all config options needed to run the device mapper pytests.
> 
> Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  .github/workflows/test-labgrid-pytest.yml      | 4 ++++
>  common/boards/configs/enable_dm_testing.config | 9 +++++++++
>  2 files changed, 13 insertions(+)
>  create mode 100644 common/boards/configs/enable_dm_testing.config
> 
> diff --git a/.github/workflows/test-labgrid-pytest.yml b/.github/workflows/test-labgrid-pytest.yml
> index 6918ea1b98..ccf8ae172c 100644
> --- a/.github/workflows/test-labgrid-pytest.yml
> +++ b/.github/workflows/test-labgrid-pytest.yml
> @@ -87,6 +87,10 @@ jobs:
>            KCONFIG_ADD="${KCONFIG_ADD} CONFIG_CONSOLE_DISABLE_INPUT=n CONFIG_MALLOC_LIBC=y"
>          fi
>  
> +        if [ "${{ steps.used-features.outputs.testfs }}" = "true" ]; then
> +          KCONFIG_ADD="${KCONFIG_ADD} common/boards/configs/enable_dm_testing.config"
> +        fi
> +
>          ./MAKEALL -O ${KBUILD_OUTPUT} -l "" -v 0 ${{matrix.defconfig}}
>  
>          if [ ${{matrix.arch}} = "riscv" ]; then
> diff --git a/common/boards/configs/enable_dm_testing.config b/common/boards/configs/enable_dm_testing.config
> new file mode 100644
> index 0000000000..16c3f702c1
> --- /dev/null
> +++ b/common/boards/configs/enable_dm_testing.config
> @@ -0,0 +1,9 @@
> +CONFIG_FS_FAT=y
> +CONFIG_DISK=y
> +CONFIG_DM_BLK=y
> +CONFIG_DM_BLK_LINEAR=y
> +CONFIG_DM_BLK_VERITY=y
> +CONFIG_CMD_DMSETUP=y
> +CONFIG_CMD_VERITYSETUP=y
> +CONFIG_CMD_MD5SUM=y
> +CONFIG_CMD_READF=y


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


