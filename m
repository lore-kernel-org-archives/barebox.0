Delivery-date: Tue, 07 Oct 2025 11:13:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v63kn-005CIn-1h
	for lore@lore.pengutronix.de;
	Tue, 07 Oct 2025 11:13:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v63km-0001ey-Rq
	for lore@pengutronix.de; Tue, 07 Oct 2025 11:13:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=C8HfmdINXhAHkgSDc1Yb0t+7qihMUS4ZE++F8TtxSro=; b=Cd/JP+RdsVILH3u3sxQzq/g0zP
	DFK5/eKIVDfF83upB2ECnROvXi+VG2fm9mhXLT6GJxsHOVS9dv/yAL0wFKESOAiPhyk2lj7hxvR9N
	jAGuZsT6GmGovXjZRIV7LEv2zNlAOuFlS54F/9iiuWtJcchFUtM2+kpaNUW7bUn+T1eqI5b8/Fgr9
	VuP9ODYcRRGERTsDEbw6IDG9o30Q+pkfYrZ5XYm3UF0xhsdf0R4r7CaVm81A+lsIHL43XeRXOWxGF
	62RAcqEujoe0i7vKbULEx1eoijckhix2e2JixyOhbY4WveMGuaExbS6za8nxLHyt2nHst1PNS/PiW
	oL0QLzZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v63kL-00000001gbl-1GDR;
	Tue, 07 Oct 2025 09:12:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v63kI-00000001gbK-3ivw
	for barebox@lists.infradead.org;
	Tue, 07 Oct 2025 09:12:36 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v63kH-0001XS-Er; Tue, 07 Oct 2025 11:12:33 +0200
Message-ID: <3186d83b-10ef-4ab7-bff8-18a18826c2e0@pengutronix.de>
Date: Tue, 7 Oct 2025 11:12:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jonas Rebmann <jre@pengutronix.de>, Sascha Hauer
 <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
Cc: Tobias Waldekranz <tobias@waldekranz.com>
References: <20250929-tlv-integration-v2-0-55f75da7e670@pengutronix.de>
 <20250929-tlv-integration-v2-9-55f75da7e670@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20250929-tlv-integration-v2-9-55f75da7e670@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251007_021234_993675_474AE04E 
X-CRM114-Status: GOOD (  20.84  )
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
Subject: Re: [PATCH v2 9/9] test: py: add TLV integration tests
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 9/29/25 10:04 AM, Jonas Rebmann wrote:
> With TLV signature coming up, we want to test all things TLV more
> thoroughly, including "roundtrip" integration tests that include the
> bareboxtlv-generator python-script and the tlv barebox-command.
> 
>  - Encode the example TLV data
>  - Add a "corrupted" variant of that tlv binary with a bit error
>  - Test decoding those binaries using bareboxtlv-generator
>  - Test decoding those binaries using the tlv-command
> 
> Signed-off-by: Jonas Rebmann <jre@pengutronix.de>

Acked-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  test/py/test_tlv.py | 78 +++++++++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 78 insertions(+)
> 
> diff --git a/test/py/test_tlv.py b/test/py/test_tlv.py
> new file mode 100644
> index 0000000000..963f3749b3
> --- /dev/null
> +++ b/test/py/test_tlv.py
> @@ -0,0 +1,78 @@
> +import os
> +import re
> +import subprocess
> +from pathlib import Path
> +from crcmod.predefined import mkPredefinedCrcFun
> +from .helper import skip_disabled
> +
> +_crc32_mpeg = mkPredefinedCrcFun("crc-32-mpeg")
> +
> +import pytest
> +
> +
> +class _TLV_Testdata:
> +    def generator(self, args, check=True):
> +        cmd = [os.sys.executable, str(self.generator_py)] + args
> +        res = subprocess.run(cmd, text=True)
> +        if check and res.returncode != 0:
> +            raise RuntimeError(f"generator failed ({res.returncode}): {res.stdout}\n{res.stderr}")
> +        return res
> +
> +    def __init__(self, testfs):
> +        self.dir = Path(testfs)
> +        self.scripts_dir = Path("scripts/bareboxtlv-generator")
> +        self.data = self.scripts_dir / "data-example.yaml"
> +        self.schema = self.scripts_dir / "schema-example.yaml"
> +        self.generator_py = self.scripts_dir / "bareboxtlv-generator.py"
> +        self.unsigned_bin = self.dir / 'unsigned.tlv'
> +        self.corrupted_bin = self.dir / 'unsigned_corrupted.tlv'
> +
> +@pytest.fixture(scope="module")
> +def tlv_testdata(testfs):
> +    t = _TLV_Testdata(testfs)
> +    t.generator(["--input-data", str(t.data), str(t.schema), str(t.unsigned_bin)])
> +    assert t.unsigned_bin.exists(), "unsigned TLV not created"
> +
> +    with open(t.unsigned_bin, 'r+b') as f:
> +        data = bytearray(f.read())
> +    data[0x20] ^= 1
> +    with open(t.corrupted_bin, "wb") as f:
> +        f.write(data)
> +
> +    return t
> +
> +def test_tlv_generator(tlv_testdata):
> +    t = tlv_testdata
> +    out_yaml = t.dir / 'out.yaml'
> +
> +
> +    good = t.generator(["--output-data", str(out_yaml), str(t.schema), str(t.unsigned_bin)], check=False)
> +    assert good.returncode == 0, f"valid unsigned TLV failed to decode: {good.stderr}\n{good.stdout}"
> +
> +    bad = t.generator(["--output-data", str(t.dir / 'bad.yaml'), str(t.schema), str(t.corrupted_bin)], check=False)
> +    assert bad.returncode != 0, "unsigned TLV with invalid CRC unexpectedly decoded successfully"
> +
> +def test_tlv_command(barebox, barebox_config, tlv_testdata):
> +    skip_disabled(barebox_config, "CONFIG_CMD_TLV")
> +    t = tlv_testdata
> +    with open(t.data, 'r', encoding='utf-8') as f:
> +        yaml_lines = [l.strip() for l in f if l.strip() and not l.strip().startswith('#')]
> +
> +    stdout = barebox.run_check(f"tlv /mnt/9p/testfs/{t.unsigned_bin.name}")
> +
> +    # work around 9pfs printing here after a failed network test
> +    tlv_offset = next((i for i, line in enumerate(stdout) if line.startswith("tlv")), None)
> +    tlv_lines = stdout[tlv_offset + 1:-1]
> +
> +    assert len(yaml_lines) == len(tlv_lines), \
> +        f"YAML and TLV output line count mismatch for {t.unsigned_bin.name}"
> +
> +    for yline, tline in zip(yaml_lines, tlv_lines):
> +        m = re.match(r'^\s*([^=]+) = "(.*)";$', tline)
> +        assert m, f"malformed tlv line: {tline}"
> +        tkey, tval = m.group(1), m.group(2)
> +        m = re.match(r'^([^:]+):\s*(?:"([^"]*)"\s*|(.*))$', yline)
> +        assert m, f"malformed yaml line: {yline}"
> +        ykey, yval = m.group(1), m.group(2) or m.group(3)
> +        assert ykey == tkey, f"key mismatch: {ykey} != {tkey}"
> +        assert str(yval) == str(tval), f"value mismatch for {ykey}: {yval} != {tval}"
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



