Delivery-date: Mon, 27 May 2024 15:04:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sBa1a-000gaY-2k
	for lore@lore.pengutronix.de;
	Mon, 27 May 2024 15:04:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sBa1a-0008J8-9e
	for lore@pengutronix.de; Mon, 27 May 2024 15:04:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Mqv2FOrICQxCMu05Fym/flL6kjQpAHiavfqirgXaniw=; b=elj4ndfzfaH5eXUzJ0QliyN/uX
	sr0es0E84eRUpt+q740ZaJhkByqoBf6CyAxGTWT6i+hmlfX8SsPrbL6SErRKmd6E3vGkOvX5igp27
	Y5FmO0dQYG25fAWVawYdIipuPQpiC7mdjctpbmPps/rH2HNyiO6cwVfWDxFQmB2Kq/aimYtyPp6WY
	JpT3ufm3DpFYm3v49plyRxFkcmdC3qN3ir9K4cAidf7yuVMfC2bvsELeIgEf2O9wbmfUVEY9TGCGm
	ML03YfLPuh2oZYZdzp1VgkzBkF4a1LTzr9/td7qzpLD2e0BBsdUU2sdjWXX/W13QjuCn/+5AcbQLS
	xrTFvy5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBa0t-0000000F0eK-2pRc;
	Mon, 27 May 2024 13:03:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBa0p-0000000F0bO-2lyk
	for barebox@lists.infradead.org;
	Mon, 27 May 2024 13:03:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1sBa0o-0008Ax-Ax; Mon, 27 May 2024 15:03:38 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1sBa0n-003C8T-Uq; Mon, 27 May 2024 15:03:37 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1sBa0n-00H7T1-2r;
	Mon, 27 May 2024 15:03:37 +0200
Date: Mon, 27 May 2024 15:03:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Message-ID: <ZlSEqcJ7owCzilh6@pengutronix.de>
References: <20240527125725.1722214-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240527125725.1722214-1-s.hauer@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240527_060339_729553_97A45C7D 
X-CRM114-Status: GOOD (  17.32  )
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
Subject: Re: [PATCH] mtd: nand: mxc_nand: sync with kernel driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, May 27, 2024 at 02:57:25PM +0200, Sascha Hauer wrote:
> The software BCH ECC support merged into barebox was a preliminary
> version. Sync this with the code that was merged to the kernel.
> This hasn't hit Linus' tree yet, but is merged into next:
> https://lore.kernel.org/all/20240527121848.178542-1-miquel.raynal@bootlin.com/
> 
> The version first merged into barebox has a syndrome page layout. With
> this patch this is changed to the regular user data / OOB layout so that
> the raw layout on the NAND matches the view the nand core has on the
> chip. Merge this ASAP to match the layout the Kernel uses. The previous
> layout didn't hit a release yet and should not be used.

Actually it did hit a relase, namely 2024.05.0. Bad timing :(
Anyway, chances are good nobody is using it yet.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


