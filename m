Delivery-date: Mon, 20 Apr 2026 13:15:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wEmb3-00EKBM-0k
	for lore@lore.pengutronix.de;
	Mon, 20 Apr 2026 13:15:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wEmb2-0004Dc-Mv
	for lore@pengutronix.de; Mon, 20 Apr 2026 13:15:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZnKV763gh2k2ZuZNUgtFHfENe2M+RHQ/ULl2b7AuiCs=; b=lAK4rzlnI7u8k79oxjfccJxbvb
	NRbMt8PSI4JXBVFjNXRvdLbfH/GRVSif+1ZH3Ed9HXISMqvEERJmEQUaWo313Pz3nPss4NUF5M1TN
	zhgiGZbUj/+WhOh7jiXPjZbgHZCjh6MTt4N3H7yyMpfcLGYcfi3RnDn25HFLCZ+v+4vLBkjTFkeFT
	vGDRRcxn+4kFzG6OFCLRhoL7RN629vnhzC14bWckVzB6z5VRB1nkhXCPqDcA0Rl6gw88CSlmm0Bi1
	uPzg7OOBUvrZVj7hlZaqLbu8pDD3V7IaQqDUpmazmV+K33iIBZCV/CTkWPSXh8o3jXCg+Ef3uOEr0
	uj+eVwLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEmaf-00000006mKa-4AYi;
	Mon, 20 Apr 2026 11:14:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEmab-00000006mJ9-1prX
	for barebox@lists.infradead.org;
	Mon, 20 Apr 2026 11:14:55 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wEmaZ-00047W-TP; Mon, 20 Apr 2026 13:14:51 +0200
Message-ID: <c71d0163-23e8-4360-8d47-12271f650c75@pengutronix.de>
Date: Mon, 20 Apr 2026 13:14:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20260420-usb-typec-stusb160x-v1-0-5875bbae80ab@pengutronix.de>
 <20260420-usb-typec-stusb160x-v1-4-5875bbae80ab@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260420-usb-typec-stusb160x-v1-4-5875bbae80ab@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260420_041453_481064_AA212E75 
X-CRM114-Status: GOOD (  11.10  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 4/4] USB: typec: Add STUSB160x driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 4/20/26 11:02 AM, Sascha Hauer wrote:
> --- /dev/null
> +++ b/drivers/usb/typec/stusb160x.c
> @@ -0,0 +1,572 @@
> +// SPDX-License-Identifier: GPL-2.0
> +// SPDX-Comment: Origin-URL: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/usb/typec/stusb160x.c?id=82375469755662b9910a22da14027cbef2bca666/*

Invalid link. You may want to remove /* at the end.

> +	node = of_get_child_by_name(client->dev.of_node, "connector");
> +	if (!node)
> +		return -ENODEV;

Add extra error message here or return another error code that's not
silently swallowed up?


Cheers,
Ahmad

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



