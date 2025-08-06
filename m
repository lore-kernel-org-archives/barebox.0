Delivery-date: Wed, 06 Aug 2025 09:40:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujYlK-007ZDi-1B
	for lore@lore.pengutronix.de;
	Wed, 06 Aug 2025 09:40:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujYlJ-0002GR-RD
	for lore@pengutronix.de; Wed, 06 Aug 2025 09:40:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bJflot4ISNjKHO7NMzq3JG3KJg2eFpy5xVUVynOkbnA=; b=kTHbkn0Yu23e7noewTioyMBGmr
	wkzNP8dIYbo/2ZvbRtqL6V6oMmd9y017z64uukZbv+xk2jATSqktZ3XqUaWYsWpS611jZYesE2TBz
	tcGDVkf/wmLSGz2kiBs87hIGML8tAro84EVkG+3TcKCeV1VIo+KHEemHB6wiKKzzglEV24MmpVJ+o
	JYxVlGumQ2TJEg8XM2WsU7dMEyk0LZEYeV5JK9XrX6KuBXCnPfU8Ebztm5itqCo1Wrg8dzrDRfoQv
	5CV8raDIyaAwZuh0fmqCMrtLU8gkv9Qnf0FUwSx2Xn67ALHlQPTUmqL/KRTVVdmHwwVajfjzr+fV7
	61ZK8Xgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujYkr-0000000EXBK-46pH;
	Wed, 06 Aug 2025 07:40:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujYko-0000000EX9v-2xNx
	for barebox@lists.infradead.org;
	Wed, 06 Aug 2025 07:40:07 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujYkn-0002AR-D7; Wed, 06 Aug 2025 09:40:05 +0200
Message-ID: <03487817-d882-4ace-be79-44ac4f1096f6@pengutronix.de>
Date: Wed, 6 Aug 2025 09:40:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20250708193600.758772-5-a.fatoum@barebox.org>
 <20250806061914.1697955-1-s.hauer@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250806061914.1697955-1-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250806_004006_749551_07BDA959 
X-CRM114-Status: GOOD (  15.40  )
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

On 06.08.25 08:19, Sascha Hauer wrote:
> Supply qemu options only for qemu targets. Otherwise
> 
> labgrid-pytest --lg-env test/sandbox/sandbox_defconfig.yaml
> 
> fails with:
> 
> _pytest.outcomes.Exit: Qemu option supplied for non-Qemu targe
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Thanks for fixing,
Ahmad

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


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


