Delivery-date: Mon, 17 Nov 2025 12:28:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vKxPj-001xZX-2A
	for lore@lore.pengutronix.de;
	Mon, 17 Nov 2025 12:28:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vKxPi-0007aM-VU
	for lore@pengutronix.de; Mon, 17 Nov 2025 12:28:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=stdM9SMSMGPZZ9eu6VP135H9qxh/N6QTpA+8nNbx0Us=; b=xKz6reClmS/bDI6PGrEvKEoRCz
	ncZHXVsUegLaVgYqIos7tfQx1tpRv/ezSe16AsxgbvfTPEyu/InX18CktI6tg6yjjM7cJnu4YuZCz
	ZmDOjfZVjEGk0AYUpFZAH+gpLae8mi0SwXKHQTidcToZiPiQ4tWRMgMUk/q/L+H/g+8nnhRAycIqn
	1zGTLxigLwfVqaBAgBp5LarpR++J6QjBlCgLd1giilAbPp0ALpUp4nrtZG/Y0/qst4Bl296JK/yYQ
	sUgBevvhJoh50JByST/TOKthQKda1hDh11wavQF/sTc0chTs8X58jWzfjQKayyU0uSOLCxd6hezlH
	7dcoc53A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKxPG-0000000Fy9I-23eE;
	Mon, 17 Nov 2025 11:28:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vKxPD-0000000Fy8t-2frn
	for barebox@lists.infradead.org;
	Mon, 17 Nov 2025 11:28:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vKxPC-0007SL-37; Mon, 17 Nov 2025 12:28:22 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vKxPB-000u1L-2u;
	Mon, 17 Nov 2025 12:28:21 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vKxPB-008J5x-2Z;
	Mon, 17 Nov 2025 12:28:21 +0100
Date: Mon, 17 Nov 2025 12:28:21 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Jonas Rebmann <jre@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <aRsG1bgHb3a_wH4g@pengutronix.de>
References: <20251117-soc-uid-v2-0-a2415bf9133d@pengutronix.de>
 <20251117-soc-uid-v2-1-a2415bf9133d@pengutronix.de>
 <3dfca355-56ea-4d30-856e-c4187ed7d5c8@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3dfca355-56ea-4d30-856e-c4187ed7d5c8@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251117_032823_689965_94513EC1 
X-CRM114-Status: GOOD (  36.90  )
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
Subject: Re: [PATCH v2 1/9] introduce SoC UID
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Nov 17, 2025 at 11:16:34AM +0100, Jonas Rebmann wrote:
> Hi Sascha,
> 
> On 2025-11-17 09:35, Sascha Hauer wrote:
> > Most SoCs have a unique ID (UID) which can be used to identify a
> > particular SoC instance. This is exposed to the environment by some SoC
> > drivers as soc0.serial_number like also done in Linux. The SoC UID can
> > also conveniently be used to generate a unique machine_id on systems
> > with a readonly rootfs. The two usecases require the SoC UID in different
> > formats. While machine_id_set_hashable() takes a binary representation
> > of the SoC UID, soc0.serial_number is a string. The conversion from the
> > binary representation to the string is SoC specific, some SoCs interpret
> > the binary data as a byte array (AM62x for example), others interpret it
> > as words of different lengths in different endianesses (i.MX). Others
> > even print the binary data as decimal (qcom).
> > 
> > Needing a SoC driver for providing the SoC UID is an unlucky choice as
> > some SoCs do not have a SoC driver, but instead read the SoC UID in
> > their eFuse driver in drivers/nvmem (STM32MP bsec). These drivers
> > provide hashable data to generate a machine_id, but do not expose the
> > SoC ID.
> > 
> > This patch introduces barebox_set_soc_uid(). This function provides a
> > new environment variable global.soc_uid which contains the SoC UID.
> > It also passes the SoC UID to machine_id_set_hashable() for generating a
> > machine_id. To accomodate for different string representations of the
> > binary data barebox_set_soc_uid() takes both the binary data and a
> > string in the SoCs preferred format of the same data.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> 
> I wonder if soc_uid is really the global variable we are looking for. I
> understand what we want is a hardware-provided unique ID of a board.
> However boards can have multiple or no SoC UIDs.
> 
> I assume a board with multiple SoCs can have a soc1.serial_number too,
> then having all UIDs provided via the serial_number interface but only a
> single soc_uid global seems confusing to me.
> 
> A SoC or SoM that provides no SoC UID may still provide means of unique
> hardware identification and the global we are introducing here could
> allow us to abstract away from this.
> 
> Can we name this something like hardware_uid to be more flexible about
> its origin?

Right now this is a SoC UID, so I would prefer calling like that.

If a board has zero SoC UIDs, then don't set this variable. I assume
barebox can only run on one SoC at a time and on a board with multiple
SoCs we have multiple barebox instances running with each having its own
SoC UID.

If your SoC doesn't provide a SoC UID then I would recommend not to
overload global.soc_uid with your board specific UID, but provide a
different variable instead.

Currently the last caller of machine_id_set_hashable() wins. I thought
about:

1) Pass some priority to machine_id_set_hashable() and use the data with
   the highest priority
2) Generate a systemd machine_id from all buffers
   machine_id_set_hashable() is called with (in some specific order,
   maybe sort by buffer size first and by memcmp() should multiple
   buffers have the same size)

All these approaches have the problem that the machine_id might change
when new machine_id_set_hashable() providers are added to a new barebox
version.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


