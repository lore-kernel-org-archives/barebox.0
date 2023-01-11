Delivery-date: Wed, 11 Jan 2023 08:59:06 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFW0p-008dXT-ID
	for lore@lore.pengutronix.de; Wed, 11 Jan 2023 08:59:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFW0n-0007SG-Dv
	for lore@pengutronix.de; Wed, 11 Jan 2023 08:59:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NduSCrExqQAcu7y8tW6UwHUASWmeytPJAG0PEnMcEds=; b=NGD+DJrH5e5v0krBVZDkzkIFq0
	tuFP2vqAm0r7hUnv1ndJYWnHxLfQzQ1IhJ1X2QZGvTwdhcuW3HpM3zT0/iWgbvxWt4qZvWCJD9PhY
	l9Ttnmqm+mIKdF05URG0jd95W5DG/E+DUV7VQ1/V9VjI29hBen0Ik0ptGRy1YjsIN82gsz5PIp3Cq
	YqQ1nhFANuhGlb8uIPXZaPOGkSFafCrgZLe2KXR/KIfedm3H2rN5ICDI5rBoGm6bACiqGUufhsDvE
	WhccU2JaYPr6xu4FvjhuAPQHBVwB6B1qV72DlBZq7N30yMgGmvrtn0z6MIxOPcluj1iRinrJTS8R/
	whIOxF1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFVzU-00ACX6-K5; Wed, 11 Jan 2023 07:57:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFVzM-00ACTs-RO
	for barebox@lists.infradead.org; Wed, 11 Jan 2023 07:57:38 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pFVzJ-0007Kw-6w; Wed, 11 Jan 2023 08:57:33 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pFVzI-0005dp-VO; Wed, 11 Jan 2023 08:57:32 +0100
Date: Wed, 11 Jan 2023 08:57:32 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230111075732.GC24755@pengutronix.de>
References: <20230110173513.43277-1-a.fatoum@pengutronix.de>
 <20230111071240.889926-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230111071240.889926-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_235736_926258_1C004231 
X-CRM114-Status: GOOD (  16.69  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] fixup! ARM: switch open-coded instances to
 platform_mem_driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jan 11, 2023 at 08:12:40AM +0100, Ahmad Fatoum wrote:
> Now tested both on i.MX as well and noticed the typo..
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/mach-imx/esdctl.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Could you resend this one? git b4 doesn't cope with this one as well.

Plain git b4 tries to apply the fixup first. Explicitly applying the
first one with

git b4 -P_ 20230110173513.43277-1-a.fatoum@pengutronix.de

also doesn't work:

Looking up https://lore.barebox.org/20230110173513.43277-1-a.fatoum%40pengutronix.de
Analyzing 2 messages in the thread
Specified msgid is not present in the series, cannot cherrypick

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


