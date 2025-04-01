Delivery-date: Tue, 01 Apr 2025 10:54:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzXOS-006vQ4-0y
	for lore@lore.pengutronix.de;
	Tue, 01 Apr 2025 10:54:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzXOR-0000ys-LV
	for lore@pengutronix.de; Tue, 01 Apr 2025 10:54:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zFJ/ueS5u2BA9n4wPzorixLXnAKBzXAVCzYo2fNEnsM=; b=kew+Ex4465aTYRoJtpwV6Zk9sX
	u6icFh0cFJiW471p7HXBdHfOwvjUwh+Q8RwB+2D9Ug05os/LKsZuzkWJ5fZvx2X5X08gLw4xZ2B1x
	4B+4wpivisI0EHFJbH05WLbr8pQaGmXok9dZ1SSzXDUMTEj+UoAF787U3ieXM3qETbnINfwv2tgJW
	cAunPUm2knWjQb6nRpLojLFOlPyuLy6nRCBwFwu3IQEgLAlUoqnW90y/HpMkiRVt1ByONXYwlhqXS
	mTvbZJBfLRGsYSeyEQzpLWdBvfWruMyapL8Z44C316eMB9pY7I8vT8Yev6YqlVNkDajD10f+87fWO
	TrXFni8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzXNr-00000002NZF-38ul;
	Tue, 01 Apr 2025 08:54:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzXNE-00000002NXM-1gO0
	for barebox@lists.infradead.org;
	Tue, 01 Apr 2025 08:53:34 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <bst@pengutronix.de>)
	id 1tzXNC-0000hK-6j; Tue, 01 Apr 2025 10:53:30 +0200
Message-ID: <46a84f2b-1b33-4da8-ae60-a02551d18da0@pengutronix.de>
Date: Tue, 1 Apr 2025 10:53:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
References: <20250327144742.1841423-1-a.fatoum@pengutronix.de>
 <20250327144742.1841423-3-a.fatoum@pengutronix.de>
Content-Language: en-US
From: Bastian Krause <bst@pengutronix.de>
In-Reply-To: <20250327144742.1841423-3-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250401_015332_447499_3641CCC1 
X-CRM114-Status: GOOD (  17.49  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/4] test: bthread: change comparison condition for
 switches vs. yields
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Ahmad,

On 3/27/25 3:47 PM, Ahmad Fatoum wrote:
> The code was written with the assumption that isolated yields from test
> thread to main thread and back will always be at least as fast as
> unrestricted scheduling.
> 
> This assumption held so far, but breaks down in sandbox, because it's
> highly influenced by the system's CPU pressure.
> 
> Just check that we can schedule @1000Hz at least in both cases.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>   test/py/test_bthread.py | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/test/py/test_bthread.py b/test/py/test_bthread.py
> index 6e7b4ba5007e..84fb9f830b0c 100644
> --- a/test/py/test_bthread.py
> +++ b/test/py/test_bthread.py
> @@ -20,4 +20,5 @@ def test_bthread(barebox, barebox_config):
>       switches = int(barebox.run_check("bthread -c")[0].split()[0])
>       yields   = int(barebox.run_check("bthread -t")[0].split()[0])
>   
> -    assert yields < switches
> +    assert yields > 1000
> +    assert yields > 1000

I guess one of these asserts should involve "switches", right?

Regards,
Bastian

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


