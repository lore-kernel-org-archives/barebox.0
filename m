Delivery-date: Wed, 25 Jun 2025 09:55:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uUKz9-00Ardp-0F
	for lore@lore.pengutronix.de;
	Wed, 25 Jun 2025 09:55:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uUKz8-0001kj-Gi
	for lore@pengutronix.de; Wed, 25 Jun 2025 09:55:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=axaYpLnEyZ4Wl/b39b9rxBxHKOKd1ebN4gFH2CBSPqc=; b=YPUY35KMtM7rRcBFLXRjS+Jsez
	rAMV25cHGIxY5vcBhHz21amvVOU8pBJjyZ9v46hIMfSR8BlBQ2qmkiQi0fYWDKXdkkfCAumYPK8Ry
	NnxUS/k+cRz4AgAIU08XspWXw0747KwTL2nTRpvWjeEQMhubmzTQifCqjZ9gKwSXdEuoJt0rU2i0f
	zq7EAj2eSf0u9U84up5Sg4XRTY7tMN33b8Vv2d7uP15VISjpmDEq4M5TVO3EMP/PXM9B7fmibeHGk
	ANfHnIXQJxtasx+HDCHYj/DhjE0qk9TAppLgjzF3WGqzP5xwKniuqu1x7fsJf8WqSPY+mDM1iw2UY
	zBhlGiIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUKyR-00000007sVL-3K2X;
	Wed, 25 Jun 2025 07:55:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUKIG-00000007lit-1h7E
	for barebox@lists.infradead.org;
	Wed, 25 Jun 2025 07:11:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uUKID-0007gP-CC; Wed, 25 Jun 2025 09:11:37 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uUKID-005F4e-0c;
	Wed, 25 Jun 2025 09:11:37 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uUKID-00H4oi-0C;
	Wed, 25 Jun 2025 09:11:37 +0200
Date: Wed, 25 Jun 2025 09:11:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Oleksij Rempel <o.rempel@pengutronix.de>, barebox@lists.infradead.org
Message-ID: <aFuhKVG-nXjH624j@pengutronix.de>
References: <20250612065812.2025665-1-o.rempel@pengutronix.de>
 <20250612065812.2025665-9-o.rempel@pengutronix.de>
 <aFEfuaLIvT8cMLLA@pengutronix.de>
 <e2448275-4868-4e13-b4b4-30e182f63d44@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e2448275-4868-4e13-b4b4-30e182f63d44@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250625_001140_441112_A3C32FFB 
X-CRM114-Status: GOOD (  17.80  )
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
X-Spam-Status: No, score=-1.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	SUBJECT_IN_BLACKLIST,SUBJECT_IN_BLOCKLIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v3 8/9] fs: Report errors for out-of-bounds protect
 operations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Jun 25, 2025 at 07:45:39AM +0200, Ahmad Fatoum wrote:
> Hi,
> 
> On 17.06.25 09:56, Sascha Hauer wrote:
> >> -	if (count > f->f_size - offset)
> >> -		count = f->f_size - offset;
> >> +		return errno_set(-ENXIO);
> >> +	if (!count  || count > f->f_size - offset)
> >> +		return errno_set(-EINVAL);
> > 
> > This breaks the saveenv command which does a
> > 
> > 	ret = protect(envfd, ~0, 0, 0);
> > 
> > to unprotect the environment sector. Try on a board with environment in
> > SPI flash.
> 
> Just ran into this as well. It's easy to reproduce with QEMU.

Nah, I shouldn't have applied this series. Oleksij sending two
additional patches somehow trapped me into thinking that with these two
patches that with these everything would be fine.

For now I have dropped this particular patch from -next.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


