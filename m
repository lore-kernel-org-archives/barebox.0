Delivery-date: Thu, 07 Oct 2021 08:58:36 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mYNMS-0000Pb-Ni
	for lore@lore.pengutronix.de; Thu, 07 Oct 2021 08:58:36 +0200
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mYNMR-0007An-LP
	for lore@pengutronix.de; Thu, 07 Oct 2021 08:58:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:MIME-Version:Message-ID:Subject:To
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2oT7nE+FvPolmgvfXmiBnl8xRWQT7DTzc2upzPwJIck=; b=NU6TRYPUSCgUwb
	uTB/AUVGSoddgFb/tXGpfB3TaXP/mux5/GFl4BbdSIYU2ovui+mh7kRs2JxYIA5Z23DCCR9vOWOtd
	ooxi8gCsdnNQsBmCA+wCC8Wg6O+jf8PWmllREOb2m8tcpJ8f4ulpcrmBE+t09XjsLK9SCSxk7yalM
	qtDw5Dcl5cEEQrC9CaXonVUiHVe0Sf0uRz/1rUexbCe9YBy8FcXDT3SkfbPztVC+e/rPjJvYjIjhR
	DzIML6tLUJz0b/Tene1lX7zUm8VTae/LVValgFxa7cw25ocnV9u/m3adIVJlJe6kiOpQYlSPtGoVL
	bvHDJjeEQ3TqmIUh3PIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mYNKv-00GK6S-2p; Thu, 07 Oct 2021 06:57:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mYNKp-00GK4e-B5
 for barebox@lists.infradead.org; Thu, 07 Oct 2021 06:56:57 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mYNKg-00076N-1q; Thu, 07 Oct 2021 08:56:46 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mYNKf-00022N-Mn; Thu, 07 Oct 2021 08:56:45 +0200
Date: Thu, 7 Oct 2021 08:56:45 +0200
To: Barebox List <barebox@lists.infradead.org>
Message-ID: <20211007065645.GR28453@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:51:32 up 231 days, 10:15, 124 users,  load average: 0.18, 0.20,
 0.19
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211006_235655_404981_ECD2B1F9 
X-CRM114-Status: GOOD (  14.64  )
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
X-Host-Lookup-Failed: Reverse DNS lookup failed for 2607:7c80:54:e::133 (failed)
X-Broken-Reverse-DNS: no host name for IP address 2607:7c80:54:e::133
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,PTX_BROKEN_RDNS,RCVD_IN_DNSWL_MED,RDNS_NONE,
	SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.2
Subject: v2021.10.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi All,

barebox-2021.10.0 is out. This is a small bugfix release only, no new
features are merged. As you might have noticed there is no September
release. I was on parental leave for the last three month and so I only
occasionally looked at the project. I am back now; patches should be
handled in a timely manner again and the next release will contain the
patches that have queued up so far.

Have fun!

 Sascha

Ahmad Fatoum (11):
      Documentation: reboot-mode: add note about /env/bmode
      power: reset: nvmem-reboot-mode: disable device tree fixup
      startup: don't read glob_t if glob("/env/init/*") fails
      common: menutree: prevent read of uninitialized memory in error path
      fs: fat: pbl: support >32M alignment for first partition
      ARM: at91: at91sam9263ek: add device tree check for board code
      virtio: implement remove callbacks
      RISC-V: board-dt-2nd: move low level init into nonnaked function
      base: driver: fix double removal of child devices
      blspec: fix use-after-free of firmware search path
      of: overlay: don't do fixups on empty global.of.overlay.dir

Daniel Br=E1t (1):
      video: Fix broken bcm2835 fb driver

Jules Maselbas (2):
      pbl/Kconfig: fix typo "inflluences" -> "influences"
      Documentation: Typo fix in command example

Sascha Hauer (1):
      Release v2021.10.0

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

