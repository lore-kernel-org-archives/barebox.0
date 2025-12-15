Delivery-date: Mon, 15 Dec 2025 13:17:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV7Vn-00BjuV-1l
	for lore@lore.pengutronix.de;
	Mon, 15 Dec 2025 13:17:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV7Vm-0003nP-6m
	for lore@pengutronix.de; Mon, 15 Dec 2025 13:17:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=I5+JrPTno62DyYwBKxWUNOmO7L14LOKmoEOSB2dDe0w=; b=n342k3zR6C2B3DL3o/Vk8Svspm
	jDdGIn5/FJBcrLPnB9OI0tIGOHwGQD/Mhzc9b+QLpqqtmBgBvUko80tps21wa2kYQ+ehZTY0nmX1K
	vWfAjTr6aKHiy925j/0wHYD4NdWPL4ZWCW6m9i3R0aoXr8mN1fCxYt03qnFvqxue5kgrgDYr2A8jb
	fAp6jm1virflpAKiy+L6K7HDdyeqXsJR51Y7CDWmDa/My8ZsYphpkUEXXkKDyHLn+z3lMiCSXUqFz
	Uv/xlyt/hKEPNAkzOKhUwmU/aoPDYwSQ/1YvveWckGxajWJditIIXHs+UKRQnR0wtnbF22ULOz+9y
	pKNrBMsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV7V5-00000003aTn-3wrc;
	Mon, 15 Dec 2025 12:16:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV7V2-00000003aT6-2qhW
	for barebox@lists.infradead.org;
	Mon, 15 Dec 2025 12:16:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vV7V1-0003eq-0G; Mon, 15 Dec 2025 13:16:23 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vV7V0-005mLw-2e;
	Mon, 15 Dec 2025 13:16:22 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vV7V0-00000001XMv-3D9H;
	Mon, 15 Dec 2025 13:16:22 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20251209-devfs-v2-0-62ae16698cff@pengutronix.de>
References: <20251209-devfs-v2-0-62ae16698cff@pengutronix.de>
Message-Id: <176580098276.366548.15149939700617421032.b4-ty@pengutronix.de>
Date: Mon, 15 Dec 2025 13:16:22 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251215_041624_742723_4BBB816E 
X-CRM114-Status: UNSURE (   9.39  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 00/13] fs: Use device special nodes for devfs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 09 Dec 2025 13:51:19 +0100, Sascha Hauer wrote:
> Until now we have a devfs which is a filesystem of its own. This
> comes with a few limitations:
> 
> - we cannot create directories under /dev/
> - Links are implemented in the devfs filesystem. They do not show
>   up as regular links
> 
> [...]

Applied, thanks!

[01/13] fs: devfs-core: add devfs_create_link_node()
        https://git.pengutronix.de/cgit/barebox/commit/?id=0532ad160214 (link may not be stable)
[02/13] storage-by-alias: drop fake cdev
        https://git.pengutronix.de/cgit/barebox/commit/?id=50f91eaeac24 (link may not be stable)
[03/13] fs: implement mknod
        https://git.pengutronix.de/cgit/barebox/commit/?id=d37d0ed18ddc (link may not be stable)
[04/13] commands: add mknod command
        https://git.pengutronix.de/cgit/barebox/commit/?id=65a86ce343b3 (link may not be stable)
[05/13] fs: ramfs: add device file support
        https://git.pengutronix.de/cgit/barebox/commit/?id=84efacef29bf (link may not be stable)
[06/13] cdev: add cdev_size() helper
        https://git.pengutronix.de/cgit/barebox/commit/?id=1935728cfea8 (link may not be stable)
[07/13] fs: fix st_size for device files
        https://git.pengutronix.de/cgit/barebox/commit/?id=37b73179a340 (link may not be stable)
[08/13] fs: retire devfs as filesystem
        https://git.pengutronix.de/cgit/barebox/commit/?id=cff48c7caba4 (link may not be stable)
[09/13] fs: include cdevname in struct stat
        https://git.pengutronix.de/cgit/barebox/commit/?id=f7950b1fac33 (link may not be stable)
[10/13] fs: stat_print: get cdevname from stat
        https://git.pengutronix.de/cgit/barebox/commit/?id=6f646eccbf9f (link may not be stable)
[11/13] common: cdev-alias: rename struct
        https://git.pengutronix.de/cgit/barebox/commit/?id=0511991f9c04 (link may not be stable)
[12/13] fs: replace cdev links with aliases
        https://git.pengutronix.de/cgit/barebox/commit/?id=224b5a781f34 (link may not be stable)
[13/13] ls: use ~0 for FILE_SIZE_STREAM
        https://git.pengutronix.de/cgit/barebox/commit/?id=6bcded4d13b3 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



