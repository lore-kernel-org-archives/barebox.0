Delivery-date: Wed, 20 May 2026 08:22:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPaJs-001lyr-2d
	for lore@lore.pengutronix.de;
	Wed, 20 May 2026 08:22:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPaJs-00022d-7V
	for lore@pengutronix.de; Wed, 20 May 2026 08:22:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:To:Subject:From:Reply-To:
	MIME-Version:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	bh=AGnb14jloxYKToC6oa+Hd+JdYDH9VK3QEgfV+bzOP38=; b=144aRsbG9xPf9RT/x4m6MZZnnl
	y0rllv+ceE4TP0eqGFkSv+D5LPgugB8DRXF+vqpGhKoZUClA5pscT95ATeUTpTm8IpacHKvdKHH8J
	LEcq5G8Ld1HWba0miN3SgPgvvH4FDHHZvjKyvtS9j9zZzLgy3H/cUWNWonA+VyI5Bf7SpHUE7vNbY
	IEMtOXaJBBiBeOH63eYw3H88JXQp0gLtkFswUiqhOjMwLVExKM+U9QIao5J5CrYlN3+h4TR/4orIw
	s09KkCoM7L9sBcCfOYlHWxMYgpMxz/7aqF9j2f+mIqi7MT1KaQvmFEQzJtjJn0cFw+XrVlxlpiQgE
	qbk0CVpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPaJX-00000003e64-2KCE;
	Wed, 20 May 2026 06:21:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPaJU-00000003e4s-1TfK
	for barebox@lists.infradead.org;
	Wed, 20 May 2026 06:21:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1wPaJS-000207-Pd; Wed, 20 May 2026 08:21:50 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1wPaJS-000t6J-0Y;
	Wed, 20 May 2026 08:21:50 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1wPaJS-00000001yEr-2gmZ;
	Wed, 20 May 2026 08:21:50 +0200
From: "Sascha Hauer" <s.hauer@pengutronix.de>
To: "Alexander Shiyan" <eagle.alexander923@gmail.com>
In-Reply-To: <CAP1tNvQNpjt4e2AhwTPoMKM0E9gra__3feFdczhvVWTc6e_4CA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Date: Wed, 20 May 2026 06:21:50 +0000
Message-Id: <E1wPaJS-00000001yEr-2gmZ@pty.whiteo.stw.pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260519_232152_400634_631422FF 
X-CRM114-Status: GOOD (  16.47  )
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
Cc: barebox@lists.infradead.org
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: v2026.05.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Alexander,

On 2026-05-20 08:15, Alexander Shiyan wrote:
> Hello Sascha.
> 
> The first launch of the new release has failed.
> On the RK3568 platform, BL31 does not start. The size of the final
> binary has decreased from 1.5 MB
> to 930 KB - possibly due to the announced compression, but it seems to
> me that this is too
> large a reduction...
> Are there any additional settings/calls required for custom boards in
> the new release?

No board level adjustments required. I just re-tested the relase on a
Rock-3a board using rockchip_v8_defconfig. It works here.

The size reduction depends on the size of your firmware binaries. You
could look at the firmware/*.z files and compare with the original files
to see if that explains the size reduction. The TF-A and OP-TEE files
that I use only have around 700KiB in total, so a size reduction of
600KiB would be unreasonable in my case.

Do you have any console output to share?

Sascha

--
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


