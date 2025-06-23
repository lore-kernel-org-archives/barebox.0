Delivery-date: Mon, 23 Jun 2025 10:57:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uTczF-00AD5P-1N
	for lore@lore.pengutronix.de;
	Mon, 23 Jun 2025 10:57:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uTczE-0003JJ-QQ
	for lore@pengutronix.de; Mon, 23 Jun 2025 10:57:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MnJxmEXft9DWZEQqUWuTtq8XWizML8HlmS3B4gJSe1M=; b=LbqLoBBSiZv5Sf+d26+sZtQOFp
	4dmDIAWwwu9V5CtOkKuDfnmtojxF1Myn+TMKv0+pZ2wgorsVoBix/HGYfccx3f7wT2NrygNCEdOmm
	kDl1/TjW0DlyLWJtyq452mHUGoZ2vuV9CM+kSCKLf+ElyYLVe2jjBLPqKZNuxlTKY4oC+u+9oFqsM
	uUVjQRLNz0YniFswvKViXjNyHrnXvaWc9OZ/N19FvAv8VtVK447D1o0abg0FzVTlPP7G+Ewj8ducQ
	FyaMoTDHRMa3MtfhIo9Tjr4UrXUEp5ijt5ZCbw9RRU54kYfU+SE2iNeaBRitQFmcd8agqpxibWCAB
	A5JZXbLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTcyn-0000000256V-0NUh;
	Mon, 23 Jun 2025 08:56:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTcgP-000000021VY-1InY
	for barebox@lists.infradead.org;
	Mon, 23 Jun 2025 08:37:42 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uTcgN-0000Zc-V4; Mon, 23 Jun 2025 10:37:40 +0200
Message-ID: <0354f477-bcf0-4feb-b838-8a49b53428d0@pengutronix.de>
Date: Mon, 23 Jun 2025 10:37:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Ahmad Fatoum <a.fatoum@barebox.org>, barebox@lists.infradead.org
References: <20250623062641.3529615-1-a.fatoum@barebox.org>
 <20250623062641.3529615-3-a.fatoum@barebox.org>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20250623062641.3529615-3-a.fatoum@barebox.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250623_013741_358056_C3699911 
X-CRM114-Status: GOOD (  18.79  )
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
Subject: Re: [PATCH 2/3] test: py: test mount/unmount of pstore file system
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 6/23/25 08:26, Ahmad Fatoum wrote:
> The file system internals were recently touched to enable easier porting
> of the 9P file system. This led to regressions[1][2] that broke
> unmounting a volumes.

I pivoted from testing with pstore to ramfs as I needed to create a
file. Sascha, could you s/pstore/ramfs/ in the commit message title?

Thanks,
Ahmad

> 
> Add a simple regression test that would have caught the two described
> issues.
> 
> [1]: a3ef153fdf26 ("fs: unreference path on file close")
> [2]: aef3b0134519 ("fs: unreference path in canonicalize_path()")
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
> ---
>  arch/arm/configs/multi_v5_v6_defconfig |  1 +
>  arch/arm/configs/multi_v7_defconfig    |  1 +
>  arch/arm/configs/multi_v8_defconfig    |  1 +
>  test/py/test_mount.py                  | 21 +++++++++++++++++++++
>  4 files changed, 24 insertions(+)
>  create mode 100644 test/py/test_mount.py
> 
> diff --git a/arch/arm/configs/multi_v5_v6_defconfig b/arch/arm/configs/multi_v5_v6_defconfig
> index 2afc072e129c..91d3a63e85ab 100644
> --- a/arch/arm/configs/multi_v5_v6_defconfig
> +++ b/arch/arm/configs/multi_v5_v6_defconfig
> @@ -38,6 +38,7 @@ CONFIG_CMD_GO=y
>  CONFIG_CMD_RESET=y
>  CONFIG_CMD_UIMAGE=y
>  CONFIG_CMD_PARTITION=y
> +CONFIG_CMD_FINDMNT=y
>  CONFIG_CMD_UBIFORMAT=y
>  CONFIG_CMD_EXPORT=y
>  CONFIG_CMD_LOADENV=y
> diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
> index 4fb696a10626..726afe8ce6c5 100644
> --- a/arch/arm/configs/multi_v7_defconfig
> +++ b/arch/arm/configs/multi_v7_defconfig
> @@ -143,6 +143,7 @@ CONFIG_CMD_RESET=y
>  CONFIG_CMD_UIMAGE=y
>  CONFIG_CMD_BOOTCHOOSER=y
>  CONFIG_CMD_PARTITION=y
> +CONFIG_CMD_FINDMNT=y
>  CONFIG_CMD_UBIFORMAT=y
>  CONFIG_CMD_EXPORT=y
>  CONFIG_CMD_DEFAULTENV=y
> diff --git a/arch/arm/configs/multi_v8_defconfig b/arch/arm/configs/multi_v8_defconfig
> index 3d3f3254df20..a487d331d04e 100644
> --- a/arch/arm/configs/multi_v8_defconfig
> +++ b/arch/arm/configs/multi_v8_defconfig
> @@ -89,6 +89,7 @@ CONFIG_CMD_RESET=y
>  CONFIG_CMD_UIMAGE=y
>  CONFIG_CMD_BOOTCHOOSER=y
>  CONFIG_CMD_PARTITION=y
> +CONFIG_CMD_FINDMNT=y
>  CONFIG_CMD_EXPORT=y
>  CONFIG_CMD_DEFAULTENV=y
>  CONFIG_CMD_LOADENV=y
> diff --git a/test/py/test_mount.py b/test/py/test_mount.py
> new file mode 100644
> index 000000000000..33608a3b6ddb
> --- /dev/null
> +++ b/test/py/test_mount.py
> @@ -0,0 +1,21 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +
> +from .helper import skip_disabled
> +
> +
> +def test_findmnt_umount(barebox, barebox_config):
> +    skip_disabled(barebox_config, "CONFIG_CMD_FINDMNT")
> +
> +    barebox.run_check("mount -t ramfs none /tmp")
> +    findmnt_out1 = barebox.run_check("findmnt /tmp")
> +    barebox.run_check("umount /tmp")
> +
> +    assert len(findmnt_out1) == 2
> +
> +
> +def test_echo_umount(barebox):
> +    barebox.run_check("mount -t ramfs none /tmp")
> +    barebox.run_check("echo -o /tmp/file test")
> +    barebox.run_check("umount /tmp")
> +
> +    # Nothing to assert, we are happy if this is reached without exception

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



