Delivery-date: Sun, 28 Sep 2025 11:55:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v2o7l-0021CP-3D
	for lore@lore.pengutronix.de;
	Sun, 28 Sep 2025 11:55:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v2o7l-0006dF-1A
	for lore@pengutronix.de; Sun, 28 Sep 2025 11:55:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-ID:Date:References:In-Reply-To:Subject:To:From:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Qi0U5ATf6mdQ/H7AhmC35eT7dHAQv7JtuLRz1x4XUD0=; b=tV5vMjIj1s4nwME/SLIUwiS2ZF
	7wKxoCDG8y6zxm5Cv1wg/YUd+wzjKfq1nCzNxejme/ZlGCIBsBikHJM1oaE+HDzQzvobjH2VyY/8s
	92Vp9L+yb6AJTafeclTfh5Alq00xtKiRfj5K57SosNsjlSk74IWkH1aqtRyYVPcsog3ormvVCVN+/
	ZiHijFG3ntu5dxtbzXsYzsB2yAfiqUjvoHG8UTCgP+v7txmdjpv2Q/L6gScNMZAkVJ/pF/QgjGehq
	94inDQHO0DMHu3wHJu+KwoXjGl3msSYKr6yoHdejpNP7y4U7Pwf/svAV9b+JYXEUJt4fVRCLfArft
	rJmuk7+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v2o75-0000000EnUs-0M1Y;
	Sun, 28 Sep 2025 09:54:39 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v2o72-0000000EnST-1KAM
	for barebox@lists.infradead.org;
	Sun, 28 Sep 2025 09:54:38 +0000
Received: by mail-lj1-x234.google.com with SMTP id 38308e7fff4ca-33c9f2bcdceso35186361fa.2
        for <barebox@lists.infradead.org>; Sun, 28 Sep 2025 02:54:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=waldekranz-com.20230601.gappssmtp.com; s=20230601; t=1759053274; x=1759658074; darn=lists.infradead.org;
        h=mime-version:message-id:date:references:in-reply-to:subject:to:from
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Qi0U5ATf6mdQ/H7AhmC35eT7dHAQv7JtuLRz1x4XUD0=;
        b=jwLC0WLC2HIMXMSHJwoiHT9HDTYklyHCpo78ZXAvv/syLtat7BuoaqH5BW9L0qGdW/
         XCruzDMP2Y6Cfy0Ia/Zmpa0RZlw5EFZBzBDzykZjh5a8PgjVR8js4uanWYQAw3eHgLFi
         7rt4xBeKJ/LrVc6JWltHs4x6PSrEUwNaUgVY+8QQTiZO2tNWzsGmTKOabr/cGJdeFOFh
         m2XH7V38kRZON7w3DdZl8N1NJhNWhOlDOcm8TjbFyMAM81n3AtKog5hu9hjeXNASmyyf
         ev1rKpuNh2vPufdUMxwnC85ghC+1gjfhgEOtd5yaFyvrJ3UyVFXroo7CC5GFuEQAC6U3
         Umyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759053274; x=1759658074;
        h=mime-version:message-id:date:references:in-reply-to:subject:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Qi0U5ATf6mdQ/H7AhmC35eT7dHAQv7JtuLRz1x4XUD0=;
        b=TpAHl7IoKU6IRHfuY73cqFMgItNl7l22Xq2l6XCVnvT2D1kLrDPFfkk5foZXKEBiat
         lL9z/i3jeZDnN1lIA61RgZGLpfv/EoncfxVsCwun8dJjblNUFbjXLrDa8UMSfzeGaY2C
         6L4EyqhjMSvmZSZEN6lvlDEP2NQiEDn6iwhxL9n8fBW7OujBAyyzJTHgnZULJXU0zMiQ
         0I7wuyx8a+8MSXKuSOQXogAfHVbqgWnQQ9sHlieItJl75oCC5Hv9HWzf4n2uvaM8r7xD
         oCXZV+voFeMGL+HUvLIGfv/WfY2Z0n9pwS2eaLnldcvZQLdcMB66NQLlexcB5iR9Tk0M
         21dg==
X-Forwarded-Encrypted: i=1; AJvYcCUsqtf7gCI7sbyA+ZuRHJR35vTPv4gfQBmOkZ5gaBgCFlqptHi/+jZ4tU4VPzoFU7Zpj+G6bcoO@lists.infradead.org
X-Gm-Message-State: AOJu0YzLvxl1hcmnGtpIEaNbVtaBBESOVqnSzgWAE2ElG7eqAkaKyc2p
	erQII7qVX8elsaHCzN99RfmkOA4rFkRd9v8Py59dqQYHJ8DhP0bmEZaioPBsypAPox4=
X-Gm-Gg: ASbGncsA36usDZSDDMrASkDajtnNvtSMb9OE//8/s4NdjPViZ+EIo/KqN5GlJJ2Nkyc
	00BGF2B6Tt3c8t2ofP3UhBU++QNUgPWizzb/2MN4k6U+xtcxY1iDSOsuqzN1PwyzPaJli1hBAF3
	Bf9iBCRAqKZYmlz7GCtRPav7PFe+gd9aJaEIY1PicoSExMjzz11/l63xvWEcyIBtWULTy+UbLZ+
	wX470tDBsolBHPElyp2shWw80y3ckC00ifVn4K95wLZceE8Of/Z0ENpY6GI75MtIv0HBkgmKyx/
	iAI5rDw2up+gG87Gar9W/p7+J/UYiQBGoqXHjm/mzzUa4/cHqR9zpcbEZ1MBQYGUuloSBymHl5Y
	ow4NU+bLS8O0w3p4jhO4u2H10ntklGknTO6bSFjd12cqnp41dCf29rLdl5xlt99s7zv83KJh424
	U=
X-Google-Smtp-Source: AGHT+IFjIl5J+KBYREQPWEk+mpvqcLs9SKauZhctyKCNVMt1UONcb1m4q6jFj6ByD5uLLFtGThjfjA==
X-Received: by 2002:a2e:a545:0:b0:36d:501:76d5 with SMTP id 38308e7fff4ca-36f7ee6863cmr36709951fa.26.1759053273593;
        Sun, 28 Sep 2025 02:54:33 -0700 (PDT)
Received: from wkz-x13 (host-90-238-24-139.mobileonline.telia.com. [90.238.24.139])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-36fb7bfacf2sm21059801fa.46.2025.09.28.02.54.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Sep 2025 02:54:32 -0700 (PDT)
From: Tobias Waldekranz <tobias@waldekranz.com>
To: Jonas Rebmann <jre@pengutronix.de>, Sascha Hauer
 <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>, Ahmad
 Fatoum <a.fatoum@barebox.org>
In-Reply-To: <bd290731-fc60-4ec0-b091-cef811d4e057@pengutronix.de>
References: <20250926-tlv-integration-v1-0-45dc68b9b602@pengutronix.de>
 <20250926-tlv-integration-v1-3-45dc68b9b602@pengutronix.de>
 <bd290731-fc60-4ec0-b091-cef811d4e057@pengutronix.de>
Date: Sun, 28 Sep 2025 11:54:30 +0200
Message-ID: <87cy7a297t.fsf@waldekranz.com>
MIME-Version: 1.0
Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250928_025436_636969_A2D08336 
X-CRM114-Status: GOOD (  34.46  )
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
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/7] test: move dm-verity testdata generation to fixture
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On fre, sep 26, 2025 at 16:25, Jonas Rebmann <jre@pengutronix.de> wrote:
> Hi all,
>
> On 2025-09-26 12:14, Jonas Rebmann wrote:
>> Simplify barebox integration test setup by moving logic away from
>> scripts/ and .github/.
>> 
>> Instead of generating testdata in separate scripts, they should be
>> implemented as testfs fixtures which are automatically ran as part of
>> the test suite.
>> 
>> Includes error handling and cleanup.
>> 
>> Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
>> ---
>>   scripts/generate_testfs.sh | 44 ---------------------------------------
>>   test/py/test_dm.py         | 51 ++++++++++++++++++++++++++++++++++++++++++++--
>>   2 files changed, 49 insertions(+), 46 deletions(-)
>> 
>> diff --git a/scripts/generate_testfs.sh b/scripts/generate_testfs.sh
>> index 1c358ff846..3c200bd401 100755
>> --- a/scripts/generate_testfs.sh
>> +++ b/scripts/generate_testfs.sh
>> @@ -28,47 +28,3 @@ generate_fit()
>>   	       ${KBUILD_OUTPUT}/testfs/barebox-gzipped.fit
>>   }
>>   [ -f .github/testfs/${KBUILD_DEFCONFIG}-gzipped.its ] && generate_fit
>
> It took me some time to figure out why this patch broke CI.
>
> With the set -e in this script, this last line of fit generation logic
> should have been
>
>    [ -f .github/testfs/${KBUILD_DEFCONFIG}-gzipped.its ] && generate_fit || true
>
> given the intent here is instead of erroring out, to just skip fit
> generation if the its does not exist.

Quite right. Sorry for leaving that foot gun there :)

> The only reason CI didn't break when Tobias added mipsel and riscv, for
> which no .github/testfs/${KBUILD_DEFCONFIG}-gzipped.its exist, in commit
> 739a1a7855f5 ("ci: pytest: Open up testfs to more consumers than the FIT
> test"), is that the github workflow (incorrectly) invokes the script
> with exec. This is why only when this check became the last line of the
> script, the error return code propagated into github ci.
>
> I would like to drop scripts/generate_testfs.sh entirely in v2,
> migrating the generate_fit logic to a pytest fixture too.
>
> The reason I haven't yet is mainly that there we cannot rely on
> KBUILD_DEFCONFIG to select the test data.
>
> I thought about selecting the its from something in barebox_config or
> something in strategy.qemu instead. Any suggestions?
>
> And I'd like to also move those testfs files out of .github. I would
> like to consider the pytest tests something more than just artifacts of
> the github workflow.
>
> As this excursion into cleanup around the integration tests is getting a
> bit more involved than I hoped, I'm happy about feedback already while
> I'm working on v2.

I'll leave some thoughts that went through my mind as I was doing the dm
work. This is from the perspective of someone with almost no experience
of neither pytest in general, nor of labgrid.

It would be great if much of the logic from the workflow file could be
moved to a regular Make target or something, so that it is easier to
answer questions like "Will the CI job run with testfs for this config
now?"

As an example, in Infix, our GitHub workflow for launching the test
suite is just 'make test'. This will then launch a docker container,
which in turn runs a bunch of QEMU instances and the tests. One very
nice property with this approach is that it is very easy to launch the
exact same test environment on your local machine.

>> -
>> -alias pad128k="dd if=/dev/zero bs=128k count=1 status=none"
>> -
>> -generate_dm_verity()
>> -{
>> -    work=$(mktemp -d)
>> -    cd ${work}
>> -
>> -    # Create two dummy files; use lots of padding to make sure that
>> -    # when we alter the contents of 'english' in root-bad, 'latin' is
>> -    # still be readable, as their contents wont (a) share the same
>> -    # hash block and (b) the block cache layer won't accedentally read
>> -    # the invalid block.
>> -
>> -    pad128k  >latin
>> -    echo -n "veritas vos liberabit" >>latin
>> -    pad128k >>latin
>> -
>> -    pad128k  >english
>> -    echo -n "truth will set you free" >>english
>> -    pad128k >>english
>> -
>> -    truncate -s 1M good.fat
>> -    mkfs.vfat good.fat
>> -    mcopy -i good.fat latin english ::
>> -
>> -    veritysetup format \
>> -		--root-hash-file=good.hash \
>> -		good.fat good.verity
>> -
>> -    sed 's/truth will set you free/LIAR LIAR PANTS ON FIRE/' \
>> -	<good.fat >bad.fat
>> -
>> -    cd -
>> -    cp \
>> -	${work}/good.fat \
>> -	${work}/good.verity \
>> -	${work}/good.hash \
>> -	${work}/bad.fat \
>> -	${KBUILD_OUTPUT}/testfs
>> -
>> -    rm -rf ${work}
>> -}
>> -generate_dm_verity
>> diff --git a/test/py/test_dm.py b/test/py/test_dm.py
>> index 8bdacf7b4e..837881f4af 100644
>> --- a/test/py/test_dm.py
>> +++ b/test/py/test_dm.py
>> @@ -4,10 +4,57 @@ import re
>>   import pytest
>>   from .helper import of_get_property
>>   
>> +import os, subprocess, shutil
>>   
>> +def pad128k(f):
>> +    f.write(b"\0" * 128 * 1024)
>>   
>> -def test_dm_verity(barebox, testfs):
>> -    barebox.run_check("cd /mnt/9p/testfs")
>> +@pytest.fixture(scope="module")
>> +def dm_testdata(testfs):
>> +    path = os.path.join(testfs, "dm")
>> +    os.makedirs(path, exist_ok=True)
>> +    cwd = os.getcwd()
>> +    os.chdir(path)
>> +
>> +    with open("latin", "wb") as f:
>> +        pad128k(f)
>> +        f.write(b"veritas vos liberabit")
>> +        pad128k(f)
>> +
>> +    with open("english", "wb") as f:
>> +        pad128k(f)
>> +        f.write(b"truth will set you free")
>> +        pad128k(f)
>> +
>> +    try:
>> +        subprocess.run(["truncate", "-s", "1M", "good.fat"], check=True)
>> +        subprocess.run(["mkfs.vfat", "good.fat"], check=True)
>> +        subprocess.run(["mcopy", "-i", "good.fat", "latin", "english", "::"], check=True)
>> +
>> +        subprocess.run([
>> +            "veritysetup", "format",
>> +            "--root-hash-file=good.hash",
>> +            "good.fat", "good.verity"
>> +        ], check=True)
>> +    except FileNotFoundError as e:
>> +        pytest.skip(f"Skip dm tests due to missing dependency: {e}")
>> +
>> +    with open("good.fat", "rb") as f: data = f.read()
>> +    with open("bad.fat", "wb") as f:
>> +        f.write(data.replace(
>> +            b"truth will set you free",
>> +            b"LIAR LIAR PANTS ON FIRE"
>> +        ))
>> +
>> +    os.chdir(cwd)
>> +
>> +    yield path
>> +
>> +    shutil.rmtree(path)
>> +
>> +
>> +def test_dm_verity(barebox, dm_testdata):
>> +    barebox.run_check("cd /mnt/9p/testfs/dm")
>>   
>>       # Since commands run in a subshell, export the root hash in a
>>       # global, so that we can access it from subsequent commands
>> 
>
> Regards,
> Jonas
>
> -- 
> Pengutronix e.K.                           | Jonas Rebmann               |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |


