Delivery-date: Wed, 23 Aug 2023 07:55:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qYgpc-005oBm-L8
	for lore@lore.pengutronix.de; Wed, 23 Aug 2023 07:55:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qYgpa-0006S5-BK
	for lore@pengutronix.de; Wed, 23 Aug 2023 07:55:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Og2lgaHpDmblfuzofoLZaJvbqW89ZxytY9/H1aQieiE=; b=pYecJAcOybfV5A0/qJMlDQ9A4b
	8S/IhwtW8JjYeKeVvJAbfetAGakpZSrLL51kJBtL3RFFW3P9I3WxS5QfHI7DygHquJz6ZGGgozIvE
	MrNk87PfhQH0NMNchm68MWcKuzLoJYGw1aBZTuzY2kQZjadhMaNhNJVOoafn53M+lHyHoyatZ9+2Z
	hnJpU8S1jvMNJln/qO4557UOxllgG0KaHWugdv+fM4M3DNMQTjj6HVkYIoBVbq91z3jJ+EHmLTfta
	eZ9qfU4EAhOjdwi1NE3wIOsw3KKx20AqxaulkmbmidZ43AF5WM8cfXfRJlc6uaUvnGWNbv9GYjaR5
	vb4P4WyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qYgob-00HK38-0w;
	Wed, 23 Aug 2023 05:54:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qYgoY-00HK1z-0D
	for barebox@lists.infradead.org;
	Wed, 23 Aug 2023 05:53:59 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qYgoW-0006Cs-Bh; Wed, 23 Aug 2023 07:53:56 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qYgoW-0002hR-4Q; Wed, 23 Aug 2023 07:53:56 +0200
Date: Wed, 23 Aug 2023 07:53:56 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230823055356.GD16522@pengutronix.de>
References: <20230822074848.3905682-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230822074848.3905682-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230822_225358_097682_F22C3DA3 
X-CRM114-Status: GOOD (  19.39  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] test: pytest: have --qemu gobble up all remaining
 arguments
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Aug 22, 2023 at 09:48:48AM +0200, Ahmad Fatoum wrote:
> Passing extra arguments to Qemu was a bit cumbersome so far:
> 
>   pytest --qemu=-device --qemu=virtio-rng-pci
> 
> Improve upon this by having --qemu just gobble all remaining arguments:
> 
>   pytest --qemu -device virtio-rng-pci
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  test/conftest.py | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/test/conftest.py b/test/conftest.py
> index d2eef5156423..64082869b329 100644
> --- a/test/conftest.py
> +++ b/test/conftest.py
> @@ -1,5 +1,6 @@
>  import pytest
>  import os
> +import argparse
>  from .py import helper
>  
>  
> @@ -40,9 +41,8 @@ def pytest_addoption(parser):
>      parser.addoption('--blk', action='append', dest='qemu_block',
>          default=[], metavar="FILE",
>          help=('Pass block device to emulated barebox. Can be specified more than once'))
> -    parser.addoption('--qemu', action='append', dest='qemu_arg',
> -        default=[], metavar="option",
> -        help=('Pass option to QEMU as is'))
> +    parser.addoption('--qemu', dest='qemu_arg', nargs=argparse.REMAINDER,
> +        help=('Pass all remaining options to QEMU as is'))
>  
>  @pytest.fixture(scope="session")
>  def strategy(request, target, pytestconfig):
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


