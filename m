Delivery-date: Tue, 07 Oct 2025 11:08:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v63gA-005Bvf-1C
	for lore@lore.pengutronix.de;
	Tue, 07 Oct 2025 11:08:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v63g9-0000Si-Na
	for lore@pengutronix.de; Tue, 07 Oct 2025 11:08:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=poUznAMGHJ7jzLNJBui35UGsVsQtutAFfbDbSTWajCU=; b=CJpDR2bCU46EFsvXd/rcwI6lCY
	MRmeJ6EnqHiUI7p1yKx1JaW1r6IXyecDQWRTXH1sJZKSw1oPAkkKX7Tu5wocnmRh3YB61ZyYkFRIQ
	XKO8irw81UeAdQLjaBaw+WyHk21JygpbPDesTiFFCarlLbHbH9vhdf1AtsTth0VPOVloU8CcNOPjQ
	+BTg48hdcDwvwz+Xf3e8oueWk0Wh/0VZmu1RuNvJ46eRPZQnzmZdad9HliWvdvoDAaAWex6dJSRHf
	AgWH5nlK76gatw9yEkM/CNSX+Vy5YE/JJ8W7nH3boEUBhHn4hiu6dDT3vsVCpD4qz0CJMxDNFUggA
	8twn2reg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v63fg-00000001fcF-0mbc;
	Tue, 07 Oct 2025 09:07:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v63fe-00000001fbs-1Su9
	for barebox@lists.infradead.org;
	Tue, 07 Oct 2025 09:07:47 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v63fc-0000N2-Q6; Tue, 07 Oct 2025 11:07:44 +0200
Message-ID: <343c5b89-a439-4c79-a84d-283d8d64e622@pengutronix.de>
Date: Tue, 7 Oct 2025 11:07:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jonas Rebmann <jre@pengutronix.de>, Sascha Hauer
 <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
Cc: Tobias Waldekranz <tobias@waldekranz.com>
References: <20250929-tlv-integration-v2-0-55f75da7e670@pengutronix.de>
 <20250929-tlv-integration-v2-1-55f75da7e670@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250929-tlv-integration-v2-1-55f75da7e670@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251007_020746_436013_0E5C6A9F 
X-CRM114-Status: GOOD (  20.02  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/9] test: when testfs feature is available, always
 enable it
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 9/29/25 10:03 AM, Jonas Rebmann wrote:
> Add 9pfs devices to the qemu commandline on all platforms that support
> it (multi_v7, multi_v8) so tests relying upon it can be ran without
> specifying --fs testfs=${KBUILD_OUTPUT}/testfs.
> 
> Moving logic out of the github workflow into pytest makes integration
> tests more accessible to developers.
> 
> Introduce the fixture in existing test and drop obsolete test.
> 
> Signed-off-by: Jonas Rebmann <jre@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  .github/workflows/test-labgrid-pytest.yml | 3 ---
>  conftest.py                               | 6 ++++++
>  test/py/test_dm.py                        | 6 +-----
>  test/py/test_fit.py                       | 4 ----
>  4 files changed, 7 insertions(+), 12 deletions(-)
> 
> diff --git a/.github/workflows/test-labgrid-pytest.yml b/.github/workflows/test-labgrid-pytest.yml
> index ccf8ae172c..604f1db2fb 100644
> --- a/.github/workflows/test-labgrid-pytest.yml
> +++ b/.github/workflows/test-labgrid-pytest.yml
> @@ -116,9 +116,6 @@ jobs:
>            grep -wq '\(QEMUDriver\|ExternalConsoleDriver\):' "$i" || continue
>  
>            extraargs="${{matrix.lgargs}}"
> -          if grep -wq 'testfs' "$i"; then
> -            extraargs="${extraargs} --fs testfs=${KBUILD_OUTPUT}/testfs"
> -          fi
>  
>            cfg=$(basename $i .yaml)
>            echo "Testing $cfg"
> diff --git a/conftest.py b/conftest.py
> index 06321c938d..00969e62df 100644
> --- a/conftest.py
> +++ b/conftest.py
> @@ -208,6 +208,12 @@ def strategy(request, target, pytestconfig):
>      for arg in pytestconfig.option.qemu_arg:
>          strategy.append_qemu_args(arg)
>  
> +    if "testfs" in features:
> +        if not any(fs and fs[0] == "testfs" for fs in pytestconfig.option.qemu_fs):
> +            testfs_path = os.path.join(os.environ["LG_BUILDDIR"], "testfs")
> +            pytestconfig.option.qemu_fs.append(["testfs", testfs_path])
> +            os.makedirs(testfs_path, exist_ok=True)
> +
>      for i, fs in enumerate(pytestconfig.option.qemu_fs):
>          if virtio:
>              path = fs.pop()
> diff --git a/test/py/test_dm.py b/test/py/test_dm.py
> index a9debd85b5..8bdacf7b4e 100644
> --- a/test/py/test_dm.py
> +++ b/test/py/test_dm.py
> @@ -6,11 +6,7 @@ from .helper import of_get_property
>  
>  
>  
> -def test_dm_verity(barebox):
> -    _, _, returncode = barebox.run("ls /mnt/9p/testfs")
> -    if returncode != 0:
> -        pytest.xfail("skipping test due to missing --fs testfs=")
> -
> +def test_dm_verity(barebox, testfs):
>      barebox.run_check("cd /mnt/9p/testfs")
>  
>      # Since commands run in a subshell, export the root hash in a
> diff --git a/test/py/test_fit.py b/test/py/test_fit.py
> index 1a23a53a32..08d5feba5c 100644
> --- a/test/py/test_fit.py
> +++ b/test/py/test_fit.py
> @@ -19,10 +19,6 @@ def test_fit(barebox, env, target, barebox_config):
>      if 'testfs' not in env.get_target_features():
>          pytest.xfail("testfs feature not specified")
>  
> -    _, _, returncode = barebox.run("ls /mnt/9p/testfs")
> -    if returncode != 0:
> -        pytest.xfail("skipping test due to missing --fs testfs=")
> -
>      _, _, returncode = barebox.run(f"ls {fit_name('gzipped')}")
>      if returncode != 0:
>          pytest.xfail("skipping test due to missing FIT image")
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



