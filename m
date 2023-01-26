Delivery-date: Thu, 26 Jan 2023 09:46:57 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKxuM-002V8A-NQ
	for lore@lore.pengutronix.de; Thu, 26 Jan 2023 09:46:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKxuJ-0000Rc-21
	for lore@pengutronix.de; Thu, 26 Jan 2023 09:46:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jADmrlukeJgX7XovCfnrTAcpplfI4fxFH4bwJldaH1Q=; b=p0ACz1dMHdQvhUEO+F4Dibk/wU
	x1EaxVI6cWb34ikxU/YOeFRxrXw17JjNTD7EHDsSgDOxpcgp9Yf5rPSDpCqs93NXKEIsm8h8zQTFm
	HJ7z/UjdeuBCjPtSGVy34TlrdiGhRsxwyk0UCBkJ1Fh65RathorXP9aSiymFm7N0ZSnrZYzDsI4FR
	RzFh/Ve1bDYrpWA5nZsD8n+hxUnRgLdOYil83/kBZWNFG4df+I92uXsF0b2HQdF0ODmC38XNSCv5w
	bmfSCHBcfqej2dL6nMDzWjviSYry+fK/tchBXkyELF3dEflQwnxpjbE8rWFuXwYHbLYMsVyhWwQqY
	2CCf6f7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKxso-00A4co-L1; Thu, 26 Jan 2023 08:45:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKxjz-00A0ry-Hb
	for barebox@lists.infradead.org; Thu, 26 Jan 2023 08:36:17 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pKxjy-0006mm-4f; Thu, 26 Jan 2023 09:36:14 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pKxjx-0005nA-Tp; Thu, 26 Jan 2023 09:36:13 +0100
Date: Thu, 26 Jan 2023 09:36:13 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230126083613.GM13319@pengutronix.de>
References: <20230125095236.2626065-1-a.fatoum@pengutronix.de>
 <20230125095236.2626065-2-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230125095236.2626065-2-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230126_003615_644192_551B4CFD 
X-CRM114-Status: GOOD (  16.64  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [RFC PATCH 2/2] net: ifup: have ifup -a stop at the first
 interface
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jan 25, 2023 at 10:52:36AM +0100, Ahmad Fatoum wrote:
> The normal use case for ifup -a is to get *some* interface working and
> not really wait for all interfaces to come up and then timeout waiting
> for those without link up to get their DHCP lease. Thus repurpose ifup
> -a to mean bring up all interfaces until first success with the new
> ifup -A restoring the old behavior.

I am not very keen on changing the meaning of the -a option. We should
rather keep -a like it is and add a new option for your purpose, like
-s (for "s"ome interface) or -o ("o"ne interface).
The occurences of "ifup -a" in the tree can/should be changed then
accordingly as well.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


