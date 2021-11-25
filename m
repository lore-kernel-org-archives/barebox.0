Delivery-date: Thu, 25 Nov 2021 08:31:50 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mq9EU-0004bN-Cg
	for lore@lore.pengutronix.de; Thu, 25 Nov 2021 08:31:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mq9ET-0005Au-Gd
	for lore@pengutronix.de; Thu, 25 Nov 2021 08:31:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=aQi9CzhIhohUGtLxYZaTA1tqmUNnxczZklpqKstLLhg=; b=G4ZMIGGeXidT4FdEEz82vBG6ZF
	WL+r5Mhbc6iMNL4MKLb7lCrHahLpGNj+YKWy6hJ/tsUJMohLkAfLhVcFQS+67NqngSYA2I5NC7FBr
	8MKsLFcg/UtZeKr97fVsEBm1bU2lGWQH55vb3/nubEN6A02RFzPFQirfkaqcPFtc5gTessRaKRWua
	RzCtWXc5dexmAdopgVN71AGy052nz9UcceK2PyQQH5VJhqapLrHvp6UQLpWoljUwK+v56HU9GUZOp
	z29SmjZnhPw0ZTbmJRns4de68cPqvUxeZveFp1KJepbxAbN5tOHx7aKG2f1acMvlhFqYlqH3p7rgF
	e+c5KzOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mq9D8-006aTW-Vh; Thu, 25 Nov 2021 07:30:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mq9D4-006aSc-9M
 for barebox@lists.infradead.org; Thu, 25 Nov 2021 07:30:24 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mq9D0-0004mQ-DO; Thu, 25 Nov 2021 08:30:18 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mq9Cz-0006v2-OW; Thu, 25 Nov 2021 08:30:17 +0100
Date: Thu, 25 Nov 2021 08:30:17 +0100
To: Andrej Picej <andrej.picej@norik.com>
Cc: barebox@lists.infradead.org
Message-ID: <20211125073017.GH6556@pengutronix.de>
References: <20211119095429.1905473-1-andrej.picej@norik.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211119095429.1905473-1-andrej.picej@norik.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:30:01 up 280 days, 10:53, 134 users,  load average: 0.07, 0.16,
 0.17
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211124_233022_351801_161B05D9 
X-CRM114-Status: GOOD (  28.10  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 0/6] PHYTEC patches to be mainlined
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Nov 19, 2021 at 10:54:23AM +0100, Andrej Picej wrote:
> Hi all,
> 
> this patch series contains PHYTEC barebox patches which weren't yet
> introduced to this mailing list (or at least not in this form).
> 
>  1. The first patch increases the stability during boot in extreme cold
>  conditions.
> 
>  2. The second and third patch adds some missing configs (OCOTP write
>  support and some OF commands).
> 
>  3. The last three patches (fourth, fifth and sixth) are meant as a
>  fixup for patches that deleted the PMIC supply nodes. They were
>  introduced because barebox doesn't support DA9063 PMIC regulator driver
>  and instead prints ugly warnings (recently downgraded from error) like:
> 
> imx-esdhc 2194000.mmc@2194000.of: Failed to get 'vmmc' regulator (ignored).
> 
>  In either way, we rely on PMIC's reset default and use dummy
>  regulators. Using barebox specific device-tree property
>  ('barebox,allow-dummy-supply') shouldn't break booting Linux with
>  barebox internal device-tree and allows using dummy regulators in
>  bootloader where regulator support is limited. The complete solution
>  would be porting DA9063 regulator driver to barebox, but let's add that
>  to our "to-do" list for now and use this workaround instead.
> 
> Best regards,
> Andrej
> 
> Changes in v2:
>  - remove "PHYTEC specific" config patch. Drop removing IPUV3 driver and move
>  enabled configs to default imx_v7_defconfig,
>  - move "barebox,allow-dummy-supply" to be added to regulator provider
> 
> Andrej Picej (5):
>   ARM: configs: imx_v7_defconfig: add OF commands
>   ARM: configs: imx_v7_defconfig: add OCOTP write support
>   regulator: allow use of dummy regulator
>   ARM: dts: imx6qdl: pfla02: use dummy regulators
>   documentation: regulator: add allow-dummy-supply

Applied, thanks

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

