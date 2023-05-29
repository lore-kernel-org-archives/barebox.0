Delivery-date: Mon, 29 May 2023 11:26:24 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q3Z8z-001ALj-LP
	for lore@lore.pengutronix.de; Mon, 29 May 2023 11:26:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q3Z8x-00037U-0c
	for lore@pengutronix.de; Mon, 29 May 2023 11:26:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=f4DfMbUpn+YYeuSJLIBKY+8PVS/0sv5/wlvoYII3sVU=; b=t03ZN2mUwmGgmHdqbI5EmqKZ4O
	l6WCQZzpPVoGBualYeL61mfS9iG9tKYG7IQv1BPOPI8O1TNciAuKJfPh0U9jLQbnBtNuMJ/wfK91h
	8W6VJpnegQ0fgFOb3jyc0/sMFyFpHWZcc73xyJ6uHvzsszrquPeXhQtQyICMcYsYAGR9fY5ihm+UX
	sogu+LvuT82xbv4Y7lvSF4EbgHHwe1WVWtcMyS5+BCEvTiWfRqrfyOQJnttRNzki7Eib4fHe4OtpI
	saLePBbQB8uOxnf42qZmYMSMqDKLs2y2mbB6MCI9Z3JraX+/xyur/tcpdxm3Y9hHtF5qSwQseie8e
	vQgptb6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q3Z7o-009pcX-2I;
	Mon, 29 May 2023 09:25:12 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q3Z7l-009pal-0R
	for barebox@lists.infradead.org;
	Mon, 29 May 2023 09:25:10 +0000
X-GND-Sasl: jmaselbas@zdiv.net
Received: by mail.gandi.net (Postfix) with ESMTPSA id 95485C0003
	for <barebox@lists.infradead.org>; Mon, 29 May 2023 09:24:55 +0000 (UTC)
Date: Mon, 29 May 2023 11:24:54 +0200
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org
Message-ID: <ZHRvZvhez6nl8wv_@tour>
References: <20230524234328.82741-1-jmaselbas@zdiv.net>
 <20230524234328.82741-2-jmaselbas@zdiv.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230524234328.82741-2-jmaselbas@zdiv.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230529_022509_306519_756D19FE 
X-CRM114-Status: GOOD (  13.43  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 01/13] Documentation: sunxi: Add some documentation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

I will have to fix this

On Thu, May 25, 2023 at 01:43:16AM +0200, Jules Maselbas wrote:
> Add some informations about Allwinner sunxi boardssupport: the general
> boot process, how to use sunxi-fel tool, and how to create a bootable
> image disk.
> 
> Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
> ---
>  Documentation/boards/sunxi.rst | 95 ++++++++++++++++++++++++++++++++++
>  1 file changed, 95 insertions(+)
>  create mode 100644 Documentation/boards/sunxi.rst
> 
> diff --git a/Documentation/boards/sunxi.rst b/Documentation/boards/sunxi.rst
> new file mode 100644
> index 0000000000..535c9671b2
> --- /dev/null
> +++ b/Documentation/boards/sunxi.rst
...
> +eGON header
> +-----------
> +
> +The eGON header structure is described in the file ``include/mach/sunxi/egon.h``.
> +This is also documented on https://linux-sunxi.org/EGON .
> +
> +The eGON header, followed by the actual image, must be located at a fixed
> +offset of 8192 bytes (4K) from the start of the disk, either SD; or eMMC.
typo: s/4K/8K/


