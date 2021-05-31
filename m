Delivery-date: Mon, 31 May 2021 10:27:25 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lndGf-0003VY-7L
	for lore@lore.pengutronix.de; Mon, 31 May 2021 10:27:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lndGe-0000DX-4V
	for lore@pengutronix.de; Mon, 31 May 2021 10:27:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h4aV/Q7QH0Y5zn/s+/e+1EkhDQAYUABFEj2INvCO3yg=; b=incxeoGi7vIdlh
	zvyrV1vBcZP/qw/IsafJFdm3LD6g4fevqL/vKa7GG/7a3x0Rw1qRfgYxWxci53PZFK9W5DY+rY6YJ
	Y1sBPEusHn34LgzQouTuh/env69Zcfuxpzy4jeJNkWHNPbvtnXgPcUPOgI9Bv3hCjUgJQu/838fbS
	7NVMo29KmhFgeFaD345qvAbEtMnAVPw9c+e6LDo7AdKKBKy1TlhwnyQ+MXdEGd2Ob0NAuDvM+w+qs
	kBdSMzk57M22vP5sHAAZV1S+NS+lV9zfV/6Jy5OP/pFFiivmfhQ0k9GTkRL1lzDUiI7U6bec4esry
	RduwQXz2cOj0CgeaT/Hw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lndFS-00BQio-AR; Mon, 31 May 2021 08:26:10 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lndEA-00BQGL-EE
 for barebox@lists.infradead.org; Mon, 31 May 2021 08:24:51 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lndE9-000844-3q; Mon, 31 May 2021 10:24:49 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lndE8-00083t-Q7; Mon, 31 May 2021 10:24:48 +0200
Date: Mon, 31 May 2021 10:24:48 +0200
From: Sascha Hauer <sha@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20210531082448.GM5211@pengutronix.de>
References: <20210527124453.22710-1-a.fatoum@pengutronix.de>
 <20210531071353.GD5211@pengutronix.de>
 <45eca231-6dbf-f3f9-1753-05f993ee3f54@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <45eca231-6dbf-f3f9-1753-05f993ee3f54@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:22:02 up 102 days, 11:45, 127 users,  load average: 0.30, 0.24,
 0.25
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210531_012450_521611_3B786942 
X-CRM114-Status: GOOD (  18.90  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] video: reunite fb devices with their hardware parent
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, May 31, 2021 at 10:20:59AM +0200, Ahmad Fatoum wrote:
> 
> 
> On 31.05.21 09:13, Sascha Hauer wrote:
> >>  
> >>  	fb_of_reserve_add_fixup(&fbi.info);
> >>  
> >> +	fbi.info.dev.parent = dev;
> > 
> > Should be hw_dev here. Fixed while applying, thanks
> 
> Ouch. Thanks for the fixup. Shows how much I/We would benefit from merging
> the testing series soon, so Github Actions can start building these configuration
> I inadvertently break :))

Don't worry. I catched this during review, but even without it I build
all defconfigs before merging a commit to master.

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

