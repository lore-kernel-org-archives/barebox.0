Delivery-date: Mon, 01 Dec 2025 10:46:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQ0Tr-006m4J-0k
	for lore@lore.pengutronix.de;
	Mon, 01 Dec 2025 10:46:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQ0Tq-0001JC-Mq
	for lore@pengutronix.de; Mon, 01 Dec 2025 10:46:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=opl3tHLn5ypRkTiDJTJlbB1lEX5pBUdFugpe/vGChbk=; b=sy5GHynh2MduvD7eyBx/vvnKWg
	q+sjRFAVHtQ2NZnpIUVitArSdfZtzU7ZNaQCC0VucDQrzA3oCmU4Qhbl8ytnPAS5lScNqE+2k2TSi
	vMM4ezXwEpj8P7HR4iJ4raBJaurYiYcLEWvAfYGhc/eGezg5x+pGRwvlk/nEVjcveHGMxvwUGVD4G
	FJ4iqpUepjDzY9DlC6f5+Xhb+fHtL2ixiIz4hSE7PQuSzdBoxjgo06Pq7CVKQbR96i6GxAajPcFUs
	sbBHykEm/wfYWzrbB3mVs6GrzDFZqoJTcL5S7YCbIzyVjw+WJK/NxryN0kZfLyJr7C0gQa+m1HsBA
	d0Z3bUpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ0TQ-00000003EY7-26Jo;
	Mon, 01 Dec 2025 09:45:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ0TJ-00000003EXV-46ic
	for barebox@lists.infradead.org;
	Mon, 01 Dec 2025 09:45:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vQ0TI-0001BY-92; Mon, 01 Dec 2025 10:45:28 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vQ0TH-003QBg-3B;
	Mon, 01 Dec 2025 10:45:27 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vQ0TH-00HERy-2q;
	Mon, 01 Dec 2025 10:45:27 +0100
Date: Mon, 1 Dec 2025 10:45:27 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <aS1jt08kSRmkuyUk@pengutronix.de>
References: <20251128172107.35323-1-a.fatoum@pengutronix.de>
 <20251128172107.35323-3-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251128172107.35323-3-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251201_014530_040876_C65180CB 
X-CRM114-Status: GOOD (  19.33  )
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
Subject: Re: [PATCH 3/3] test: arm: qemu-raspi1ap the default
 multi_v5_v6_defconfig.yaml
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

"qemu-raspi1ap the default multi_v5_v6_defconfig.yaml" doesn't have a
verb, I am not sure how the sentence was meant to read.

Sascha

On Fri, Nov 28, 2025 at 06:21:03PM +0100, Ahmad Fatoum wrote:
> This allows running pytest without --lg-env argument after having built
> multi_v5_v6_defconfig.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  test/arm/multi_v5_v6_defconfig.yaml | 1 +
>  1 file changed, 1 insertion(+)
>  create mode 120000 test/arm/multi_v5_v6_defconfig.yaml
> 
> diff --git a/test/arm/multi_v5_v6_defconfig.yaml b/test/arm/multi_v5_v6_defconfig.yaml
> new file mode 120000
> index 000000000000..5131c0b82c3d
> --- /dev/null
> +++ b/test/arm/multi_v5_v6_defconfig.yaml
> @@ -0,0 +1 @@
> +qemu-raspi1ap@multi_v5_v6_defconfig.yaml
> \ No newline at end of file
> -- 
> 2.47.3
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


