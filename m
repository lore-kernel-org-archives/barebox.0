Delivery-date: Thu, 03 Feb 2022 11:17:43 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nFZBP-004aof-Gd
	for lore@lore.pengutronix.de; Thu, 03 Feb 2022 11:17:43 +0100
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nFZBN-0002hN-Qj
	for lore@pengutronix.de; Thu, 03 Feb 2022 11:17:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8v4iX5Jovu6VLb9z92BJHuOvZNuD7o3K1I0KdlnCiaA=; b=YZZo4Do75EXligt5E4eHmAbJAY
	SOY+NjWgWt8IpD938jENhgmm2mqwVZnSlaefgNW9ijiESFgLNHBuY0hBXhVuNfaoscA/P4T7/tXHx
	4u1ovnEfwvqEYc+iKSUvK0VTgjYQSBJE89yHjenImIvU631fNFSUnhH0Czsyz5S3OBvfVY/QRoVYn
	Ew1DYurh1WIXn1z1Or5W3kFBL03lfTQOf73rrGA43mCwtnF272a9Fc4/f95xIWq4hwEjV4ojBNDM6
	RCklXqZ+BzQHBWWGKg0F28C7C0RSUD7L3hKwdOHJOBeXjIZRSyd6+MqtlFAdGkQPeDrVw781LF2sQ
	Mgl8OdeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nFZAA-000lxe-Re; Thu, 03 Feb 2022 10:16:26 +0000
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nFZA3-000lvy-Kl
 for barebox@lists.infradead.org; Thu, 03 Feb 2022 10:16:21 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nFZA2-0002Yh-By; Thu, 03 Feb 2022 11:16:18 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nFZA2-0000ni-3J; Thu, 03 Feb 2022 11:16:18 +0100
Date: Thu, 3 Feb 2022 11:16:18 +0100
To: Michael Tretter <m.tretter@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220203101618.GK23490@pengutronix.de>
References: <20220202101054.3924339-1-m.tretter@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220202101054.3924339-1-m.tretter@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:16:04 up 54 days, 19:01, 81 users,  load average: 0.07, 0.10, 0.12
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220203_021619_711969_D069208F 
X-CRM114-Status: GOOD (  23.54  )
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
X-SA-Exim-Connect-IP: 198.137.202.133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] firmware: zynqmp-fpga: fix use of uninitialized addr
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Feb 02, 2022 at 11:10:54AM +0100, Michael Tretter wrote:
> The bitstream loading API of the firmware is a bit clunky, as the driver
> needs to either pass the size of the bitstream or a pointer to the size
> of the bitstream.
> 
> Commit 2f29ee311f1d ("firmware: zynqmp-fpga: do not use DMA coherent
> memory for bitstream") broke the loading by address, as the pointer to
> the bitstream size was set using the uninitialized DMA address.
> 
> Fix it by determining the argument that is passed to the firmware after
> the bitstream has been mapped and always write the size of the bitstream
> at the end of the passed buffer.
> 
> Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
> ---
>  drivers/firmware/zynqmp-fpga.c | 13 ++++++-------
>  1 file changed, 6 insertions(+), 7 deletions(-)

Applied, thanks

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

