Delivery-date: Tue, 22 Oct 2024 12:16:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t3Bw8-007QT8-1K
	for lore@lore.pengutronix.de;
	Tue, 22 Oct 2024 12:16:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t3Bw7-00066q-Pi
	for lore@pengutronix.de; Tue, 22 Oct 2024 12:16:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qdzjlHDmq0TEcHH6ZyRJs3wMOkQOHOplSJb3ZBfeMbA=; b=bL6FSevvGsFBKq6RPGYLfFNr9g
	blTjk9sMoHe5W9SYkpvzkKFfm8DlxaE7jBn3rIC3f9lPbjZ0UqyKBA8XLsMF87sSXh7t4tujt9uM/
	0FcM9Y6oW5KuW1Jod1NmeuORAoBVY1IY1P4zU6JUHBA0ypQbZtxUTMr5rYIxnE+eU9PaOKBovkLQ3
	bLMH+YDm52boh813W4B6QLIvj/h9JUKclaCg+izbHZj9nVvu93HwM3w2vAzyo5bqSPARC0/vXXA1Q
	agio397jha91nk1C46HXDvo5HRfOLw1zlk+cgKn10L3koqWexf6Kh91SUFkDqmFRAaeIehXuY3Bz1
	t13T0n9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3Bvf-0000000AUrk-1Pcc;
	Tue, 22 Oct 2024 10:15:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3BZv-0000000AR7x-2m2T
	for barebox@lists.infradead.org;
	Tue, 22 Oct 2024 09:53:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1t3BZu-00041r-DC; Tue, 22 Oct 2024 11:53:26 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1t3BZu-000qE9-0G;
	Tue, 22 Oct 2024 11:53:26 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1t3BZt-007Xk7-3A;
	Tue, 22 Oct 2024 11:53:26 +0200
Date: Tue, 22 Oct 2024 11:53:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Johannes Schneider <johannes.schneider@leica-geosystems.com>
Cc: barebox@lists.infradead.org
Message-ID: <Zxd2FV4C6wca_dOJ@pengutronix.de>
References: <20240916135300.3996776-1-johannes.schneider@leica-geosystems.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240916135300.3996776-1-johannes.schneider@leica-geosystems.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241022_025327_718303_2A6415DE 
X-CRM114-Status: GOOD (  14.24  )
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
Subject: Re: [PATCH] common: add custom autoboot_abort_key
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Johannes,

On Mon, Sep 16, 2024 at 03:53:00PM +0200, Johannes Schneider wrote:
> Add the Kconfig options to select a compile-time custom key(s) that
> can be used to enter the console when barebox prompts for:
> "Hit <custom_key> to stop autoboot."

Having a custom key to stop autoboot is generally fine. Defining the key
at compile time not so.

Instead we could convert autoboot_abort_key from
globalvar_add_simple_enum() to dev_add_param_string(&global_device,...)
the set function could then accept "any", "ctrl-c" or any other single
digit string.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


