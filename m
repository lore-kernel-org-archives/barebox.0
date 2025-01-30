Delivery-date: Thu, 30 Jan 2025 14:41:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tdUnM-006M6v-3D
	for lore@lore.pengutronix.de;
	Thu, 30 Jan 2025 14:41:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tdUnN-0005fc-2p
	for lore@pengutronix.de; Thu, 30 Jan 2025 14:41:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eA6pcppkcV/yNl5JlIi4nfO2FkpnR1ewNCJ09THmQvU=; b=QDvidIe+xFu7iBlYRrV8VCaK9k
	ECLhwAfQgX8P1AGdXffoax3VQaPOFtAOgi9e+J+3c7Um1AIvkEgqUUyB6tVXpahZCqgAGIAe0NwWE
	CJqq/BEFhQCjlwJV4lrk3yoti8LAvZ0xvAU5lLpkAN4/e6Ov7iIvUkqjlU6nzJL4KhW/KWGYZeSGQ
	1tU9hDbIK6Wvb4oXtpGTsCGbjQcOzFySq0DCD6BT08QQRXNPRUh8kEZnEsx5en7LBoTdXo83+Yytb
	yp0TAoQlIavB/33zkQfU6sEyP+BkcGEVwdzLqEELYWZmTybQOV+4DpDs2kKbdX5tVwivZWbXAMnfU
	hjlgiSfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tdUml-00000008tKQ-3P4F;
	Thu, 30 Jan 2025 13:40:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tdUlR-00000008tCH-1gzB
	for barebox@lists.infradead.org;
	Thu, 30 Jan 2025 13:39:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tdUlO-0005QJ-Qp; Thu, 30 Jan 2025 14:39:22 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tdUlO-002dn6-1X;
	Thu, 30 Jan 2025 14:39:22 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tdUlO-004cry-1D;
	Thu, 30 Jan 2025 14:39:22 +0100
Date: Thu, 30 Jan 2025 14:39:22 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <Z5uBCoIy69dB3QH_@pengutronix.de>
References: <CAP1tNvRa-1XPm087pzti1XmqvRDqchKOWZgvgYmcAQh+uOayBg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAP1tNvRa-1XPm087pzti1XmqvRDqchKOWZgvgYmcAQh+uOayBg@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250130_053925_440621_8B45FCD5 
X-CRM114-Status: GOOD (  22.73  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: Devicetree add-on
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Alexander,

On Wed, Jan 29, 2025 at 09:10:58AM +0300, Alexander Shiyan wrote:
> Hello All.
> 
> The question arose whether it is possible to load an add-on into
> devicetree, but NOT through an overlay,
> i.e. as a full-fledged dtb?
> Ideally, it should look like this: the main ENTRY_FUNCTION() loads the
> base tree, then,
> after initialization in device_initcall(), the board modification is
> determined and the full devicetree
> written for this variant is loaded.

exchanging the device tree during runtime is not a good idea. Pointers
from the old tree might still be in use. Also it's not easy to track
which devices have been probed already and which have to be probed from
the new tree. Exchanging the device tree might work at first, but opens
the door for some bad surprises.

Do you need the full device tree in barebox itself or just in the
Kernel? If the latter I would just start the kernel with the full device
tree and keep the original one in barebox.

There are also some boards in the tree in which we use I2C EEPROM
support in PBL, so we can pick the correct device tree from the start
rather than starting with a base device tree.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


