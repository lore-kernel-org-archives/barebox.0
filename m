Delivery-date: Tue, 22 Oct 2024 10:22:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t3AA2-007OPN-25
	for lore@lore.pengutronix.de;
	Tue, 22 Oct 2024 10:22:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t3AA2-0005L5-3L
	for lore@pengutronix.de; Tue, 22 Oct 2024 10:22:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6ZtalOByYC76agrCSxiS5VOLJcWoLRFMH4aCgex5/OY=; b=wq1686nbuize1sxyCwuhzNVbmS
	q5R7OGDkhLEQbkp5/ZEoir6kLeYNRWrrEBv9YRmvsWP8O2zAqJU1jAQCahVP9zXcNiDZXqDLanQrX
	HVGQJ64cSw3JwU336Z6/Mybcw1R3dFBzxF4R+y+BSyJBwS+2+JNVHvHYOMhq3O2mE3yoXlKpyAyGM
	ftTOju1HDHMuD+mBDmHm6Xed1q3Voq67gYLF9cgJBG9EusqK9bG+m89FY24nxoCiK5MLgVOKCOZ7e
	v/SEPSeNd/8bzIDV4ZiEKW2sXPywlFVvl2hLC28A5AC2i2dQgU8FlaRkUwm1AFmwK7B30K4xjGgGB
	QrtVRNAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3A9K-0000000A9CJ-0w3r;
	Tue, 22 Oct 2024 08:21:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3A7s-0000000A8vR-1nHV
	for barebox@lists.infradead.org;
	Tue, 22 Oct 2024 08:20:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1t3A7p-00056O-Ii; Tue, 22 Oct 2024 10:20:21 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1t3A7p-000pfX-1G;
	Tue, 22 Oct 2024 10:20:21 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1t3A7p-007WWR-0z;
	Tue, 22 Oct 2024 10:20:21 +0200
Date: Tue, 22 Oct 2024 10:20:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Jonas Rebmann <jre@pengutronix.de>,
	BAREBOX <barebox@lists.infradead.org>
Message-ID: <ZxdgRW6eDs0TYCnP@pengutronix.de>
References: <20241021-phytec-nfs-automount-v1-1-20787c288563@pengutronix.de>
 <b1699907-4424-4da5-bcbc-eed660f8d031@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b1699907-4424-4da5-bcbc-eed660f8d031@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241022_012024_499150_43B403EE 
X-CRM114-Status: GOOD (  16.70  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] automount: add nfs section to board automount scripts
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Oct 22, 2024 at 08:23:43AM +0200, Ahmad Fatoum wrote:
> Hello Jonas,
> 
> Thanks for your patch.
> 
> On 21.10.24 17:22, Jonas Rebmann wrote:
> > When nfs automount was introduced in b31b7cf7e8b6, board specific
> 
> Nitpick: Kernel convention is to format commit hashes as
> commit b31b7cf7e8b6 ("defaultenv-2: add automount for nfs").
> 
> > automount scripts where not updated
> 
> Nitpick: missing full stop.
> 
> > 
> > ---
> > Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
> 
> Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> 
> Note that this will be cut off by git am, because it's under the ---.

Fixed up while applying.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


