Delivery-date: Thu, 25 Nov 2021 08:46:59 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mq9T9-0005MD-Bx
	for lore@lore.pengutronix.de; Thu, 25 Nov 2021 08:46:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mq9T8-0006ns-Gi
	for lore@pengutronix.de; Thu, 25 Nov 2021 08:46:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ytNT7OpL6Zjh8U1iQ2VD0Zdbq+HoAyx0jdfBFKNfWPA=; b=McgasEuzYWXTBMSGi6GUEPGz1J
	QWVWX72+gyiJOUBKhScdNyoegr40fWyb/suVdboCyWpm7R/AQOSj+L3NmDjY13UuiLBXQSgLDSfUk
	+ix+Pjaj2dAaBlyIwOBsfXP5qKL5fIedvq9VtUNpGSJ9eU4Xg8J725GU0APqt0l07zSV9Zjpo5CDt
	v8tIXzENtqfk9Q0Ce1v9XrKRrJP4vI7+XEeKSN3GZ/+dwTuqX3TQNm3xveuabA0LJjxjApGluFZGW
	fJPX+WOjgzIVSNz7iD94MmQFqHNtw+fJOKUAYawXFYhqMb2v7DCo+JNo5bYoKgvn390eNTQaykEd1
	+c+IM/Vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mq9S1-006cTy-28; Thu, 25 Nov 2021 07:45:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mq9Rv-006cT0-44
 for barebox@lists.infradead.org; Thu, 25 Nov 2021 07:45:44 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mq9Rt-0006UN-V2; Thu, 25 Nov 2021 08:45:41 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mq9Rt-0007Zd-9d; Thu, 25 Nov 2021 08:45:41 +0100
Date: Thu, 25 Nov 2021 08:45:41 +0100
To: Jules Maselbas <jmaselbas@kalray.eu>
Cc: barebox@lists.infradead.org
Message-ID: <20211125074541.GB28260@pengutronix.de>
References: <20211122173123.17252-1-jmaselbas@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211122173123.17252-1-jmaselbas@kalray.eu>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:45:25 up 280 days, 11:09, 136 users,  load average: 0.38, 0.21,
 0.19
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211124_234543_185599_41A031B1 
X-CRM114-Status: GOOD (  19.71  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] usb: dwc2: host: Do not map buffer on zero len packet
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Nov 22, 2021 at 06:31:23PM +0100, Jules Maselbas wrote:
> The transfer_chunk can be called for zero length packet, in such case
> the buffer pointer is NULL and can fail to be mapped for the device.
> 
> In such case the device DMA address can be directly set to 0, as the
> buffer address should be NULL anyway, without calling map/unmap at all.
> 
> Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
> ---
>  drivers/usb/dwc2/host.c | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)

Applied to master, thanks

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

