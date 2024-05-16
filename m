Delivery-date: Thu, 16 May 2024 17:02:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7ccW-00HEWQ-19
	for lore@lore.pengutronix.de;
	Thu, 16 May 2024 17:02:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7ccR-0005yF-Bj
	for lore@pengutronix.de; Thu, 16 May 2024 17:02:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Am9DAiMco98o+qefWacVgFFwuSZ4NALk4pncYa0lH08=; b=Wmne4/j6muneMN9cLcpYepzMpQ
	lkMe/Z6fCKvPQiwBkNrgVgGbXicmkSfS5Th4Vqv1BwqdNGXd2XKEts9RegSQ2Omyr63zyxhhe9Sse
	XoPwmTj8SJaBOe6ykHcEyYpy/rbxm3FW+0MC4zceHJB7WTQqoQvWw6J9t3mJV95deL7VNhXKiIcJi
	iwlYikVVP2lD2tFzXdejGZ6YpfQuCj72JWtaRB3ccLM+VKgdAQKu3ZlnBw2P0uq8S4q6nH5/MKhrW
	89+uMft1/Vc4p9++wkrlofQ/DepoZwRy/r3Vp2SEv3tCzbo5Nr+K2ac6in+eCIHUNhn1ujt5Qf75y
	r5/0lizQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7cbh-00000005Ec3-16C6;
	Thu, 16 May 2024 15:01:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7cbd-00000005EbV-3x6s
	for barebox@lists.infradead.org;
	Thu, 16 May 2024 15:01:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1s7cba-0005f9-LR; Thu, 16 May 2024 17:01:14 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1s7cbY-001jOI-H6; Thu, 16 May 2024 17:01:12 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1s7cbY-00EuFn-1R;
	Thu, 16 May 2024 17:01:12 +0200
Date: Thu, 16 May 2024 17:01:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <ZkYfuL7ogbKcYgTP@pengutronix.de>
References: <20240516070822.2746845-1-s.hauer@pengutronix.de>
 <20240516144304.gtzxiuhvvjuprxwj@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240516144304.gtzxiuhvvjuprxwj@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240516_080118_006298_B6E8A981 
X-CRM114-Status: GOOD (  16.27  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/7] replace cdev_by_name() with cdev_open_by_name()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, May 16, 2024 at 04:43:04PM +0200, Marco Felsch wrote:
> Hi Sascha,
> 
> On 24-05-16, Sascha Hauer wrote:
> > As Ahmad noticed cdev_by_name() doesn't increase the reference counting
> > on the returned cdev which causes problems further down the road. This
> > series replaces some of the easier occurences of cdev_by_name() with
> > cdev_open_by_name().
> 
> Can we kindly inform the user with a print_once() or so that
> cdev_by_name should be replaced with cdev_open_by_name()?

Some of the call sites of cdev_by_name() are used frequently on all
boards, so this wouldn't be practical.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


