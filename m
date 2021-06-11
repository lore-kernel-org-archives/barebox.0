Delivery-date: Fri, 11 Jun 2021 14:35:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lrgO0-0006WK-Je
	for lore@lore.pengutronix.de; Fri, 11 Jun 2021 14:35:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lrgNw-0008SP-Nw
	for lore@pengutronix.de; Fri, 11 Jun 2021 14:35:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:MIME-Version:Message-ID:Subject:To
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hR00jZLtfApIEUmmZYCn1nMx9UKBsslT+ONLwuREq5c=; b=0Ab/FrVbvD0ZWA
	Hdu5BURPLoLJWYZtqoQ4wbzem0Y5GAa7pO0ecT/SJiCDxHm5ICja1Uz2rUUrqznJpaAP4ChpAz0Qv
	jXbXl2PT/OuPx7LLFPxgxqTbt4rA6AGfNLyU/G6Z+C3MNfw/i2KwuVlm9lSr1f2kWbiNj/yzdlp2r
	PJxul4mWJcNpvpho4BjrmhKB27WCcSgM3cV2GR6vNdqJFiwDZUTWdJM9eo1TXFUjv6tqhtMmcN2LJ
	qzN+g5McbrrlDRyXhMHuGsI8bMRnb6FNLySDtDC979+pfwbT5IURQ7uyUYd7SsT0Kw1dkuKUad/VU
	w851QQSWGI48/HH8bNCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lrgMV-005Fwz-5w; Fri, 11 Jun 2021 12:34:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lrgMQ-005FwN-7H
 for barebox@lists.infradead.org; Fri, 11 Jun 2021 12:34:07 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lrgMO-0008Br-Q4; Fri, 11 Jun 2021 14:34:04 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lrgMO-0000kq-GD; Fri, 11 Jun 2021 14:34:04 +0200
Date: Fri, 11 Jun 2021 14:34:04 +0200
To: Barebox List <barebox@lists.infradead.org>
Message-ID: <20210611123404.GG20470@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 14:28:11 up 113 days, 15:52, 122 users,  load average: 0.19, 0.14,
 0.13
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210611_053406_285137_4C28C709 
X-CRM114-Status: GOOD (  11.55  )
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
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,URIBL_SBL,
	URIBL_SBL_A autolearn=unavailable autolearn_force=no version=3.4.2
Subject: barebox IRC moving to libera
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi All,

Due to the latest freenode turbulences we like many others decides to
move over to libera. Meet us there in #barebox with your favourite IRC
client or via webchat on https://web.libera.chat/#barebox
The old channel on freenode is only used anymore to tell people to move
to the new channel.

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

