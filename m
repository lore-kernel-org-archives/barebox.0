Delivery-date: Fri, 18 Jun 2021 10:34:23 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lu9xH-00083I-CM
	for lore@lore.pengutronix.de; Fri, 18 Jun 2021 10:34:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lu9xG-00048i-Hj
	for lore@pengutronix.de; Fri, 18 Jun 2021 10:34:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:Cc:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tNOdQ5scwXP7pW3ul4kBC4s+tYmxjizujwvJkyuunRk=; b=0PtBr6+2DFhf+ynekJXGOl/Ll3
	9WXmrqW7Sl6oHcoP7NQYUJId36wTVGyD/6eiZjaBY6SuNZAPwwit6RNSHghDBqo1ENtjZXHOfa8YE
	8jcvNuROJv03k+9ojk32JyMda+oyhn14yGKZiGO/F4dwkEg243qKCg+ceqWjk6qKm6++uKnrYqZqe
	J87kznwIoBcLWrU9RzitotbCskepDEkhp3sJrxrMQPMqqmGHHj/DJevDyPqs9bJW1ZMCYLLk14eK+
	f5g9Y8aMjSwWnIS/2vuHAgHCrIYrZ6jisU0Jy4xTuBngB0fVWCTVrfLpyWBiibYBqjSxuR3XXGu8T
	gAnxhppw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lu9w3-00DK1b-9N; Fri, 18 Jun 2021 08:33:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lu9vy-00DJx7-6W
 for barebox@lists.infradead.org; Fri, 18 Jun 2021 08:33:03 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0]
 helo=igor.pengutronix.de) by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <s.trumtrar@pengutronix.de>) id 1lu9vv-000420-2k
 for barebox@lists.infradead.org; Fri, 18 Jun 2021 10:32:59 +0200
References: <20210616063246.14900-1-s.trumtrar@pengutronix.de>
 <20210616063246.14900-7-s.trumtrar@pengutronix.de>
User-agent: mu4e 1.4.13; emacs 28.0.50
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
To: barebox@lists.infradead.org
Cc: 
In-reply-to: <20210616063246.14900-7-s.trumtrar@pengutronix.de>
Date: Fri, 18 Jun 2021 10:32:58 +0200
Message-ID: <87pmwjy3lx.fsf@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210618_013302_294385_0515E96E 
X-CRM114-Status: UNSURE (   9.51  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v4 07/10] of: of_firmware: add support for fpga bridges
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)


Steffen Trumtrar <s.trumtrar@pengutronix.de> writes:
> diff --git a/include/of.h b/include/of.h
> index 645f429bdeed..3c922bdb1414 100644
> --- a/include/of.h
> +++ b/include/of.h
> +int of_firmware_load_overlay(struct device_node *overlay, const char *path);
> +#else
> +static inline int of_firmware_load_overlay(const char *path)

Meh, don't know how that happend, but this is obviously wrong :(
Will resend.


Steffen

--
Pengutronix e.K.                | Dipl.-Inform. Steffen Trumtrar |
Steuerwalder Str. 21            | https://www.pengutronix.de/    |
31137 Hildesheim, Germany       | Phone: +49-5121-206917-0       |
Amtsgericht Hildesheim, HRA 2686| Fax:   +49-5121-206917-5555    |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

