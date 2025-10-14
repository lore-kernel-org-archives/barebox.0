Delivery-date: Tue, 14 Oct 2025 17:27:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v8gvq-007mUK-0Y
	for lore@lore.pengutronix.de;
	Tue, 14 Oct 2025 17:27:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v8gvp-0002Uq-IR
	for lore@pengutronix.de; Tue, 14 Oct 2025 17:27:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yq9HoMifazAtlQQ4Vz82H75s4vAQrZ1lhOWwTZ2KRKM=; b=lFTTHeR0H44XHUJ5ruZtKvBe+n
	kZAZC8EfboIt4IZ/jtprQnRY6qXNwMcfPqHgSSygqY7rIOMjYOklnE5S1dVBnXh1JM6R9+HrqzOiG
	9527SWY8iFYz/VTk0OCewraD+HZcWJW68nVjVispYjzTcZNK9ziPsQlvA/z2oLf9xcraQz+06W/Vm
	O/YbEjDVvstaF/EBXm/KzN6OtYZI3xplt9H91uN82J9y/fN4+yymIHU5BD2A4SDD9w5BvzaINCJSN
	6h/bwWUikavKDoimGiuumlUFnoheHUmW/0aAvtRHdtoPfsA8EaqhJ4bbaxyJ4HSxfClLWVY0RL+hL
	BAUVlpAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8gvB-0000000Gpie-19yl;
	Tue, 14 Oct 2025 15:26:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8gv8-0000000Gpgl-1wNz
	for barebox@lists.infradead.org;
	Tue, 14 Oct 2025 15:26:39 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1v8gv6-0002MH-9g; Tue, 14 Oct 2025 17:26:36 +0200
Message-ID: <c52ff3ad-bd4f-4a79-8106-c880212d6c1e@pengutronix.de>
Date: Tue, 14 Oct 2025 17:26:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
References: <20251013120031.761008-1-a.fatoum@pengutronix.de>
Content-Language: en-US
From: Jonas Rebmann <jre@pengutronix.de>
In-Reply-To: <20251013120031.761008-1-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251014_082638_504668_3582EEAB 
X-CRM114-Status: GOOD (  23.43  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fixup! test: py: add TLV integration tests
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Ahmad

On 2025-10-13 14:00, Ahmad Fatoum wrote:
> test: py: tlv: skip when crcmod is missing
> 
> TLV tests shouldn't fail the test suite if the dependencies for the
> generator scripts are not available.
> 
> Therefore, have the script return 127 as specific error code and skip
> the test in that case.
> 
> While at it, also drop the currently unused import for mkPredefinedCrcFun.

My patch "test: py: add TLV integration tests" intentionally only
changes the test case. I think we should separate those things.

> Cc: Jonas Rebmann <jre@pengutronix.de>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>   scripts/bareboxtlv-generator/bareboxtlv-generator.py | 8 +++++++-
>   test/py/test_tlv.py                                  | 6 +++---
>   2 files changed, 10 insertions(+), 4 deletions(-)
> 
> diff --git a/scripts/bareboxtlv-generator/bareboxtlv-generator.py b/scripts/bareboxtlv-generator/bareboxtlv-generator.py
> index 5f9285a80630..6174fe91cdd4 100755
> --- a/scripts/bareboxtlv-generator/bareboxtlv-generator.py
> +++ b/scripts/bareboxtlv-generator/bareboxtlv-generator.py
> @@ -2,9 +2,15 @@
>   
>   import argparse
>   import struct
> +import sys
>   
>   import yaml
> -from crcmod.predefined import mkPredefinedCrcFun
> +
> +try:
> +    from crcmod.predefined import mkPredefinedCrcFun
> +except ModuleNotFoundError:
> +    print("Error: missing crcmod dependency", file=sys.stderr)
> +    sys.exit(127)
>   
>   _crc32_mpeg = mkPredefinedCrcFun("crc-32-mpeg")
>   

Could you move this change to a separate patch which is not a fixup?

> diff --git a/test/py/test_tlv.py b/test/py/test_tlv.py
> index 963f3749b33b..79f9f9d01bbb 100644
> --- a/test/py/test_tlv.py
> +++ b/test/py/test_tlv.py
> @@ -2,11 +2,8 @@ import os
>   import re
>   import subprocess
>   from pathlib import Path
> -from crcmod.predefined import mkPredefinedCrcFun
>   from .helper import skip_disabled
>   
> -_crc32_mpeg = mkPredefinedCrcFun("crc-32-mpeg")
> -
>   import pytest
>   
>   
> @@ -14,6 +11,9 @@ class _TLV_Testdata:
>       def generator(self, args, check=True):
>           cmd = [os.sys.executable, str(self.generator_py)] + args
>           res = subprocess.run(cmd, text=True)
> +        if res.returncode == 127:
> +            pytest.skip("test skipped due to missing host dependencies")
> +
>           if check and res.returncode != 0:
>               raise RuntimeError(f"generator failed ({res.returncode}): {res.stdout}\n{res.stderr}")
>           return res

And only leave this as fixup to the change on the test case?

The reason it bothers me is that I'd like TLV signature without the
integration tests to be easily backportable.

Regards,
Jonas

-- 
Pengutronix e.K.                           | Jonas Rebmann               |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |


