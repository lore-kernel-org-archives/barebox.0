Delivery-date: Wed, 03 Apr 2024 13:41:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rryzF-0061Ud-2P
	for lore@lore.pengutronix.de;
	Wed, 03 Apr 2024 13:41:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rryzF-0003hc-77
	for lore@pengutronix.de; Wed, 03 Apr 2024 13:41:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cAK10p6u04p1WZYxKjgXAG0daVVs2fRcNKshqfZbL9A=; b=fVI9/fh7i1eVGaBX/I9GK/3qgw
	KDSwDJriLCnNLdy1p8aXUXvlilcJ2kuGeshUt9YrE/vjhdAOOm+3xzGQncfP0G6XfKtYOP/f+LJ+v
	/naBRKc/VPuqyGaZcOiHSspD1uely9cwkZrbquq6JwVDCX/0KD2nToSBvI7XO7xmEqm+X9ckUmBkk
	XyP7HpwUoLeKA6z8cPVK/QMNIpCWbCe0p/gThqB03wR+oK9Hgf8lBToMWDX2WTiWyZwM0rIv4r4Gn
	pueBLw7v0zT5juJXARPWf0AvpT9mqjpUK3Y64/lUyxG6T2I45sV9WvsMN88qIYGZjkCWxy739mcDt
	nOzbaLsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rryyq-0000000Fopw-0IiR;
	Wed, 03 Apr 2024 11:40:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rryyl-0000000Fooy-1iCw
	for barebox@lists.infradead.org;
	Wed, 03 Apr 2024 11:40:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rryyk-0003HV-7c; Wed, 03 Apr 2024 13:40:30 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rryyj-00AAOx-RR; Wed, 03 Apr 2024 13:40:29 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rryyj-00CQZo-2U;
	Wed, 03 Apr 2024 13:40:29 +0200
Date: Wed, 3 Apr 2024 13:40:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, lgo@pengutronix.de
Message-ID: <Zg1ALfoKRUHRd46Z@pengutronix.de>
References: <20240402135035.3700601-1-a.fatoum@pengutronix.de>
 <20240402135035.3700601-4-a.fatoum@pengutronix.de>
 <41331053-3e69-4f2b-a5dc-2fb6d37d5a9f@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <41331053-3e69-4f2b-a5dc-2fb6d37d5a9f@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240403_044031_463858_22A39DCE 
X-CRM114-Status: GOOD (  14.02  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 3/4] input: imx-keypad: remove now-duplicate debug
 messages
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Apr 02, 2024 at 04:06:49PM +0200, Ahmad Fatoum wrote:
> On 02.04.24 15:50, Ahmad Fatoum wrote:
> > With the recent addition of CONFIG_EVENT_EVBUG, the debug messages in
> 
> s/CONFIG_INPUT_EVBUG/CONFIG_EVENT_EVBUG/
> 
> Please let me know if I should resend.

Fixed while applying.

> 
> > both i.MX keypad driver adds no extra value, so remove it.

Also removed the 'both'

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


