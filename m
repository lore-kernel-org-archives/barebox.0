Delivery-date: Tue, 09 Aug 2022 11:54:27 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oLLwP-00HEeg-1I
	for lore@lore.pengutronix.de; Tue, 09 Aug 2022 11:54:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oLLwQ-0000VN-16
	for lore@pengutronix.de; Tue, 09 Aug 2022 11:54:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nq6j66KVor8/8K6IdnqN3ShMUJPGQDhGALSFuPJL8lA=; b=FpfOD8/j4+5r4wcSBW8f6Pduwk
	SEWm97BY6DfrWKh8v5dlYJIQNpx84w73cugTFwl+6tVWrCidkF2Ld3Yv9lcXovpLFKnrdp+WgPuB+
	qTgA49KFxqGumeQpXwvmUCdPRVevXW6jXLy2RGTDEao/tEVMUv54oPBQO/jLphK6HwlxyIrs0RD6v
	l9Vs+QeY8SSUPUXGyep2aCeYuliKznA+NSEZdjWUf0t4UUsFBWBzjJ+g1dmVsW/UoGlMqYx06gDx8
	WbRlX30etkeqkFR6jVLGg1YYMsBoXTX8Ngsqm0qUSTcmJZkH/ccHI+TfpFh0G/X2bVBCaelJzF2d2
	moE/m5AA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLLv5-0038ye-3k; Tue, 09 Aug 2022 09:53:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLLv1-0038xv-1t
	for barebox@lists.infradead.org; Tue, 09 Aug 2022 09:53:00 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oLLuz-0000Nl-RE; Tue, 09 Aug 2022 11:52:57 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oLLuz-00046Z-IH; Tue, 09 Aug 2022 11:52:57 +0200
Date: Tue, 9 Aug 2022 11:52:57 +0200
From: Sascha Hauer <sha@pengutronix.de>
To: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220809095257.GQ31528@pengutronix.de>
References: <9133a12926ffb700725459d42b67618ec7d3b4f8.1658144543.git.enrico.scholz@sigma-chemnitz.de>
 <20220731113645.4092241-1-enrico.scholz@sigma-chemnitz.de>
 <20220809084900.GJ31528@pengutronix.de>
 <lyiln1zryn.fsf@ensc-pc.intern.sigma-chemnitz.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <lyiln1zryn.fsf@ensc-pc.intern.sigma-chemnitz.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220809_025259_113934_D21C2114 
X-CRM114-Status: GOOD (  23.15  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 09/13] tftp: implement 'windowsize' (RFC 7440) support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Aug 09, 2022 at 11:28:16AM +0200, Enrico Scholz wrote:
> Sascha Hauer <sha@pengutronix.de> writes:
> 
> >> +config FS_TFTP_MAX_WINDOW_SIZE
> >> +	int
> >> +	prompt "maximum tftp window size (RFC 7440)"
> >> +	depends on FS_TFTP
> >> +	default 128
> >> +	range 1 128
> >> +	help
> >> +	  The maximum allowed tftp "windowsize" (RFC 7440).  Higher
> >> +	  value increase speed of the tftp download with the cost of
> >> +	  memory (1432 bytes per slot).
> >> +
> >> +	  Requires tftp "windowsize" (RFC 7440) support on server side
> >> +	  to have an effect.
> >
> > Can we agree on some sane default here and drop this from Kconfig?
> 
> I think, it is difficult to find a sane default.  Processors like iMX8
> can deal with large window sizes, but low end ones like iMX6ULL can not
> handle data fast enough and require smaller sizes (around max 30).
> 
> Workloads like writing to slow memory (cp /mnt/tftp/... /dev/nand) might
> require smaller sizes too.  Or networks with high drop rates.
> 
> That's why, I think it should be possible to configure it in some
> _defconfig.

It's exposed to global.tftp.windowsize and with this you can store a
good value on the device and you can provide different defaults for different
boards in their default environments during compile time. It's much more
flexible than Kconfig.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


