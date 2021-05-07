Delivery-date: Fri, 07 May 2021 12:59:30 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leyCg-0004JG-0Y
	for lore@lore.pengutronix.de; Fri, 07 May 2021 12:59:30 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leyCf-0005AL-5i
	for lore@pengutronix.de; Fri, 07 May 2021 12:59:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=D+xk6+8rfj3BfKlViM21eVcKqBMU0nWTK6NEyE2Y0HA=; b=rcNmnJmBo9xg3yZg55/n00mfY
	U5vxLlDMPbroj/nIif+GrA2NPF/UNNSrOE5eKYB5zlUSj4ThA5rrBcz0CWMX0bFgVbFaEv4Ia886l
	IaWScjI1+/xDcp0mJjk0gcsDBnU4mPJDn5mgMQ4u2c5FzHL+StnxksCHu/Vg2fpaQAU+gkl6RvGvc
	QPkwXdtaiic6ke0bh73g5eJAsiTVNiQiPkcHkRFTUJ7fY58FU/UatjdunQ6BVXQj+NogCxAfkPSKt
	IV/ijG1W0H4qqZw/DawAY0j1TY1qzKH5K6u29Aey52MRrsq5ecX/k/I4o4q32DMUOv8etYU9DD3GB
	Z13UMBMYQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leyBt-006taJ-D5; Fri, 07 May 2021 10:58:41 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leyBm-006tZY-B2
 for barebox@desiato.infradead.org; Fri, 07 May 2021 10:58:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=From:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=306ZF0gvf5QdGKN9efYhogAa77moaD3cyM25YPnj2Sw=; b=0RnHKbf1P8meVz9bR1AqLWjszJ
 nXWpOjAPANvxt1ZpdbjRt9VBsb9YWfpClZDOM5au0z1INyzTFBKczBsbed6IwQ68pQd1iPKjnKrec
 6UiNML/TvnjY9lYpIQNj3G87W4AWHzRZoq7GNpU5kmD2QRiiCs5wUPsvNVfC86Xnaifbw++AsLDHa
 oZbQr1X+7jql3Vh5Xb22QbOgZL3+k37EWzD0FxH2OiDJApzKdEqBDr/QBsTG+vsk2xMT6HjA2Qj+P
 ksz0qynF396Xzz+tuP88yU561ocpVdeRhGEQ76PcTPv4uA+9BNPSctAc66J/Jo7N7Cjg4y10FmmYj
 j8U1aexw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leyBj-006nYZ-Lm
 for barebox@lists.infradead.org; Fri, 07 May 2021 10:58:32 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1leyBi-00055t-Ed; Fri, 07 May 2021 12:58:30 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1leyBi-0003O8-4T; Fri, 07 May 2021 12:58:30 +0200
Date: Fri, 7 May 2021 12:58:30 +0200
To: Neeraj Pal <neerajpal09@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20210507105830.GW19819@pengutronix.de>
References: <CANi4_RU6QrU-ciUTpkLzGxp4fbibn0Dhyo4xP1m0=Mxm5LA74g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANi4_RU6QrU-ciUTpkLzGxp4fbibn0Dhyo4xP1m0=Mxm5LA74g@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 12:56:16 up 78 days, 14:20, 98 users,  load average: 0.03, 0.06, 0.08
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210507_035831_732423_16ABE928 
X-CRM114-Status: GOOD (  16.37  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [BUG] Out of bound read of size 1 in __d_alloc function which
 further leads to __default_memcpy function
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

On Sun, Apr 18, 2021 at 01:10:10AM +0530, Neeraj Pal wrote:
> Hi,
> 
> I have found the Out of bound read issue of size 1 when argv[2] is "" in
> __d_alloc function fs/fs.c:1254 which further goes
> and crashes into  __default_memcpy call lib/string.c:562
> 
> Tested on:
> - barebox-2021.04.0
> - git commit af0f068a6edad45b033e772056ac0352e1ba3613

I can reproduce this here. Thanks for reporting it. I just sent out a
series fixing this issue, you are on Cc:

Regards,
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

