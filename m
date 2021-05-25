Delivery-date: Tue, 25 May 2021 07:26:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llPaA-00079b-Du
	for lore@lore.pengutronix.de; Tue, 25 May 2021 07:26:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llPa9-0006bs-Ix
	for lore@pengutronix.de; Tue, 25 May 2021 07:26:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=PmOOLbEZOAQLqTuRN7PSPd+UEaSxB5aaGm27MrK3Ujk=; b=hpj3hVV9WiFU1ccflDhXvS5TgH
	WYMRAe0SJgb3st3GltLKJppjD5OO0LJtAtKsj2+kbFP9QycDUH50YZcvovaTLqr/1fZArIpF3xRnk
	+gvb+YW2yhxAdEayk+TJ7VrrlrAEx3EDUR3uTX0dR3wHpVFwSj2+vXpQ3rTQwiVkBOBIU5NXLdmsb
	uOYu1K9ia3ipaFVwqSrme8j1hG8LMpK/pMh6XJfqOn/YZVgYjYG17KbI4u3VXayI9PAhX4qnO4QC4
	9UgAclLXjSFMtUAB5CyVkXflibEkIiTHYNfK1q46joI262OcPwzbTRNzyKjNHrFp4sVkOJFkszrs4
	sf2LmGFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1llPYw-003QIc-TM; Tue, 25 May 2021 05:25:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1llPYs-003QHc-5T
 for barebox@lists.infradead.org; Tue, 25 May 2021 05:25:03 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1llPYq-0006GH-8u; Tue, 25 May 2021 07:25:00 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1llPYp-0006o5-Ut; Tue, 25 May 2021 07:24:59 +0200
Date: Tue, 25 May 2021 07:24:59 +0200
To: Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: barebox@lists.infradead.org, Marco Felsch <m.felsch@pengutronix.de>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20210525052459.GH31738@pengutronix.de>
References: <20210305090001.3619780-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210305090001.3619780-1-u.kleine-koenig@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 07:19:47 up 96 days,  8:43, 76 users,  load average: 0.02, 0.08, 0.13
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210524_222502_250972_FE14E4D9 
X-CRM114-Status: GOOD (  20.65  )
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
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] usb: i.MX: warn if vbus regulator isn't available
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Mar 05, 2021 at 10:00:01AM +0100, Uwe Kleine-K=F6nig wrote:
> Instead of just ignoring errors related to getting the vbus regulator
> yield at least a warning message. This would have saved me some
> debugging time when trying to understand why USB doesn't work without
> the right regulator driver enabled.
> =

> Note that machines that don't define a regulator in their device tree
> don't issue this warning as regulator_get() returns the dummy regulator
> in this case.

Note that this warning appears on machines that do define a regulator in
their device tree (derived from the kernel upstream dts), but do not
actually need it as the regulator was enabled by board code.
Arguably that's the problem of these boards and we'll have to look there
how we can quiesce the warning. The obvious solution is to implement the
missing driver, but we could also add some
add_dummy_regulator_for_this_node() function to tell the regulator core
that we don't need a specific regulator.

First let's see if somebody is annoyed by this message, so applied,
thanks

Sascha

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

