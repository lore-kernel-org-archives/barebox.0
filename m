Delivery-date: Tue, 07 Oct 2025 11:08:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v63gn-005BwX-2u
	for lore@lore.pengutronix.de;
	Tue, 07 Oct 2025 11:08:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v63gn-0000a9-AR
	for lore@pengutronix.de; Tue, 07 Oct 2025 11:08:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PlQ4/LkTHBDMEbyt1V5buna6lzo4Wiwnezp95NaLe6g=; b=v2ySkjDE5plqsai8KdKD/1DIMP
	XPUMNHV0xIpDenjm1iJ5A7J79f9b2WSERPmQnFBbL3iOCLNJVlLh6U7X2g+zcIzDHOD7tUEnOwFUc
	F28+BEa7NJFYv51aFrBYZ1jTPbY7EB/4iRiMHUD+2wuJJpFvdj017CZAtaGa1ndHumoDDoUm92BzF
	/soTq9ggSyiAcc/wi9Yg7/PoUnn2rFkxiEbkbGHC5pMrgwlL/pe4V0p+qUdCBHz8h3fP8UpuLw8eQ
	MTqi1fU4H3eero/SpTVfWQx69aY16YMTt2Z7R0uByFmodcnKHv4fSHYEO//dMMEe/uS+NWNyh+l/3
	tRIpafyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v63gO-00000001fhy-2ch8;
	Tue, 07 Oct 2025 09:08:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v63gM-00000001fgu-1ULd
	for barebox@lists.infradead.org;
	Tue, 07 Oct 2025 09:08:31 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v63gK-0000UA-SU; Tue, 07 Oct 2025 11:08:28 +0200
Message-ID: <7f94c1cc-7371-48dd-ad48-02969a173ea7@pengutronix.de>
Date: Tue, 7 Oct 2025 11:08:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jonas Rebmann <jre@pengutronix.de>, Sascha Hauer
 <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
Cc: Tobias Waldekranz <tobias@waldekranz.com>
References: <20250929-tlv-integration-v2-0-55f75da7e670@pengutronix.de>
 <20250929-tlv-integration-v2-2-55f75da7e670@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250929-tlv-integration-v2-2-55f75da7e670@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251007_020830_430933_0A60F40B 
X-CRM114-Status: GOOD (  18.40  )
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
Subject: Re: [PATCH v2 2/9] test: provide testfs via fixture
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 9/29/25 10:03 AM, Jonas Rebmann wrote:
> Move the logic of providing testfs out of the tests and into a fixture.
> Pytest-modules that prepare testing data in their own fixtures should
> build on top of this.
> 
> Tests using the fixture will be skipped if the feature is unavailable;
> remove that check from existing tests.
> 
> Signed-off-by: Jonas Rebmann <jre@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  conftest.py         | 8 ++++++++
>  test/py/test_fit.py | 5 +----
>  2 files changed, 9 insertions(+), 4 deletions(-)
> 
> diff --git a/conftest.py b/conftest.py
> index 00969e62df..116beb5d14 100644
> --- a/conftest.py
> +++ b/conftest.py
> @@ -231,3 +231,11 @@ def strategy(request, target, pytestconfig):
>          strategy.force(state)
>  
>      return strategy
> +
> +@pytest.fixture(scope="session")
> +def testfs(strategy, env):
> +    if "testfs" not in env.get_target_features():
> +        pytest.skip("testfs not supported on this platform")
> +
> +    path = os.path.join(os.environ["LG_BUILDDIR"], "testfs")
> +    return path
> diff --git a/test/py/test_fit.py b/test/py/test_fit.py
> index 08d5feba5c..3b2b8ff871 100644
> --- a/test/py/test_fit.py
> +++ b/test/py/test_fit.py
> @@ -15,10 +15,7 @@ def generate_bootscript(barebox, image, name="test"):
>      return name
>  
>  
> -def test_fit(barebox, env, target, barebox_config):
> -    if 'testfs' not in env.get_target_features():
> -        pytest.xfail("testfs feature not specified")
> -
> +def test_fit(barebox, env, target, barebox_config, testfs):
>      _, _, returncode = barebox.run(f"ls {fit_name('gzipped')}")
>      if returncode != 0:
>          pytest.xfail("skipping test due to missing FIT image")
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



