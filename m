Delivery-date: Mon, 31 Mar 2025 09:11:36 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tz9J2-006T1u-2k
	for lore@lore.pengutronix.de;
	Mon, 31 Mar 2025 09:11:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tz9J2-00039e-7i
	for lore@pengutronix.de; Mon, 31 Mar 2025 09:11:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lf96Ok4/5ci53+0/JdStWiE/Q0RMe30Qs0NrkVFXgcQ=; b=S2Vjv6YAcE8qdTG+AupOtzRTY2
	kHxnK09uerXlum3yNarnGdStGsILS0OBQTKu/kIVktVNlAWJEn5nXL0H3nLA2w8fThfDE22T/S+eo
	xnEgTOFnCuMdw7JDmgMSWKa4jGPwAkCxlt3+hty7sIz1AKHejCteLaQ2PFKbHHslokd9qkgOVAyvy
	av8U7vFgN9fgHBRaeHJQGDGTL+PzQFW3tA43iGiqS8xEZ9wlhVq9ot2jDGtEZhhtVL+YJVVGSa6Ja
	x3HyNjn6KJbODgDpAvYjTPn470qWPhI82o2CwDoRwRgsrwSz7K4zTTYNGzZmRMur3ZEO+d2GBa9TK
	1FDsR94w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tz9IZ-0000000HAfL-1T1h;
	Mon, 31 Mar 2025 07:11:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tz9IW-0000000HAec-27GN
	for barebox@lists.infradead.org;
	Mon, 31 Mar 2025 07:11:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tz9IV-00032O-7u; Mon, 31 Mar 2025 09:11:03 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tz9IV-002YGL-04;
	Mon, 31 Mar 2025 09:11:03 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tz9IU-0018nU-34;
	Mon, 31 Mar 2025 09:11:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Bastian Krause <bst@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250327132052.3187117-1-bst@pengutronix.de>
References: <20250327132052.3187117-1-bst@pengutronix.de>
Message-Id: <174340506294.271298.16649780147680124517.b4-ty@pengutronix.de>
Date: Mon, 31 Mar 2025 09:11:02 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250331_001104_542700_CA6FD981 
X-CRM114-Status: UNSURE (   5.46  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] kbuild: undefine linux/unix macros
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 27 Mar 2025 14:20:52 +0100, Bastian Krause wrote:
> gcc and clang, when using `-std=gnu11`, predefine `linux` and `unix` as
> macros:
> 
>   $ gcc -std=gnu11 -dM -E - < /dev/null | grep -v "define _"
>   #define unix 1
>   #define linux 1
> 
> [...]

Applied, thanks!

[1/1] kbuild: undefine linux/unix macros
      https://git.pengutronix.de/cgit/barebox/commit/?id=3e0790af5618 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



