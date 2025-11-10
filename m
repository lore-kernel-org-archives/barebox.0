Delivery-date: Mon, 10 Nov 2025 14:49:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vISGY-00HOpy-13
	for lore@lore.pengutronix.de;
	Mon, 10 Nov 2025 14:49:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vISGX-0000tP-QD
	for lore@pengutronix.de; Mon, 10 Nov 2025 14:49:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gP/h/3/M5xdmoQGvMiqxB5uH/ej1iwLNqQ7aA3XG4WU=; b=5AhWAgTsnb0IoLwGmNEoxKh/mE
	3NHacPloa/6uSpKiX3EYErVglNnOH125LVKRHznTESa2udvTn5vqRRue+H6QolMUU5I9/M0dheyQY
	3WDHzvoD0ahNHpka6/+Vm87q95dnIBsh/QQwHBbwD8Dn+tJ4PKoGhwSFbryLk/jE2V07+p22voicK
	vdie4j8FOb9ZceJBD02IXBsJ51kPGhTMyZV+hrjJR55anG4PFVv9G49vT/9g9zUHlFXf4Koa655Io
	HogBbPJZMEGh6GFS0W16B54c4VK+T/mtg2IU50aYl4JkkWnQDh58dBJZyBW9+q/865TGNXleliCzD
	oE7CxmjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vISG8-00000005Wx7-3Z0C;
	Mon, 10 Nov 2025 13:48:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vISG6-00000005Wwj-1vmb
	for barebox@lists.infradead.org;
	Mon, 10 Nov 2025 13:48:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vISG5-0000ns-1F; Mon, 10 Nov 2025 14:48:37 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vISG4-0082IS-2l;
	Mon, 10 Nov 2025 14:48:36 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vISG4-00CZw7-2T;
	Mon, 10 Nov 2025 14:48:36 +0100
Date: Mon, 10 Nov 2025 14:48:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
Message-ID: <aRHtNJx9RgxBWsjR@pengutronix.de>
References: <20251107-memleaks-v1-0-c7b74a2ae9db@pengutronix.de>
 <20251107-memleaks-v1-3-c7b74a2ae9db@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251107-memleaks-v1-3-c7b74a2ae9db@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_054838_517621_176489F8 
X-CRM114-Status: GOOD (  17.56  )
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
X-Spam-Status: No, score=-1.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,SUBJECT_IN_BLACKLIST,
	SUBJECT_IN_BLOCKLIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 3/4] bobject: free object name in bobject_del()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Nov 07, 2025 at 01:00:53PM +0100, Sascha Hauer wrote:
> We have bobject_free() which removes all parameters and frees the
> bobject. This works for bobjects which have been allocated with
> bobject_alloc(). struct device has a bobject embedded and is freed
> along with the device, so bobject_free() is inappropriate and
> bobject_del() is called instead. This however doesn't free the bobjects
> name which then leaks when the device is freed.
> 
> To fix this move the freeing of the bobject name to bobject_del(). To
> make this work with CONFIG_PARAMETER disabled drop the static inline
> wrapper.

With this we have to drop the freeing of struct device::name in
free_device_res() as the name is now owned by the bobject.

Fixed up accordingly while applying.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


