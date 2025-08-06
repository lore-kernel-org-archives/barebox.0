Delivery-date: Wed, 06 Aug 2025 08:20:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujXW6-007YAb-22
	for lore@lore.pengutronix.de;
	Wed, 06 Aug 2025 08:20:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujXW6-0003iN-3Y
	for lore@pengutronix.de; Wed, 06 Aug 2025 08:20:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Y+zDPw5I7CV0/DRgXpkJbNrVodtbtELn98XIxg9G32g=; b=O57bjebLbHiRAraNg3vQrFLW/7
	/yURxoZ5r4kzOx5w/KhKbpgDxQjJihFZM3LjHS+4BV1Tc1dn29G4i36EHirzknQont3rpl+4cIzbU
	gwAqFbSMqpd0BOQ8fxnnZhKVWrtdyfcbE8jhYH1rzxKmtejrLYuaxfw3hR8xC0/WrMt5mmSdLXfAi
	fGpztsqGN/OYcQCH9VlU6tY8LxH5l/yMPwUkdvlsxEnxBxCJJi2qC0cKUG/qbct7Q9jd7N5CTjLQu
	HCbsLH2c7KvsJ+Kc1+p3dNJzS0gSwmVVQXI9IJiehcNFlod+7+YLj5ZEOz7eJRIYDR+IuTkGpKVh8
	3hYd4OiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujXVg-0000000EOqR-2vFu;
	Wed, 06 Aug 2025 06:20:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujXVe-0000000EOpd-2s43
	for barebox@lists.infradead.org;
	Wed, 06 Aug 2025 06:20:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ujXVd-0003df-BJ; Wed, 06 Aug 2025 08:20:21 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1ujXVd-00CAEQ-0U;
	Wed, 06 Aug 2025 08:20:21 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1ujXVd-00C9xn-0B;
	Wed, 06 Aug 2025 08:20:21 +0200
Date: Wed, 6 Aug 2025 08:20:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Cc: Ahmad Fatoum <afa@pengutronix.de>
Message-ID: <aJL0JHEwnP5Gm_wD@pengutronix.de>
References: <20250708193600.758772-5-a.fatoum@barebox.org>
 <20250806061914.1697955-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250806061914.1697955-1-s.hauer@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_232022_723894_FB90BBF4 
X-CRM114-Status: GOOD (  18.65  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fixup! test: add support for pytest --graphic
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Aug 06, 2025 at 08:19:14AM +0200, Sascha Hauer wrote:
> Supply qemu options only for qemu targets. Otherwise
> 
> labgrid-pytest --lg-env test/sandbox/sandbox_defconfig.yaml
> 
> fails with:
> 
> _pytest.outcomes.Exit: Qemu option supplied for non-Qemu targe
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  conftest.py | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/conftest.py b/conftest.py
> index e3f09bac31..782ebc0536 100644
> --- a/conftest.py
> +++ b/conftest.py
> @@ -125,7 +125,7 @@ def strategy(request, target, pytestconfig):
>          else:
>              pytest.exit("--graphics unsupported for target\n", 1)
>  
> -    strategy.append_qemu_args(graphics or '-nographic')
> +        strategy.append_qemu_args(graphics)
>  
>      for i, blk in enumerate(pytestconfig.option.qemu_block):
>          if virtio:

Ahmad, is this ok like this?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


