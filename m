Delivery-date: Tue, 12 Oct 2021 10:12:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1maCuB-0003Sp-5y
	for lore@lore.pengutronix.de; Tue, 12 Oct 2021 10:12:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1maCuA-0002s0-AS
	for lore@pengutronix.de; Tue, 12 Oct 2021 10:12:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cT8ENuE05qygXbLAEqPdvqBogbmA8boPYqbZ9+CjZsQ=; b=F2TRedrgDwUxhMXiMEZM7Ziq59
	q27ctlFJBjWylyiXUAmamiSbHP1KHmREcjN7mx2ugKe2kfGnWRJi8xFPNSbnhUwNB+c0ekYOvlBye
	v6jx/x0vXQcmPWjh1n2NLp4Vi0IGlwd9q7Zn9gAvpJ13dik+YQi2xwvvPmyE3hLWqXfjz3kaDp7g5
	SRA0OZ1TpBKRb1/hI98Azfp/WPLxks6fHlGsWChBm+8mOPLRXdWsdhvbTDLwh6CqwW0L0UOhYKdrX
	c9eC7Czvtzh2bm5JNGXEtDVtMUSySf5gjHWC6soconxpt2Rvhg3GQ/5bKWtbzpiDQCvHzVJhaWZQj
	9fr9/PXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1maCsY-00BwqM-FJ; Tue, 12 Oct 2021 08:11:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1maCsR-00Bwof-RD
 for barebox@lists.infradead.org; Tue, 12 Oct 2021 08:11:13 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1maCsP-0002IH-K8; Tue, 12 Oct 2021 10:11:09 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1maCsP-0003P8-7a; Tue, 12 Oct 2021 10:11:09 +0200
Date: Tue, 12 Oct 2021 10:11:09 +0200
To: Trent Piepho <trent.piepho@igorinstitute.com>
Cc: Barebox List <barebox@lists.infradead.org>, Yunus Bas <Y.Bas@phytec.de>
Message-ID: <20211012081109.GM28453@pengutronix.de>
References: <20211012015359.933464-1-trent.piepho@igorinstitute.com>
 <20211012015359.933464-2-trent.piepho@igorinstitute.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211012015359.933464-2-trent.piepho@igorinstitute.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:09:00 up 236 days, 11:32, 140 users,  load average: 0.05, 0.18,
 0.18
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211012_011111_918589_EDBDED86 
X-CRM114-Status: GOOD (  19.22  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/3] imx-bbu-nand-fcb: Save bootloader location into
 device parameters
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Oct 11, 2021 at 06:53:58PM -0700, Trent Piepho wrote:
> When updating the FCB, save the location and size of the Barebox images
> into parameters on the NAND device.  Since the location and padding is
> calculated based on net NAND partition size, with an unknown number of
> bad blocks, these values aren't known beforehard.  Saving them will
> allow extracting or checksumming the Barebox image in NAND.
> 
> For example:
> sha256sum /dev/nand0.barebox ${nand0.barebox.firmware1_addr}+${nand0.barebox.firmware1_size}
> memcpy -s /dev/nand0.barebox -d /mnt/mmc0.0/imagedump ${nand0.barebox.firmware2_addr} 0 ${nand0.barebox.firmware2_size}

As you are adding a fcb utility command anyway in the next patch, maybe
it would be more convenient for the user to add a firmware extraction
option there instead of adding these device parameters.

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

