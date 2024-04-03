Delivery-date: Wed, 03 Apr 2024 14:14:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rrzVe-0066Mv-25
	for lore@lore.pengutronix.de;
	Wed, 03 Apr 2024 14:14:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rrzVe-0003La-2b
	for lore@pengutronix.de; Wed, 03 Apr 2024 14:14:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8ywKCjMMUKqnIyf7LcXCYlESoSQT9RHxUcOJGb4yBNg=; b=1B2zyTtMNXNP/ach4GjRfWUOjb
	pkWE0H3zpcuHDEH3hNVrHQIvMX2hj3vdCXzqfK9wBuODozi/gpIoN/jxTa1wSaPSrFZdhtH5w09I1
	tiCcY0hZKsECPP+P78XBqZm/JGE9EXtTQoAQy5uelT7iBiTVZMl500ziu03H80AiKsvLZ0ZAJYNxx
	f76qHUsjJpZl77LQnE+xa6h6lzf3iDV5ebJBhymzDVa15HcbEBw1IiXnKFzOf4dfZaMFmXQXbtI6j
	PpjKrwszmVKU0djOgfWNVyKQGIM/184z4desc87LJujfoiZ9sEu0Zqsg9K1s2GLrhdeWvEfmk8pVu
	duvo7vxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrzVE-0000000FuYf-33pl;
	Wed, 03 Apr 2024 12:14:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrzVB-0000000FuXx-3RBK
	for barebox@lists.infradead.org;
	Wed, 03 Apr 2024 12:14:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rrzVA-0002vj-8N; Wed, 03 Apr 2024 14:14:00 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rrzV9-00AAoZ-SL; Wed, 03 Apr 2024 14:13:59 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rrzV9-00CR2z-2Z;
	Wed, 03 Apr 2024 14:13:59 +0200
Date: Wed, 3 Apr 2024 14:13:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Tomas Marek <tomas.marek@elrest.cz>
Cc: barebox@lists.infradead.org
Message-ID: <Zg1IB9EmqjlyB-Gm@pengutronix.de>
References: <20240403074909.32256-1-tomas.marek@elrest.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240403074909.32256-1-tomas.marek@elrest.cz>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240403_051401_883379_173B142D 
X-CRM114-Status: GOOD (  15.89  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] i2c: add EFI i2c master driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Tomas,

Thanks for the patch. I applied it with some minor adjustments.

On Wed, Apr 03, 2024 at 09:49:09AM +0200, Tomas Marek wrote:
> +static void i2c_msg_to_efi_op(
> +	const struct efi_i2c_priv *i2c_priv,
> +	const struct i2c_msg *msg,
> +	struct efi_i2c_operation **op)

No need to pass a pointer to a pointer to the array, changed that to
*op.

> +{
> +	unsigned int max_len = efi_i2c_max_len(i2c_priv, msg);
> +	unsigned int remaining = msg->len;
> +	u32 flags;
> +
> +	flags = (msg->flags & I2C_M_RD) ? EFI_I2C_FLAG_READ : 0;
> +
> +	do {
> +		unsigned int len = (remaining < max_len) ? remaining : max_len;

We have a min() macro I used instead.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


