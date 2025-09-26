Delivery-date: Fri, 26 Sep 2025 16:26:27 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v29P1-001MYS-1N
	for lore@lore.pengutronix.de;
	Fri, 26 Sep 2025 16:26:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v29P0-00039g-JC
	for lore@pengutronix.de; Fri, 26 Sep 2025 16:26:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wKrpXQDzjI4lC//f/0OTzBziu2hdX3FXhSdbaPdrFYo=; b=VQv7j9+bO0wHBhHeOmR5bLIPfT
	C9tXk0N/kGTOKTNQ6AMiUPhOUXmaoq9oPxH+7jGowlmR5IWPQkoolUcJA+k6gPf+SzkCeP12a4D7J
	rR0KJ+bMrDMnEu116Jl5ezV/ndRW1wphkZwPLsaUMpHYZByz+DpU6hwNBChPGy1ecw++JxWGm2l+X
	Yz/dgRD2BlE2eCgfJlPxOFETtL2i8VI6DB3W2XJHFi2PNctJ0G7rNKn7WvchKmCqw0gDDDRCpiTjE
	WO0ALpJzgNLEdVV70BalcuIFXkHZAl04/Rera952iu9ILgEWEEW/ldU+KJ8FQScz0jSFamT4ptPRp
	MsDmqNuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v29OW-00000001yNh-3iee;
	Fri, 26 Sep 2025 14:25:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v29OU-00000001yM8-3SZC
	for barebox@lists.infradead.org;
	Fri, 26 Sep 2025 14:25:56 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1v29OS-0002zu-FJ; Fri, 26 Sep 2025 16:25:52 +0200
Message-ID: <bd290731-fc60-4ec0-b091-cef811d4e057@pengutronix.de>
Date: Fri, 26 Sep 2025 16:25:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>,
 Tobias Waldekranz <tobias@waldekranz.com>,
 Ahmad Fatoum <a.fatoum@barebox.org>
References: <20250926-tlv-integration-v1-0-45dc68b9b602@pengutronix.de>
 <20250926-tlv-integration-v1-3-45dc68b9b602@pengutronix.de>
Content-Language: en-US
From: Jonas Rebmann <jre@pengutronix.de>
In-Reply-To: <20250926-tlv-integration-v1-3-45dc68b9b602@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250926_072554_869286_DCF03458 
X-CRM114-Status: GOOD (  26.85  )
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
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/7] test: move dm-verity testdata generation to fixture
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi all,

On 2025-09-26 12:14, Jonas Rebmann wrote:
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
> ---
>   scripts/generate_testfs.sh | 44 ---------------------------------------
>   test/py/test_dm.py         | 51 ++++++++++++++++++++++++++++++++++++++++++++--
>   2 files changed, 49 insertions(+), 46 deletions(-)
> 
> diff --git a/scripts/generate_testfs.sh b/scripts/generate_testfs.sh
> index 1c358ff846..3c200bd401 100755
> --- a/scripts/generate_testfs.sh
> +++ b/scripts/generate_testfs.sh
> @@ -28,47 +28,3 @@ generate_fit()
>   	       ${KBUILD_OUTPUT}/testfs/barebox-gzipped.fit
>   }
>   [ -f .github/testfs/${KBUILD_DEFCONFIG}-gzipped.its ] && generate_fit

It took me some time to figure out why this patch broke CI.

With the set -e in this script, this last line of fit generation logic
should have been

   [ -f .github/testfs/${KBUILD_DEFCONFIG}-gzipped.its ] && generate_fit || true

given the intent here is instead of erroring out, to just skip fit
generation if the its does not exist.

The only reason CI didn't break when Tobias added mipsel and riscv, for
which no .github/testfs/${KBUILD_DEFCONFIG}-gzipped.its exist, in commit
739a1a7855f5 ("ci: pytest: Open up testfs to more consumers than the FIT
test"), is that the github workflow (incorrectly) invokes the script
with exec. This is why only when this check became the last line of the
script, the error return code propagated into github ci.

I would like to drop scripts/generate_testfs.sh entirely in v2,
migrating the generate_fit logic to a pytest fixture too.

The reason I haven't yet is mainly that there we cannot rely on
KBUILD_DEFCONFIG to select the test data.

I thought about selecting the its from something in barebox_config or
something in strategy.qemu instead. Any suggestions?

And I'd like to also move those testfs files out of .github. I would
like to consider the pytest tests something more than just artifacts of
the github workflow.

As this excursion into cleanup around the integration tests is getting a
bit more involved than I hoped, I'm happy about feedback already while
I'm working on v2.

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
> index 8bdacf7b4e..837881f4af 100644
> --- a/test/py/test_dm.py
> +++ b/test/py/test_dm.py
> @@ -4,10 +4,57 @@ import re
>   import pytest
>   from .helper import of_get_property
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
> +        pytest.skip(f"Skip dm tests due to missing dependency: {e}")
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
> +
> +def test_dm_verity(barebox, dm_testdata):
> +    barebox.run_check("cd /mnt/9p/testfs/dm")
>   
>       # Since commands run in a subshell, export the root hash in a
>       # global, so that we can access it from subsequent commands
> 

Regards,
Jonas

-- 
Pengutronix e.K.                           | Jonas Rebmann               |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |


