Delivery-date: Tue, 03 Sep 2024 13:38:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1slRrx-000r3v-0L
	for lore@lore.pengutronix.de;
	Tue, 03 Sep 2024 13:38:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1slRrw-0006Ya-0r
	for lore@pengutronix.de; Tue, 03 Sep 2024 13:38:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Rm78bHMUxw2cAeTJYl7Vq0cxe5vUaq9UHsMP3uwiHpM=; b=EJu33ljPcGGm9iNc9Zh7dCS1a0
	8SZYC07iWDPcOZ7jYSitopg4e8qxy1YHK8+OVLQ7U9RmTgHQNs4KZT7yelcoNj5464CWr8e5YwBnJ
	uali14C9D9eqf2Z2sx8/NrIMuXIYai8Cdih5hLntujzS1vg3RbJ5SpXHCYgdmaG0wlKhrR9JNF+b4
	pJrAvAPx9Yb/XigvSi/AUcVnlR7rkLgN6FfPA3tUXBSrThW4ksm08Ut7Jm9xP3k7oZk4I/j7OMiRs
	JM6wLDSUf2undpd3MAqRehpsBTzC8orWKCXQbROh7alpcYCE9vrrOxFR5EjpvIlXKdoDhecuHw7Qs
	dlXzEFvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slRrV-0000000HZJp-3Nwu;
	Tue, 03 Sep 2024 11:38:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slRrS-0000000HZHv-3FSE
	for barebox@lists.infradead.org;
	Tue, 03 Sep 2024 11:38:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1slRrQ-0006FK-7i; Tue, 03 Sep 2024 13:38:12 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1slRrP-005BfT-QY; Tue, 03 Sep 2024 13:38:11 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1slRrP-004QNY-2J;
	Tue, 03 Sep 2024 13:38:11 +0200
Date: Tue, 3 Sep 2024 13:38:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Florian Otte <fotte@uni-osnabrueck.de>
Cc: barebox@lists.infradead.org
Message-ID: <Ztb1I3-mc5dZBUxU@pengutronix.de>
References: <9f97-66d58780-19-542e2c00@140924414>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9f97-66d58780-19-542e2c00@140924414>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_043814_832989_9E97C690 
X-CRM114-Status: GOOD (  23.83  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: Bufferoverflow on eMMC partition handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Sep 02, 2024 at 11:37:56AM +0200, Florian Otte wrote:
> Hi Everyone.
> 
> I tried to use all general purpose partitions on an eMMC storage
> device and ran into some trouble. In ./include/mci.h the number of
> partitions is limited to 6, but there might be 7 partitions. This
> results in a buffer overflow or access out of bound and causes a nasty
> bootloop when all general purpose-partitions are used. I created a
> simple patch and appended it to this mail.
> 
> Kind regards
> fotte
> 
> [Edit]: Sorry. Clicked the wrong button to fast. Now with Attachment.

> From 0bae0df23bbc4a9e98f1bcac6c6fbe0c3b21bc78 Mon Sep 17 00:00:00 2001
> From: Florian Otte <fotte@uos.de>
> Date: Mon, 2 Sep 2024 11:27:47 +0200
> Subject: [PATCH] FIX: buffer overflow on MCI-partition enumeration
> 
> Memory for up to 6 partitions is reserved, however there can be up to 7
> partitions on an mci storage (e.g. emmc). A user partition two boot partitions
> and up to four general pupose partitions.
> ---
>  include/mci.h | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)

Your patch lacks a Signed-off-by: line. Please respond with such a line.

Otherwise ok, thanks for fixing this. I additionally created a patch to
check for the array boundaries.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


