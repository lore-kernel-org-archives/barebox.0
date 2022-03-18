Delivery-date: Fri, 18 Mar 2022 13:01:06 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nVBI0-00Fgqc-Cm
	for lore@lore.pengutronix.de; Fri, 18 Mar 2022 13:01:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nVBI1-0003EM-0e
	for lore@pengutronix.de; Fri, 18 Mar 2022 13:01:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qR785vuVfoq+mZFlKE/mFVH/XcGEQgo+/kypYrN+Zho=; b=PDZMCQ5GJ/l84m
	KG0G+bFOY2L7WJ5azWZyY4gDzJFlE7ohsAMPpRPErzMk03TOTW2Gum3PX4JUmc0r8Anwkinse75j/
	ZTmTaX7HMdAgxTnX/RN/hCv06TCNTfp5QdSHRNxujh0rlckmHCL36w4CAannPsisa/HVwKLGlOTK5
	ZFbGsiKSn/fyD0HmAKi4Xj7TKHLWNkYcrB0GBOpMKpMLQ+/ORbxkXajQwtwEKzfkhiLyr8vbLL5qi
	haMseVLoPo80aiiPlcR0WUOTFkpRFTBCR5GoI8hDj1NjqW+YXK+HNVTqfLXbf3WnkkYgVU8csHI/N
	xfdntH04q2VIxihTlb6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nVBGX-001VZQ-78; Fri, 18 Mar 2022 11:59:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nVBGS-001VYl-Ez
 for barebox@lists.infradead.org; Fri, 18 Mar 2022 11:59:30 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nVBGQ-0002xt-Fk; Fri, 18 Mar 2022 12:59:26 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nVBGP-0007AH-QC; Fri, 18 Mar 2022 12:59:25 +0100
Date: Fri, 18 Mar 2022 12:59:25 +0100
From: Sascha Hauer <sha@pengutronix.de>
To: Tibault Damman <tibault.damman@basalte.be>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Message-ID: <20220318115925.GC12181@pengutronix.de>
References: <DB7PR04MB424951EBC916B7A1E0A1B274E8119@DB7PR04MB4249.eurprd04.prod.outlook.com>
 <20220317074628.GT405@pengutronix.de>
 <a4886a48-717f-d970-49af-551f3138e201@basalte.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a4886a48-717f-d970-49af-551f3138e201@basalte.be>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 12:44:03 up 97 days, 20:29, 81 users,  load average: 0.01, 0.07, 0.08
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220318_045928_523244_8CE42CB1 
X-CRM114-Status: GOOD (  23.92  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: nand "BCH decoding failed" when using bch8_hw_romcode ecc mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Mar 18, 2022 at 11:32:36AM +0100, Tibault Damman wrote:
> Gah, I just saw how that mail was sent, let me try that again:
> 
> 
> Because the data looks right(?), despite the error prints, I tried
> ubiformat again from barebox, then booted linux from SD, and attached
> the ubi nand partition in linux... which worked fine.
> All volumes and data were there.
> 
> Very confused about what's going wrong here.

You can correctly write to the NAND and can even correctly read the
data, that's good news.

Reading is done in omap_gpmc_read_page_bch_rom_mode(). Here we have this
to read the OOB data:

> 	p = chip->oob_poi;
> 
> 	p += omap_gpmc_read_buf_manual(chip, p, 2, 5);
> 
> 	for (i = 0; i < 4; i++) {
> 		p += omap_gpmc_read_buf_manual(chip, p, 13, i + 1);
> 		p += omap_gpmc_read_buf_manual(chip, p, 1, 5);
> 	}

omap_gpmc_read_buf_manual() is called with uneven numbers of bytes. This
goes down to omap_read_buf_pref():

> 	/* take care of subpage reads */
> 	if (len % 4) {
> 		if (info->nand.options & NAND_BUSWIDTH_16)
> 			readsw(info->cs_base, buf, (len % 4) / 2);
> 		else
> 			readsb(info->cs_base, buf, len % 4);
> 		p = (u32 *) (buf + len % 4);
> 		len -= len % 4;
> 	}

This can't work properly for 16bit NANDs.

I don't know how to do this correctly though, you'll have to experiment
a bit here.

Have a look at "md -s /dev/nand0.raw 0+2112", then you can see how the
OOB data should look like and compare it with the data read in
omap_gpmc_read_page_bch_rom_mode(). The ".raw" is important, I saw you
printed 2112 bytes from a non raw device. I meant to print a single
page, on a non raw device that would be 2048. You might have to enable
CONFIG_MTD_RAW_DEVICE to get the raw device.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

