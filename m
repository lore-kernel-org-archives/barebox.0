Delivery-date: Tue, 21 May 2024 09:15:19 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s9JiR-00Bro0-1R
	for lore@lore.pengutronix.de;
	Tue, 21 May 2024 09:15:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s9JiP-0000CL-Oh
	for lore@pengutronix.de; Tue, 21 May 2024 09:15:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nWh+qLLQVqTS+Ktkfp/JT77NPl0cEwG/XYe6mAuK8FM=; b=uxZChBdH+08+PjYlma+G1HVngi
	uhEAfL1R0XsgWxIDSyPn/XZNhGfLVln+NtJFk/4cBrwTtqdVSxB0p4Tx2wjxrmfFernfsLvaUhHak
	tG7pXmtaVCWU9x/G8tng6H9Ei2vCbBoFt5Ggr2RIWzkLQdqxLbdxfRXiP9x9Cx9sFvCxVPB6uNadk
	luRIpnmovMGHHFeboNZRJCic7+xr9i4UaWXMdCrDWZMMpv0RPMGEmtRyTj77AjUjSsR4a9sJsYprE
	QTc3S936p0U3MexdDYiv4lW6qCceVV9UNKh5fXoJNBm5DKnyVGK78ltkLftPV9dQzhMptrjZHIYtZ
	t1Twa58Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9Jhu-0000000GZoU-0ZDV;
	Tue, 21 May 2024 07:14:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9Jhr-0000000GZnP-2BT3
	for barebox@lists.infradead.org;
	Tue, 21 May 2024 07:14:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s9Jhp-0008Pf-OO; Tue, 21 May 2024 09:14:41 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s9Jhp-002ME8-C7; Tue, 21 May 2024 09:14:41 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s9Jhp-00636H-11;
	Tue, 21 May 2024 09:14:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240517064511.3307462-1-a.fatoum@pengutronix.de>
References: <20240517064511.3307462-1-a.fatoum@pengutronix.de>
Message-Id: <171627568131.1441802.17333563291476059644.b4-ty@pengutronix.de>
Date: Tue, 21 May 2024 09:14:41 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240521_001443_702645_0AB541E1 
X-CRM114-Status: GOOD (  11.64  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 0/6] add PBL handoff-data support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Fri, 17 May 2024 08:45:05 +0200, Ahmad Fatoum wrote:
> This series replaces the 3 patches from v1 that are in next.
> 
> The first 3 patches are new: They ensure that the handoff structs
> (linked list pointers, cookie, flags, ...) are also reserved in the
> SDRAM banks and not only the data.
> 
> The three patches after that differ to v1 mainly in that reservation
> of space for the handoff data is correctly taken care of. This was
> erroneous both in PBL and in barebox proper and led to problems for me
> trying to boot a Qemu Virt64 machine that has for some reason a FDT that
> describes its size in the header as 1MiB.
> 
> [...]

Applied, thanks!

[1/6] memory: add support for requesting barebox area as a whole
      https://git.pengutronix.de/cgit/barebox/commit/?id=59289e3d8cc3 (link may not be stable)
[2/6] treewide: use request_barebox_region for possible barebox memory regions
      https://git.pengutronix.de/cgit/barebox/commit/?id=64fa27a491b8 (link may not be stable)
[3/6] ARM: cpu: start: register barebox memory area
      https://git.pengutronix.de/cgit/barebox/commit/?id=3f7b6146669c (link may not be stable)
[4/6] ARM: move blob_is_arm_boarddata() to include
      https://git.pengutronix.de/cgit/barebox/commit/?id=fad13ab1cdc6 (link may not be stable)
[5/6] add handoff-data support
      https://git.pengutronix.de/cgit/barebox/commit/?id=e72ea06e3ad3 (link may not be stable)
[6/6] ARM: pass handoff data from PBL to proper
      https://git.pengutronix.de/cgit/barebox/commit/?id=b02063a8aa22 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



