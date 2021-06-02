Delivery-date: Wed, 02 Jun 2021 14:04:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loPbu-00027e-Hr
	for lore@lore.pengutronix.de; Wed, 02 Jun 2021 14:04:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loPbp-0003Fx-S2
	for lore@pengutronix.de; Wed, 02 Jun 2021 14:04:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tlfIXVMj0OLCgYqHgXs/kYYWDJK7rEc6MAfYDgIve9I=; b=UJFpMvdGTV6dW3
	9sZ5YtX8X/L37MgHbDUE4mvSu+bHTCKL3QEkLd5+6cbvwYoztgywCT2LQjStX0wNydjFdVwXy1zP2
	Yo52iJgHfqnQmVBw2V3nDOIXvXDuY9sj4hYpTRFLzRY+f4Yhmk1GcrNJCEFyEGgbNPh6UApGvyTx9
	fRLAkzr4GHP4YPltta0at9A+O/fcuPKByd2rYWbVZ4Hs8ym3TXCwn8ap2g2nqJkVQ4qaOMpa0xdVC
	qHmj/4kf/bVmrHjuDCYrRBGnwPMNUdVdxiRoboEZ+dSYdh/kx6ONjDn63zlMAVyZ/WQoCPpIOMNzm
	rKmgQDMmblPqPsSWBWyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1loPaA-003sfn-K8; Wed, 02 Jun 2021 12:02:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1loPB8-003mTd-Gg
 for barebox@lists.infradead.org; Wed, 02 Jun 2021 11:36:55 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0]
 helo=[IPv6:::1]) by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <r.czerwinski@pengutronix.de>)
 id 1loPB7-0008FF-2y; Wed, 02 Jun 2021 13:36:53 +0200
Message-ID: <3426504a22ab28accc0dcfdcb14e1ff5301f3095.camel@pengutronix.de>
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Date: Wed, 02 Jun 2021 13:36:52 +0200
In-Reply-To: <20210531065520.12385-13-a.fatoum@pengutronix.de>
References: <20210531065520.12385-1-a.fatoum@pengutronix.de>
 <20210531065520.12385-13-a.fatoum@pengutronix.de>
Organization: Pengutronix e.K.
User-Agent: Evolution 3.40.1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210602_043654_647664_2E0192DA 
X-CRM114-Status: GOOD (  18.41  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 12/13] test: self: run selftests as part of the
 pytest suite
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahamd,

On Mon, 2021-05-31 at 08:55 +0200, Ahmad Fatoum wrote:
> We don't want to enable self tests in the normal configs as they may,
> in future, bloat size needlessly. Enable it instead in the base.cfg
> fragment and add a test that verifies the selftest command
> runs without errors.
> 
> Selftests can be run on startup for CONFIG_SHELL_NONE systems. This is
> not implemented here. For such systems the test will be skipped
> as CONFIG_CMD_SELFTEST won't be defined. To manually skip with
> emulate.pl, add --no-kconfig-base.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  test/kconfig/base.cfg      | 4 ++++
>  test/py/test_bselftests.py | 8 ++++++++
>  2 files changed, 12 insertions(+)
>  create mode 100644 test/py/test_bselftests.py
> 
> diff --git a/test/kconfig/base.cfg b/test/kconfig/base.cfg
> index e69de29bb2d1..6a9f68349816 100644
> --- a/test/kconfig/base.cfg
> +++ b/test/kconfig/base.cfg
> @@ -0,0 +1,4 @@
> +CONFIG_TEST=y
> +CONFIG_SELFTEST=y
> +CONFIG_CMD_SELFTEST=y
> +CONFIG_SELFTEST_ENABLE_ALL=y
> diff --git a/test/py/test_bselftests.py b/test/py/test_bselftests.py
> new file mode 100644
> index 000000000000..48e9d38c12fc
> --- /dev/null
> +++ b/test/py/test_bselftests.py
> @@ -0,0 +1,8 @@
> +import pytest
> +from .helper import *
> +
> +def test_bselftest(barebox, barebox_config):
> +    skip_disabled(barebox_config, "CONFIG_CMD_SELFTEST")
> +
> +    _, _, returncode = barebox.run('selftest')
> +    assert returncode == 0

This will give you the default timeout of 30 seconds for the command
run. As long as you are confident the selftests are going to stay under
this limit this is fine, however you'll probably want to make this
explicit :-)

Also you probably want something akin to this:

    stdout, stderr, returncode = barebox.run('selftest')
    assert returncode == 0, "selftest failed:\n {}\n".format("".join(stdout))

Which will output the selftest stdout if the selftest fails.

- rcz



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

