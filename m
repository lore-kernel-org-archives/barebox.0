Delivery-date: Tue, 27 Jan 2026 09:09:02 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vke8E-005pa4-1Y
	for lore@lore.pengutronix.de;
	Tue, 27 Jan 2026 09:09:02 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vke8D-0005UV-Ex
	for lore@pengutronix.de; Tue, 27 Jan 2026 09:09:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=A9Ox5qHX0Bx9la/Rp+VqpSRf7tRE897q7o/E+7RkECw=; b=hwQRgiEaqaDH2mJ4STPIXRTdxx
	2hk8Pk3ZKnMolBRxFmOsQkVC7MSKBdTlLSBIbX0DBzc2LE9iaxmsa2ColMRXgM3BOgHVKs6YoOpuc
	HSKwSBsYqLI+nXMkpClj5FGEjkuv7J0e5DYilU+UqQdH94GS6rhpkBlueEdUfxRXcAiCW1LRzpepp
	PmZJhS1lsJ7JUSBtXyIoOL7u8nEHamlsIvcyCAGrY2VIf8oJpW2a9WFvsxOnzOjv0tezSYvzTHgFz
	DCXNwQ7bIdbaXrUAgNX9AhAhga6TYfJuuolGUWnJnRA7MF5l/JHa0YKw/oTwKe8ltpYyld0/RilYB
	170pkGvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vke7k-0000000DolJ-42CM;
	Tue, 27 Jan 2026 08:08:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vke7i-0000000Dokd-3TKg
	for barebox@lists.infradead.org;
	Tue, 27 Jan 2026 08:08:32 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vke7g-0005QK-UX; Tue, 27 Jan 2026 09:08:29 +0100
Message-ID: <3e85922f-5b46-4bac-b634-052f34307851@pengutronix.de>
Date: Tue, 27 Jan 2026 09:08:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Ahmad Fatoum <a.fatoum@pengutronix.de>,
 "barebox@lists.infradead.org" <barebox@lists.infradead.org>
References: <20260126091952.4009991-1-a.fatoum@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260126091952.4009991-1-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260127_000830_871221_35833643 
X-CRM114-Status: GOOD (  18.50  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] test: py: add xfail test for surprising hush quoting
 behavior
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello,

On 1/26/26 10:19, Ahmad Fatoum wrote:
> When mixing both double quotes and single quotes in a command and
> passing it through labgrid, the quoting labgrid does on top will exceed
> barebox hush's abilities. Fixing this is likely an involved matter, but
> let's add a test that's expected to fail, so this can be revisited in
> the future.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Please dismiss this patch. Despite it being xfail (expected to fail),
it triggers a CI breakage for multi_v8_defconfig that I don't yet
understand[1].

[1]: https://github.com/a3f/barebox/actions/runs/21372244214/job/61519530966

> ---
>  test/py/test_shell.py | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/test/py/test_shell.py b/test/py/test_shell.py
> index 6591b3097be3..50ae497fc6c3 100644
> --- a/test/py/test_shell.py
> +++ b/test/py/test_shell.py
> @@ -2,6 +2,7 @@
>  
>  from .helper import skip_disabled
>  import json
> +import pytest
>  
>  
>  def test_barebox_true(barebox, barebox_config):
> @@ -18,6 +19,19 @@ def test_barebox_false(barebox, barebox_config):
>      assert returncode == 1
>  
>  
> +@pytest.mark.xfail(reason="barebox Hush quote handling is bogus")
> +def test_shell_quoting(barebox):
> +    # Labgrid will write this command to a file and execute that and add
> +    # extra quoting in the process, which we want hush to be able to handle
> +    # Below is equivalent to
> +    # echo > testcmd 'echo > /tmp/script '"'"'var="A B"'"'"''; sh testcmd
> +    barebox.console.sendline(r"""echo -o testcmd 'echo -o /tmp/script '"'"'var="A B"'"'"''; sh testcmd""")
> +    barebox._await_prompt()
> +    assert barebox.run_check('cat testcmd') == [r"""echo -o /tmp/script 'var="A B"'"""]
> +    assert barebox.run_check('cat /tmp/script') == [r'''var="A B"''']
> +    assert barebox.run_check('source /tmp/script && echo "$var"') == "A B"
> +
> +
>  def test_barebox_md5sum(barebox, barebox_config):
>      skip_disabled(barebox_config, "CONFIG_CMD_MD5SUM", "CONFIG_CMD_ECHO")
>  


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


