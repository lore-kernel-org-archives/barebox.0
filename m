Delivery-date: Tue, 07 Oct 2025 11:09:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v63hg-005Bxm-2n
	for lore@lore.pengutronix.de;
	Tue, 07 Oct 2025 11:09:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v63hf-0000jU-VX
	for lore@pengutronix.de; Tue, 07 Oct 2025 11:09:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wyLmvPu6GW37ZXKRKfmRpKc8t4Jc44CegDpL+6tainE=; b=4KntU4st8sNCvYjgk7zusCRYHz
	mAh8+af6AYAzbgZbEQybftlHC60RROoEQP1CNibqp2hTYb+PjgjIBGw+63trr+1ys/vkNsE4b8IJ2
	s7pcIzAk64x5Z7RQuOGNPoxtqcpPluolsEIYbz6UmUhLxHjhvhJpeHt6VZelc6Fn53asooopApVMm
	k7DwPC98D5UTHCA6+uQj8QSFK3pZYcQdhVPDWUKLNGyAMBX9EWB7Oz13TWMAY3v0JwoYO75gQCkNT
	0STd3pXp0VPp2CB4M8ZQthwptY1UluoiCbV1tcNksPH6ZjihzLdbnbYOY4QLSYQtL6R1YiQizLX7a
	elBVARwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v63hF-00000001fmr-42Ef;
	Tue, 07 Oct 2025 09:09:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v63hD-00000001fmW-0abv
	for barebox@lists.infradead.org;
	Tue, 07 Oct 2025 09:09:24 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v63hB-0000eu-MT; Tue, 07 Oct 2025 11:09:21 +0200
Message-ID: <88317edc-fc62-4ac7-8277-4963b6325673@pengutronix.de>
Date: Tue, 7 Oct 2025 11:09:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jonas Rebmann <jre@pengutronix.de>, Sascha Hauer
 <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
Cc: Tobias Waldekranz <tobias@waldekranz.com>
References: <20250929-tlv-integration-v2-0-55f75da7e670@pengutronix.de>
 <20250929-tlv-integration-v2-3-55f75da7e670@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250929-tlv-integration-v2-3-55f75da7e670@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251007_020923_221996_DB39E5F4 
X-CRM114-Status: GOOD (  21.39  )
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
Subject: Re: [PATCH v2 3/9] test: move dm-verity testdata generation to
 fixture
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 9/29/25 10:03 AM, Jonas Rebmann wrote:
> Simplify barebox integration test setup by moving logic away from
> scripts/ and .github/.
> 
> Instead of generating testdata in separate scripts, they should be
> implemented as testfs fixtures which are automatically ran as part of
> the test suite.
> 
> Includes error handling and cleanup.
> 
> Signed-off-by: Jonas Rebmann <jre@pengutronix.de>

Acked-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  scripts/generate_testfs.sh | 44 -----------------------------------
>  test/py/test_dm.py         | 57 ++++++++++++++++++++++++++++++++++++++++++++--
>  2 files changed, 55 insertions(+), 46 deletions(-)
> 
> diff --git a/scripts/generate_testfs.sh b/scripts/generate_testfs.sh
> index e0a4013e05..d52772e6bf 100755
> --- a/scripts/generate_testfs.sh
> +++ b/scripts/generate_testfs.sh
> @@ -31,47 +31,3 @@ generate_fit()
>  if [ -f .github/testfs/${KBUILD_DEFCONFIG}-gzipped.its ]; then
>  	generate_fit
>  fi
> -
> -alias pad128k="dd if=/dev/zero bs=128k count=1 status=none"
> -
> -generate_dm_verity()
> -{
> -    work=$(mktemp -d)
> -    cd ${work}
> -
> -    # Create two dummy files; use lots of padding to make sure that
> -    # when we alter the contents of 'english' in root-bad, 'latin' is
> -    # still be readable, as their contents wont (a) share the same
> -    # hash block and (b) the block cache layer won't accedentally read
> -    # the invalid block.
> -
> -    pad128k  >latin
> -    echo -n "veritas vos liberabit" >>latin
> -    pad128k >>latin
> -
> -    pad128k  >english
> -    echo -n "truth will set you free" >>english
> -    pad128k >>english
> -
> -    truncate -s 1M good.fat
> -    mkfs.vfat good.fat
> -    mcopy -i good.fat latin english ::
> -
> -    veritysetup format \
> -		--root-hash-file=good.hash \
> -		good.fat good.verity
> -
> -    sed 's/truth will set you free/LIAR LIAR PANTS ON FIRE/' \
> -	<good.fat >bad.fat
> -
> -    cd -
> -    cp \
> -	${work}/good.fat \
> -	${work}/good.verity \
> -	${work}/good.hash \
> -	${work}/bad.fat \
> -	${KBUILD_OUTPUT}/testfs
> -
> -    rm -rf ${work}
> -}
> -generate_dm_verity
> diff --git a/test/py/test_dm.py b/test/py/test_dm.py
> index 8bdacf7b4e..adeb9cbe03 100644
> --- a/test/py/test_dm.py
> +++ b/test/py/test_dm.py
> @@ -4,10 +4,63 @@ import re
>  import pytest
>  from .helper import of_get_property
>  
> +import os, subprocess, shutil
>  
> +def pad128k(f):
> +    f.write(b"\0" * 128 * 1024)
>  
> -def test_dm_verity(barebox, testfs):
> -    barebox.run_check("cd /mnt/9p/testfs")
> +@pytest.fixture(scope="module")
> +def dm_testdata(testfs):
> +    path = os.path.join(testfs, "dm")
> +    os.makedirs(path, exist_ok=True)
> +    cwd = os.getcwd()
> +    os.chdir(path)
> +
> +    with open("latin", "wb") as f:
> +        pad128k(f)
> +        f.write(b"veritas vos liberabit")
> +        pad128k(f)
> +
> +    with open("english", "wb") as f:
> +        pad128k(f)
> +        f.write(b"truth will set you free")
> +        pad128k(f)
> +
> +    try:
> +        subprocess.run(["truncate", "-s", "1M", "good.fat"], check=True)
> +        subprocess.run(["mkfs.vfat", "good.fat"], check=True)
> +        subprocess.run(["mcopy", "-i", "good.fat", "latin", "english", "::"], check=True)
> +
> +        subprocess.run([
> +            "veritysetup", "format",
> +            "--root-hash-file=good.hash",
> +            "good.fat", "good.verity"
> +        ], check=True)
> +    except FileNotFoundError as e:
> +        os.chdir(cwd)
> +        shutil.rmtree(path)
> +        pytest.skip(f"missing dependency: {e}")
> +
> +    with open("good.fat", "rb") as f: data = f.read()
> +    with open("bad.fat", "wb") as f:
> +        f.write(data.replace(
> +            b"truth will set you free",
> +            b"LIAR LIAR PANTS ON FIRE"
> +        ))
> +
> +    os.chdir(cwd)
> +
> +    yield path
> +
> +    shutil.rmtree(path)
> +
> +@pytest.fixture(autouse=True)
> +def reset_pwd(barebox):
> +    yield
> +    barebox.run("cd")
> +
> +def test_dm_verity(barebox, dm_testdata):
> +    barebox.run_check("cd /mnt/9p/testfs/dm")
>  
>      # Since commands run in a subshell, export the root hash in a
>      # global, so that we can access it from subsequent commands
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



