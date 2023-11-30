Delivery-date: Thu, 30 Nov 2023 21:39:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r8noS-00Ek7Y-0L
	for lore@lore.pengutronix.de;
	Thu, 30 Nov 2023 21:39:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r8noS-0001Vv-3V
	for lore@pengutronix.de; Thu, 30 Nov 2023 21:39:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=z/HcJpvg2pBrCkczcDJvkkzHuhbzcg/uQp3P2r8bay8=; b=bNvvoOMWqMX9HLrsSK9Uiaq3as
	KzDB1P79hpzuzZSTADORXwea/eEP7c7jutfMR6ytObJFA/uRCMpLvTqvKsagodwe9LC0oYMKC5781
	8hVuv0yCwtMxq9q2FL3viQ+fUdRPAgLSVQEjzxkjSfSX3mHUr647DgRKXEOG+v0R5uOdJ+O9vY+bu
	cyRgBUzboazLnDOBlBmwgiAZgjTDu5CXV7oOrHDqN7BctJDrqQCnwOwL4+/FmBECoDLveEWco1Vbd
	Q+G4g0xej234Eb72+CmlEX0WZaRdlMyfwVYtBv4WDC5jCgmu4KbXhsqNeq9S+OxP3NbDLgEIXsZ1q
	zYgm+oqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8nn1-00BsUK-1y;
	Thu, 30 Nov 2023 20:37:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8nmx-00BsS2-2j
	for barebox@lists.infradead.org;
	Thu, 30 Nov 2023 20:37:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r8nmm-0001FQ-6C; Thu, 30 Nov 2023 21:37:24 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r8nml-00Chsd-Pq; Thu, 30 Nov 2023 21:37:23 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r8nml-004eBR-Mh; Thu, 30 Nov 2023 21:37:23 +0100
Date: Thu, 30 Nov 2023 21:37:23 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231130203723.GD963049@pengutronix.de>
References: <20231122172951.376531-1-a.fatoum@pengutronix.de>
 <20231122172951.376531-14-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231122172951.376531-14-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231130_123735_899675_DBD6F08A 
X-CRM114-Status: GOOD (  15.00  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 13/20] include: linux/idr.h: implement more Linux API
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Nov 22, 2023 at 06:29:44PM +0100, Ahmad Fatoum wrote:
> Upcoming sync of SCMI with the kernel will start using IDR API, which we
> lack in barebox, so let's retrofit it.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> v1 -> v2:
>   - factor out longer IDR functions into separate source file
>     instead of header
>   - add IDR Kconfig symbol
>   - fix implementation of idr_remove, idr_destory, idr_for_each_entry
>   - keep IDR sorted

There's a bug in this patch. With this one applied my Rock3a fails with:

SCMI DRIVER - Requesting SCMI device (clocks) for protocol 0x14
SCMI DRIVER - Requesting SCMI device (regulator) for protocol 0x17
scmi_protocol_device_request: id_table: 0x0000000000000018
scmi_protocol_device_request: name: 0x00786f6265726162
DABT (current EL) exception (ESR 0x96000004) at 0x00786f6265726162
elr: 000000007fd6b8c8 lr : 000000007fd6c3a0
x0 : 00786f6265726162 x1 : 00786f6265726161
x2 : 00786f6265726162 x3 : 00000000ffffffff
x4 : 00000000ffffffff x5 : 0000000000000000
x6 : 00000000ffffffd8 x7 : 000000007fff7a52
x8 : 000000007fff7e48 x9 : 0000000000000020
x10: 0000000000000000 x11: 0000000000000011
x12: 0000000000000010 x13: 000000007fdb34fa
x14: 0000000000000000 x15: 0000000000000007
x16: 000000007fff77b8 x17: 0000000000000007
x18: 000000007fff7e80 x19: 000000007fff7a3e
x20: 00000000ffffffff x21: 00786f6265726162
x22: 000000007fff7e3a x23: 0000000000000000
x24: 000000007fd90dbd x25: 000000007fff7a20
x26: 000000007fff7e80 x27: 000000007fff7e3a
x28: 000000007fff7e80 x29: 000000007fff7910

Call trace:
[<7fd6b8c8>] (strnlen+0x10/0x28) from [<7fd6ca90>] (vsnprintf+0x440/0x71c)
[<7fd6ca90>] (vsnprintf+0x440/0x71c) from [<7fd01198>] (printf+0x6c/0x90)
[<7fd01198>] (printf+0x6c/0x90) from [<7fd5dabc>] (scmi_protocol_device_request+0x154/0x320)
[<7fd5dabc>] (scmi_protocol_device_request+0x154/0x320) from [<7fd5ca38>] (scmi_driver_register+0x34/0x84)
[<7fd5ca38>] (scmi_driver_register+0x34/0x84) from [<7fd59920>] (scmi_drv_register+0x14/0x1c)
[<7fd59920>] (scmi_drv_register+0x14/0x1c) from [<7fd01a2c>] (start_barebox+0x60/0x8c)
[<7fd01a2c>] (start_barebox+0x60/0x8c) from [<7fd8e71c>] (barebox_non_pbl_start+0x11c/0x150)
[<7fd8e71c>] (barebox_non_pbl_start+0x11c/0x150) from [<7fd0000c>] (__bare_init_start+0x0/0x4)
[<7fd0000c>] (__bare_init_start+0x0/0x4) from [<00a01b3c>] (0xa01b3c)
[<00a01b3c>] (0xa01b3c) from [<00a014ec>] (0xa014ec)

The above was printed with these printfs added to scmi_protocol_device_request():

	list_for_each_entry(rdev, head, node) {
		printf("%s: id_table: 0x%p\n", rdev->id_table);
		printf("%s: name: 0x%p\n", rdev->id_table_name);
		if (!strcmp(rdev->id_table->name, id_table->name)) {
			...
Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


