Delivery-date: Mon, 12 Sep 2022 12:15:16 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oXgTE-002924-Eg
	for lore@lore.pengutronix.de; Mon, 12 Sep 2022 12:15:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oXgTC-0003mi-K5
	for lore@pengutronix.de; Mon, 12 Sep 2022 12:15:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LvcprVIKfsMImNeZzGylbhCVGlkpFK/ry799LzZ1e2Q=; b=dVZkoWrKKB3z4MGIHQk5ibN9uB
	01LsumxOD8YxE/IePMMaUTXmk4+dvUJQV/pbgrHE2hhaI+5/dG9tLgDEzzzOtfgi84S6DJQPjhv9Z
	KMhQoPInFFJMwbtl3zQ9tMVMmyEf6CX3l1O4so+yXf9gAezxDuSy5evrZyjC7jV/EKPQpH4XJNWw6
	s+3fe9Ks5gI9iDwbOsynv6dklaRJ8xWcHqtHqdZcs5Lzk0C2+rtOGXKHe3sCCDXBs+CUFI0tJxDW7
	2JIL5ViyP54XPzMMlhRjr0MW2goQ4d7qMJ/Pnc/y41tYKMxvB8AFHY0PZlKBHKtAiw24N7r9rTKBj
	SZWAVg1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXgRP-008dZY-6q; Mon, 12 Sep 2022 10:13:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXgKM-008ZDf-Uu
	for barebox@lists.infradead.org; Mon, 12 Sep 2022 10:06:10 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oXgKG-0002Hi-U7; Mon, 12 Sep 2022 12:06:00 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oXgKG-0001id-KW; Mon, 12 Sep 2022 12:06:00 +0200
Date: Mon, 12 Sep 2022 12:06:00 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220912100600.GA6477@pengutronix.de>
References: <20220905095557.596891-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220905095557.596891-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220912_030607_039786_29B253FF 
X-CRM114-Status: GOOD (  16.45  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 00/32] treewide: fix some clang-analyze static analyzer
 warnings
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Sep 05, 2022 at 11:55:25AM +0200, Ahmad Fatoum wrote:
> I ran scan-build while building barebox for sandbox with clang and
> patched some of the reported issues.
> 
> Ahmad Fatoum (32):
>   clk: define stub implementation for clk_get_parent
>   clk: have SCMI and SiFive clock controllers depend on COMMON_CLK
>   meminfo: support SANDBOX build with DEBUG log level
>   net: phy: micrel: drop useless assignment of dummy read
>   mci: core: drop useless assignment
>   nvmem: core: propagate read failure
>   fs: remove never-read initializer in mount_all()
>   usb: otg: always propagate failure to register parameters
>   usb: dwc2: gracefully handle unknown hs_phy_type
>   state: propagate failure to fixup enum32 into DT
>   of: silence warning about never-read error assignment
>   commands: trigger: drop unused variable
>   commands: tutorial: fix memory leak
>   bthread: fix null pointer dereference in error path
>   common: env: drop never-read initialization
>   of: refactor for of_fixup_reserved_memory() for clarity
>   password: avoid static analyzer false positive
>   regmap-mmio: regmap_mmio_get_min_stride: unify branches for
>     readability
>   crypto: caam - delete unused variable
>   misc: ubootvar: always initialize struct ubootvar_data::flag
>   nvmem: core: drop always true condition
>   of: fdt: gracefully handle out-of-place properties
>   of: overlay: drop unused variable of_overlay_apply_dir()
>   of: partition: drop unused variable
>   serial: ns16550_pci: drop useless assignment
>   phy: core: drop useless else clause
>   fs: ext4: ext_barebox: handle ext_get_inode() errors
>   fs: fat: propagate f_lseek failure
>   fs: drop duplicate follow_managed() call
>   lib: parse_area_spec: guard against NULL pointer dereference
>   net: ping: propagate failure
>   net: fastboot: keep error message initialized at all times

Applied 2-10 and 12-32, thanks

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


