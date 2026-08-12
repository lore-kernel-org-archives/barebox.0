Delivery-date: Wed, 12 Aug 2026 08:27:13 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wu2Qi-002F8c-1w
	for lore@lore.pengutronix.de;
	Wed, 12 Aug 2026 08:27:13 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 29933201CF6
	for <lore@pengutronix.de>; Wed, 12 Aug 2026 08:27:13 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=06fmFf3l;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:Cc:To:Subject:From:
	Reply-To:Message-ID:MIME-Version:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=X08BBOB9glKIvzx4mP1XHZNRIyRQZMGErUEfSUcwSU4=; b=06fmFf3l5TpqDZ
	p8QFxnqnZ+5z//4HXMEmHw9yUepC5cQDrWwmsMIHMb5KGZ5pD+acs1HWu51pbWcuM4huhLvcg3q97
	zXmyzR2UlwpejEbv3CIkhKVMCArgMDQvIjoQXs6SHOlz57E4jD1tzNHFHVsbSYZOcphBtH+V1J6f0
	02Yhl/w9jqcmxpqK8YTmdBwOhSAkuqm4e0dreT/fV8W7exzrMMyspIsQoYDmq3eJnpajYhVLV1gS6
	PGSXuojep4KPKt049IVFpbaOEDI//E7cEg1SAhqaDVIOUsn8oXwgOsLYpbkXjwE0FyS9y1GIJm1Fn
	4dSvMX/uDvF0pX3KbtDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu2PZ-0000000FW8i-0FTl;
	Wed, 12 Aug 2026 06:26:01 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wu2PV-0000000FW80-0JCw
	for barebox@lists.infradead.org;
	Wed, 12 Aug 2026 06:25:59 +0000
Received: from [127.0.0.1] (unknown [IPv6:2a02:560:5c58:8900:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id DA6A420128B;
	Wed, 12 Aug 2026 08:25:54 +0200 (CEST)
From: "Sascha Hauer" <s.hauer@pengutronix.de>
Subject: Re: RK3588 optee question
To: "Alexander Shiyan" <eagle.alexander923@gmail.com>
Cc: "Barebox List" <barebox@lists.infradead.org>
In-Reply-To: <CAP1tNvQBxkjkCX7=zYt5ACjUUi+c2FkbCjz7UG+vQeVKeNB_Og@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 12 Aug 2026 06:25:54 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260811_232557_302982_D61BE061 
X-CRM114-Status: GOOD (  11.53  )
X-Spam-Score: -1.4 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 2026-08-11 14:51, Alexander Shiyan wrote: > Hello All.
   > > BL31 = rockchip bl31 from rkbin > BL32 = tee.bin builded from https://github.com/OP-TEE/optee_os.git
    > > DDR cb12b99cc23 hcy 25/10/17-18:5 [...] 
 
 Content analysis details:   (-1.4 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.5 MISSING_MID            Missing Message-Id: header
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: xkbdt9p184bqtmcuwenfbzjdz4qz3xs8
X-Spamd-Result: default: False [-2.91 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	MISSING_MID(2.50)[];
	MISSING_MIME_VERSION(2.00)[];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_RECIPIENTS(0.00)[m:eagle.alexander923@gmail.com,m:barebox@lists.infradead.org,m:eaglealexander923@gmail.com,s:lore@pengutronix.de];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCVD_COUNT_THREE(0.00)[3];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	TAGGED_RCPT(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MISSING_XM_UA(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 29933201CF6
Message-ID: <20260812062554.ykkk2UQ8653ZVyprnuIkP5_KL2oLogqTciPQqKZpIrA@z>

On 2026-08-11 14:51, Alexander Shiyan wrote:
> Hello All.
>=20
> BL31 =3D rockchip bl31 from rkbin
> BL32 =3D tee.bin builded from https://github.com/OP-TEE/optee_os.git
>=20
> DDR cb12b99cc23 hcy 25/10/17-18:57:13,fwver: v1.21
> ...
> NOTICE:  BL31: v2.3():v2.3-964-g8319968f5:derrick.huang, fwver: v1.54
> NOTICE:  BL31: Built : 17:20:23, Dec 26 2025
> ...
> INFO:    BL31: Initialising Exception Handling Framework
> INFO:    BL31: Initializing runtime services
> INFO:    BL31: Initializing BL32
> INFO:    BL31: Preparing for EL3 exit to normal world
> INFO:    Entry point address =3D 0xb00000
> INFO:    SPSR =3D 0x3c9
>=20
> barebox 2026.07.0-00839-g50ae8812b950-dirty #144 Tue Aug 11 14:39:36 MSK =
2026
>=20
> Board: Diasom DS-RK3588-BTB-EVB
> rockchip-dmc memory-controller.of: Detected memory size: 0x100000000
> netconsole: registered as netconsole-1
> fan53555-regulator rk86020: FAN53555 Option[10] Rev[1] Detected!
> vdd2_ddr: Bringing 500000uV into 1100000-1100000uV
> vddq_ddr: Bringing 500000uV into 600000-600000uV
> rockchip_saradc fec10000.adc@fec10000.of: registered as aiodev0
> BTB revision: 3
> EVB revision: 2
> EVB HAT Addon detected.
> arm-scmi firmware:scmi.of: SCMI Protocol v2.0 'rockchip:' Firmware versio=
n 0x0
> optee: smc_abi: probing for conduit method.
> optee: smc_abi: revision 4.10 (71196403f6f9f642)
> ERROR: optee: smc_abi: driver requires OP-TEE dynamic shared memory suppo=
rt

In OP-TEE this goes down to:

#if defined(CFG_CORE_DYN_SHM)
          dyn_shm_en =3D core_mmu_nsec_ddr_is_defined();
          if (dyn_shm_en)
                  args->a1 |=3D OPTEE_SMC_SEC_CAP_DYNAMIC_SHM;
#endif

So either you have compiled OP-TEE without CFG_CORE_DYN_SHM enabled
(unlikely, it's the default), or core_mmu_nsec_ddr_is_defined() fails
which means OP-TEE doesn't know where your memory is. OP-TEE gets this
information from the device tree. Do you pass a device tree to OP-TEE?
barebox only does it when CONFIG_ARCH_ROCKCHIP_ATF_PASS_FDT is enabled
which currently is not the default as there are some Rockchip TF-A
binaries shipped by Rockchip which do not handle a fdt being passed.

Looking at your TF-A version you might have one of these, so you likely
have to update your TF-A to an upstream one.

Side note: Look at bl31_entry(). if it gets a fdt_addr that will be
passed to both TF-A and OP-TEE. You *could* try passing NULL as fdt to
atf_entry() to pass the fdt only to OP-TEE and not to TF-A, but I
wouldn't encourage that.

Sascha

--
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



