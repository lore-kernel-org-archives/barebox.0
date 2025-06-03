Delivery-date: Tue, 03 Jun 2025 09:47:39 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uMMN1-003Ehg-24
	for lore@lore.pengutronix.de;
	Tue, 03 Jun 2025 09:47:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uMMN1-0001Ya-20
	for lore@pengutronix.de; Tue, 03 Jun 2025 09:47:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=G+EDRs2VCi4bYWg7WDbpyCtc7zN7OR0NFpiGBoIY3Gc=; b=2TA31WsOBD/vsmCjBjxLqlMxLW
	GR1ZLVP70T8rItNXLtXzdJ4fBSbZzh5id5N8yYmWe/pD412oXRVofUFXGxI0kTM4H2k1Bu0Y6CMnX
	E2djsd83PnVCwY1lst/jTKY6Q+QoWZrFhfIr96Kc+mmmDO8lAGTMuNoTUJ/2cJbYDfFU9tZS1gGLs
	A8ABPeqfbm8+qAOrIdrtpszdmVxp60AVINLguQB0NDUclkMkgzK8xd3pNQ/AhxOApYTWwIlhKH01D
	FQg/TeYyXo7BSfD9v/o4PaJa1P0hzjLQhNalUc9CaGy7um5gIjj4gUgfuOY2E7OVQeYbg8r9mDRnU
	JIGNkJsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMMMF-0000000ABsP-1fO8;
	Tue, 03 Jun 2025 07:46:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMMMB-0000000ABs1-4787
	for barebox@lists.infradead.org;
	Tue, 03 Jun 2025 07:46:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uMMM9-00012k-Us; Tue, 03 Jun 2025 09:46:45 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uMMM9-001aQd-2U;
	Tue, 03 Jun 2025 09:46:45 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uMMM9-008XdN-25;
	Tue, 03 Jun 2025 09:46:45 +0200
Date: Tue, 3 Jun 2025 09:46:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <aD6oZccyFXZWX2q1@pengutronix.de>
References: <20250602-createnv-v1-0-c3239ff875d5@pengutronix.de>
 <20250602-createnv-v1-2-c3239ff875d5@pengutronix.de>
 <20250602221633.i7xvmam4jwb22vwz@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250602221633.i7xvmam4jwb22vwz@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250603_004648_018645_20844983 
X-CRM114-Status: GOOD (  24.31  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/5] partitions: Start partitions at 8MiB offset
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Jun 03, 2025 at 12:16:33AM +0200, Marco Felsch wrote:
> Hi Sascha,
> 
> On 25-06-02, Sascha Hauer wrote:
> > There are many SoCs that store the bootloader on the raw eMMC/SD device
> > outside of partitions. Examples are all i.MX SoCs and Rockchip SoCs.
> > Until now the first partition starts at offset 1MiB and with this we
> > risk conflicting with the bootloader.
> > 
> > It's cumbersome to sort out all SoCs that have this problem. With
> > nowadays eMMC/SD card sizes it doesn't really matter anymore, so change
> > the 1MiB offset to 8MiB which is still only a small fraction of the
> > card size, but leaves enough space for putting the bootloader into.
> > 
> > Note the change in the GPT partition handling introduced with this
> > change. The layout previously was:
> > 
> > LBA0: MBR
> > LBA1: GPT header
> > LBA2-33: GPT partition entries
> > 
> > which now becomes:
> > 
> > LBA0: MBR
> > LBA1: GPT header
> > LBA16352-16383: GPT partition entries
> > 
> > This means the GPT partition entries moved from LBA2 to just below the
> > 8MiB boundary and LBA2-16351 are now free for the bootloader. This helps
> > with with older SoCs on which the bootloader overlaps with the normal
> > location of the GPT partition entries, like i.MX7 and earlier.
> 
> I know that eMMC became quite large these days but always 'wasting' 8MiB
> on systems which utilize the eMMC-boot partitions is not very user
> friendly.

That's 0.78% of 1GiB SD card, it's really not much. Anyway, I can add a
command line option for parted.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


