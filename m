Delivery-date: Mon, 09 Mar 2026 09:08:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vzVf2-009gM2-25
	for lore@lore.pengutronix.de;
	Mon, 09 Mar 2026 09:08:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vzVf2-0001iC-W7
	for lore@pengutronix.de; Mon, 09 Mar 2026 09:08:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SBJSnU/7TJ5XSgUv9wPbF1CJY8xxS/PfyVvx1q4Px00=; b=QM9NmkuCYdOnb/fHik7UFiFdsf
	QxtEfWw8GMCdljQ5simLG8B6y7mNAyX305JiAPH3Z9wItIbNO0DGJ+dxXXoc5ENXe5RsdIVbiP7Fc
	Br5mnNvz9QNJEdYy9SL91UsUoGigOj2PldBfhZbBlwruTdlch3/8vUCRfXUHbC9xk0R2xjiqtzVph
	MqQPmhRfH8KN2eX9pazyiE9CPRGS4SMRkC7sIVQND6iVjsdA0cPRZR6hfrs5aL3GJEgxnLnueQhtG
	57O33dqQLdzCJrv0jIIbcSh4iajJu3GPlKch1kkyijzgQa+mY8fEnBzUsWYlYLR+/Sgyuhm0Kid4/
	Q+lax8+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzVeZ-00000006rca-3x4S;
	Mon, 09 Mar 2026 08:07:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzVeX-00000006rbc-2nWJ
	for barebox@lists.infradead.org;
	Mon, 09 Mar 2026 08:07:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vzVeU-0001Wn-68; Mon, 09 Mar 2026 09:07:46 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vzVeS-004Uqf-25;
	Mon, 09 Mar 2026 09:07:46 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1vzVeT-00000009ZNi-3mkU;
	Mon, 09 Mar 2026 09:07:45 +0100
Date: Mon, 9 Mar 2026 09:07:45 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>,
	Ulrich =?iso-8859-15?Q?=D6lmann?= <u.oelmann@pengutronix.de>
Message-ID: <aa5_0YnkZTv0UOWU@pengutronix.de>
References: <20260306103812.1330722-1-u.oelmann@pengutronix.de>
 <177304263810.694706.16649903430014321885.b4-ty@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <177304263810.694706.16649903430014321885.b4-ty@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260309_010749_708155_EE081B07 
X-CRM114-Status: GOOD (  15.67  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] i.MX: hab: always lock SRK hash after fusing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Mar 09, 2026 at 08:50:38AM +0100, Sascha Hauer wrote:
> 
> On Fri, 06 Mar 2026 11:38:12 +0100, Ulrich Ölmann wrote:
> > The flag IMX_SRK_HASH_WRITE_LOCK has been present since the introduction of
> > barebox' hab command in [1], but only got its first user recently. Keeping SRK
> > hash locking optional is dangerous though: after programming the SRK hash,
> > leaving it writable allows later manipulations which can render a device
> > unbootable.
> > 
> > Make SRK hash programming always burn the corresponding lock fuses on all
> > supported i.MX variants (IIM/OCOTP), and remove IMX_SRK_HASH_WRITE_LOCK.
> > 
> > [...]
> 
> Applied, thanks!
> 
> [1/1] i.MX: hab: always lock SRK hash after fusing
>       https://git.pengutronix.de/cgit/barebox/commit/?id=1f4d4a2b75b7 (link may not be stable)

Also added a note to the migration guide.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


