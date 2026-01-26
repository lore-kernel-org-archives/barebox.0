Delivery-date: Mon, 26 Jan 2026 14:54:14 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkN2l-005YpI-0f
	for lore@lore.pengutronix.de;
	Mon, 26 Jan 2026 14:54:14 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkN2k-0005Rm-8F
	for lore@pengutronix.de; Mon, 26 Jan 2026 14:54:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qRlPu+ckK9r3wd1O8LpB4sLqpBdJ+m5BU+9yx5AiU7U=; b=EdRKU6ZYqMK0jKATb3zDpyMuNK
	Sqy+Sj93DE84FwgSjCWPzw7J1GmN1mmbOQ9qKDGmWW2C5FAGsXDeV8+MXOj2+ZId8fQzk2LuYx2kX
	nXE6GwLhX+mewj06pCaYYf9WkLOW/1AxSlQwRiypf47IT6pWRByE5f3TKXbvChV32T0Iy04431PRK
	Vs2qJ3APH1igFCbwcMceDvM11N6smfCxUTdn3G2CAEP2cDXGS8Zw8jiIIvWXA+RhOwjfZ+/qNzpKh
	1YT5z7WdmOyRVmoPs7ksYyPnBFYwitj4ZN6jbPzsUQNDngXfR2FhatvrcJoLDS2zhYkC3hqozegM5
	OxlIvZtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkN2G-0000000CepI-0gA2;
	Mon, 26 Jan 2026 13:53:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkN2A-0000000CejP-3qwL
	for barebox@lists.infradead.org;
	Mon, 26 Jan 2026 13:53:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1vkN28-0005Lw-Dp; Mon, 26 Jan 2026 14:53:36 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vkN28-002amt-2w;
	Mon, 26 Jan 2026 14:53:36 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vkN28-00GYQV-0N;
	Mon, 26 Jan 2026 14:53:36 +0100
Date: Mon, 26 Jan 2026 14:53:36 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20260126135336.ewilribmhw2xtsnb@pengutronix.de>
References: <20260126130422.3897277-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260126130422.3897277-1-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260126_055338_983462_D659661C 
X-CRM114-Status: GOOD (  10.74  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] usb: fastboot: increase max answer size to 256
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Sascha,

On 26-01-26, Sascha Hauer wrote:

..
> While at it use a define for the maximum answer length to avoid
> repeating the hardcoded number. Also allow the answer to be exactly
> the maximum length. Previous implementation used a 64 byte string
> which included the '\0' string end and limited the usable size to
> 63 bytes. Now we can use the full 256 bytes.

...

> +#define FASTBOOT_MAX_RESPONSE_SIZE 256
> +
>  int fastboot_tx_print(struct fastboot *fb, enum fastboot_msg_type type,
>  		      const char *fmt, ...)
>  {
>  	struct va_format vaf;
> -	char buf[64];
> +	char buf[FASTBOOT_MAX_RESPONSE_SIZE + 1];

So the new size of 256 bytes don't include the '\0' at the end?

In that case feel free to add my:

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

Regards,
  Marco



