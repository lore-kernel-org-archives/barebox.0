Delivery-date: Mon, 23 Jun 2025 11:35:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uTdaN-00ADhd-0h
	for lore@lore.pengutronix.de;
	Mon, 23 Jun 2025 11:35:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uTdaM-0000d1-Mx
	for lore@pengutronix.de; Mon, 23 Jun 2025 11:35:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+v5zFO4c6F7uqpWQWSxDHvTrCYUmpBJ7Unmfjo5xZAU=; b=pEkTYw31ada32PLY76AtF6qMCm
	usBD0eYM1pTWgf5L4NRS6+B+VvJZ/dByv3qbh3Y8gQtnRxbuQIR7y9zh45smpkTQLFjWEnvWkske+
	v7ct8yV7NaotS8P8cOL41LhUgA0GjLEBQgxZujMP0+9bMZ4TCHi+xGQ8sWYYMiwl71uXFaRCzBBSO
	ZKYT3I36kceQGKG2QykN703f2dnIoyTAowlpea4RVHoe6s4+YerJ1w0O/iLx/E3DNV1nJsrW0rM+q
	qQRYEKikIVlyfXzWv1/OSWzdUDUbIj8IsZQ+1ZD4QjFautMGFpzm9LlApTM1x1Cs7nHa3PwXRHkki
	Hx29bvZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTdZl-00000002BwH-3TMy;
	Mon, 23 Jun 2025 09:34:53 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTdRP-00000002AbO-2S6f
	for barebox@bombadil.infradead.org;
	Mon, 23 Jun 2025 09:26:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=+v5zFO4c6F7uqpWQWSxDHvTrCYUmpBJ7Unmfjo5xZAU=; b=fiUj8jbKsywcX1rZ6ADSMv2iRC
	JK0/AYv/St1sZr1ma+AvqiMbeuf16O8XK74Bg6fbp47i3d2dO4bNcSz+D0F13AVqC93LKNcEbiGJ4
	DUVEZkzR5scUcRWvsg902mUWlDql4ziI7IkA/pKXtUVu817F9iMjLTu/LcsxLHTBclYYq3RFaRTQB
	fv1AOBHQpEFAkBmVWqFyosDXGi+V4FGdVAsY8MwG2HOlViIrcHesTPgMPGx8zaCsguqA00B05bmop
	VXKRDh2nhCDRXwPp05wtn0tXkQWU7KcHJPVvZtGA6Jv0d6yy9Lqf3bpBApJnzV7MJ+Na2X3ODIVIz
	AzPCY2Qw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTdRM-00000005AKS-3DFv
	for barebox@lists.infradead.org;
	Mon, 23 Jun 2025 09:26:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uTdRJ-0007WH-OJ; Mon, 23 Jun 2025 11:26:09 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uTdRJ-004vL6-1o;
	Mon, 23 Jun 2025 11:26:09 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uTdRJ-00D95S-1S;
	Mon, 23 Jun 2025 11:26:09 +0200
Date: Mon, 23 Jun 2025 11:26:09 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@barebox.org>, barebox@lists.infradead.org
Message-ID: <aFkdsVjNI2RKKz3a@pengutronix.de>
References: <20250623062641.3529615-1-a.fatoum@barebox.org>
 <20250623062641.3529615-3-a.fatoum@barebox.org>
 <0354f477-bcf0-4feb-b838-8a49b53428d0@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0354f477-bcf0-4feb-b838-8a49b53428d0@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250623_102612_902494_8F1C2308 
X-CRM114-Status: GOOD (  15.63  )
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
Subject: Re: [PATCH 2/3] test: py: test mount/unmount of pstore file system
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Jun 23, 2025 at 10:37:39AM +0200, Ahmad Fatoum wrote:
> Hi,
> 
> On 6/23/25 08:26, Ahmad Fatoum wrote:
> > The file system internals were recently touched to enable easier porting
> > of the 9P file system. This led to regressions[1][2] that broke
> > unmounting a volumes.
> 
> I pivoted from testing with pstore to ramfs as I needed to create a
> file. Sascha, could you s/pstore/ramfs/ in the commit message title?

Did that.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


