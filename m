Delivery-date: Mon, 22 Sep 2025 17:45:02 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v0iis-0060JC-0H
	for lore@lore.pengutronix.de;
	Mon, 22 Sep 2025 17:45:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v0iir-0003qH-F1
	for lore@pengutronix.de; Mon, 22 Sep 2025 17:45:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VfdIHja2gCNJs5280yesqJvScHdilp24c2Jc5qyN6Fw=; b=d3qyWIGup1imO7ut6PQ24uqK6K
	Sl0z87OLqwbK6y/Mvv7JdQMYvNLUzKUhVq/wgfjeG/Yk7JW/taar9+qjPY7/aWUjdmZxdMsi7GqCe
	/jDPzSC0l4EHjUNcoerbQVSjE7g9eISgqLo4fV/0DpwlWS/1mH2wOzN4BUQf+nFAS1AxH+ROyFyB7
	ldNGwls+gd3sH9CuYD9qlxJqiHy3m08IQ4c/7BV7N42Ho19zLCt1/p6buTDrhG8tiidNGq7dg1mr4
	12i0h6iH5dNf0MhS/UQAEkJqGsVoGw7GJjxi7d/SR87lBMdK2+JL4qqOLXJTXemawdrqrWNhat4mG
	ZJGyejKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0iiT-0000000AsVR-1878;
	Mon, 22 Sep 2025 15:44:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0iiR-0000000AsTj-0RYN
	for barebox@lists.infradead.org;
	Mon, 22 Sep 2025 15:44:36 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1v0iiP-0003g1-Io; Mon, 22 Sep 2025 17:44:33 +0200
Message-ID: <09562aab-2548-4d07-b742-853b2f6f7cb4@pengutronix.de>
Date: Mon, 22 Sep 2025 17:44:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Tobias Waldekranz <tobias@waldekranz.com>, barebox@lists.infradead.org
References: <20250918074455.891780-1-tobias@waldekranz.com>
 <20250918074455.891780-10-tobias@waldekranz.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250918074455.891780-10-tobias@waldekranz.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250922_084435_153178_5D22010E 
X-CRM114-Status: GOOD (  22.12  )
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
Subject: Re: [PATCH 09/11] test: pytest: add basic dm-verity test
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 18.09.25 09:43, Tobias Waldekranz wrote:
> From a consistent dm-verity device (good):
> 
> - Ensure that we can read from the underlying filesystem.
> 
> From a dm-verity device where the data device does not match the hash
> tree (bad):
> 
> - Ensure that unmodified parts are readable
> - Ensure that reading from a modified block results in an I/O error
> 
> Signed-off-by: Tobias Waldekranz <tobias@waldekranz.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Thanks for including a test!
Ahmad

> ---
>  test/py/test_dm.py | 38 ++++++++++++++++++++++++++++++++++++++
>  1 file changed, 38 insertions(+)
>  create mode 100644 test/py/test_dm.py
> 
> diff --git a/test/py/test_dm.py b/test/py/test_dm.py
> new file mode 100644
> index 0000000000..a9debd85b5
> --- /dev/null
> +++ b/test/py/test_dm.py
> @@ -0,0 +1,38 @@
> +# SPDX-License-Identifier: GPL-2.0-or-later
> +
> +import re
> +import pytest
> +from .helper import of_get_property
> +
> +
> +
> +def test_dm_verity(barebox):
> +    _, _, returncode = barebox.run("ls /mnt/9p/testfs")
> +    if returncode != 0:
> +        pytest.xfail("skipping test due to missing --fs testfs=")
> +
> +    barebox.run_check("cd /mnt/9p/testfs")
> +
> +    # Since commands run in a subshell, export the root hash in a
> +    # global, so that we can access it from subsequent commands
> +    barebox.run_check("readf good.hash roothash && global roothash=$roothash")
> +
> +    barebox.run_check("veritysetup open good.fat good good.verity $global.roothash")
> +    barebox.run_check("veritysetup open bad.fat  bad  good.verity $global.roothash")
> +
> +    barebox.run_check("md5sum /mnt/good/latin /mnt/good/english")
> +
> +    # 'latin' has not been modified, so it should read fine even from
> +    # 'bad'
> +    barebox.run_check("md5sum /mnt/bad/latin")
> +
> +    # 'english' however, does not match the data in the hash tree and
> +    # MUST thus fail
> +    _, _, returncode = barebox.run("md5sum /mnt/bad/english")
> +    assert returncode != 0, "'english' should not be readable from 'bad'"
> +
> +    barebox.run_check("umount /dev/good")
> +    barebox.run_check("veritysetup close good")
> +
> +    barebox.run_check("umount /dev/bad")
> +    barebox.run_check("veritysetup close bad")


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


