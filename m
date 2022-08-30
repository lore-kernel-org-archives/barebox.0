Delivery-date: Tue, 30 Aug 2022 09:32:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oSvjm-001U11-3B
	for lore@lore.pengutronix.de; Tue, 30 Aug 2022 09:32:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oSvjk-0001Y6-Kr
	for lore@pengutronix.de; Tue, 30 Aug 2022 09:32:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fz5ZmX0tR7ryPGiacVdl95dp5F19H2QdoJKe4SZOhec=; b=XMbzqbA/7xhRqEpKG4N96hsFOl
	8HwutCV4oVMl9iMd986eca8OUQENpSCaCJW53RIQC1Hete5dc/EGV5xR7HvPV64rEcAnT8+c/nu8x
	tPve0iuK36g6CF02iq1UODqPCJ5y2fQqqdrSoP3Nnqw6QVa94v8SLVuikosuxfuTEwALJuYZkvK9B
	MgXWNDz9d1d9dvdhsQWZImobsMTS2P5xRuUlcMKmYMZ5x/3O9jdxwPApdqelwpRIr9vZqX1o2uJtK
	XjEciq4OYK+e7gyqjTtXtDMPAOJMWbir5uTXX8oo9yMn1t2CqQI+ocN//9Na6Lv9ELYu9GZ4Ws+ZA
	lDTNsp/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvhw-00ElbI-Iu; Tue, 30 Aug 2022 07:30:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvhm-00ElXx-Pi
	for barebox@lists.infradead.org; Tue, 30 Aug 2022 07:30:40 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oSvhj-00018C-6W; Tue, 30 Aug 2022 09:30:35 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oSvhi-00080D-D3; Tue, 30 Aug 2022 09:30:34 +0200
Date: Tue, 30 Aug 2022 09:30:34 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>,
	barebox@lists.infradead.org
Message-ID: <20220830073034.GE24324@pengutronix.de>
References: <20220828140231.930643-1-enrico.scholz@sigma-chemnitz.de>
 <ad848886-ba94-1e34-0ae8-4157a19e8404@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ad848886-ba94-1e34-0ae8-4157a19e8404@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_003038_874485_C4C8C959 
X-CRM114-Status: GOOD (  21.19  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/8] tftp fixups
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Aug 29, 2022 at 12:52:16PM +0200, Ahmad Fatoum wrote:
> Hello Enrico,
> 
> On 28.08.22 16:02, Enrico Scholz wrote:
> > The "tftp: allocate buffers and fifo dynamically" patch in the last
> > patchset broke interaction with non rfc 2347 servers (e.g. when data
> > transfer starts immediately after RRQ/WRQ without the OACK negotiation
> > phase).
> > 
> > This has been fixed for both RRQ and WRQ requests.
> > 
> > For WRQ requests (push), the "tsize" option will not be sent anymore
> > because it is always '0' and can confuse servers.
> > 
> > New patches add some sanity checks which prevent modification of
> > internal information (blocksize or port numbers) when OACK packets
> > arrive in the middle of a transfer.
> 
> The patch introducing the regression is still in next, which can be
> rebased unlike master. Perhaps it would be best you provide a fixup
> for the commit in question (or a revised series, if it would cause
> conflicts for later commits)? That way, we don't end up with breakage
> when doing a bisect in future.

Yes, please. Both a fixup patch or a revised series would be fine with
me.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


