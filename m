Delivery-date: Thu, 02 Jul 2026 09:36:12 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wfBy0-00CBL0-0u
	for lore@lore.pengutronix.de;
	Thu, 02 Jul 2026 09:36:12 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 7E1BB200F84
	for <lore@pengutronix.de>; Thu, 02 Jul 2026 09:36:11 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="4OYHhmX/";
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=g2TWEj8Y;
	dkim=fail ("headers rsa verify failed") header.d=ku-gbr.de header.s=x header.b="T jydhnZ";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:Cc:To:Subject:From:
	Reply-To:MIME-Version:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	bh=4R4PUZGnVwI0y4vFmbxYwWKAXcZMGjHjKVxXYTrZVs8=; b=4OYHhmX/iKykmwRIPhgMuJrN9b
	klYzfvlk2NzGBCCV2Mln4XbzjIE7bzNOEvxr0svcdYQvUiStX1CRHY/pT+g0T2DAXlNhuO3pIQOwT
	bNhToiUc4xYbIiCYPdRVU9z3BKIjemDP/z0yqfD1QnoH1EV6xzijFhmwpGiFVh5GLrWp8VJtemi5b
	XIA8bXUyk60kjweJDA7As63RHXGgoZnfIq+fEfdUVjE3h1JOc8rm4uEjekToq0XjtuT9dethRrlZF
	Yc+6Wj4tatiM0Z9IHyXTMVHZvVKaVpqqNF4XQEEnfQ8knLmic8ubnKhx8P+OV/CXnnd0h9x+MeJz2
	omG3Drfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfBwn-00000003kTx-12zM;
	Thu, 02 Jul 2026 07:34:57 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfBwm-00000003kTf-1HyX
	for barebox@bombadil.infradead.org;
	Thu, 02 Jul 2026 07:34:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Message-ID:Date:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:Cc:To:Subject:From:Sender:
	Reply-To:MIME-Version:Content-ID:Content-Description:References;
	bh=4R4PUZGnVwI0y4vFmbxYwWKAXcZMGjHjKVxXYTrZVs8=; b=g2TWEj8Y0geobUjyjmR/e2sX/k
	4Tk8EeZ2sS3+9ZJzRxogV6hZG7mmfJwHrGsdisn8d8g4Wt/nau3fLqm1Zffuk5IqEXHkq+uCzi/sH
	WH4JSxQ14sNulXHxegZFQz25RNPkVX9Or6IG/zSSkzE3ChQvve0YYIdQhFUpoStiUnJn5V4qwf6jN
	CyeI0MAYl0ZuaOlpX8JnwFlYxkgXJptEhGQ13/uN4Tb5iq+yM9iwiXeBlH5XsDhAJEgiJbc18wuok
	qgW5Hryiwf8GA07d5NoflWu8/sXzQjGTy5RESGa/CCYMysmniMxbTSKU3Y25WoWMs/V16k18VPbsb
	AyFQa8Zg==;
Received: from mail.ku-gbr.de ([2a02:790:4:9::dead])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wfBwj-00000003Vhs-0pVp
	for barebox@lists.infradead.org;
	Thu, 02 Jul 2026 07:34:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=ku-gbr.de;
	s=x; h=Message-ID:Date:Content-Transfer-Encoding:Content-Type:In-Reply-To:Cc:
	To:Subject:From:Sender:Reply-To:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
	List-Owner:List-Archive; bh=4R4PUZGnVwI0y4vFmbxYwWKAXcZMGjHjKVxXYTrZVs8=; b=T
	jydhnZXv2HmYMhT7nQT+8iK2PYHwxvYJTOjQgig88z+33sIJuta7vy+CTjiGFV4ZeVbPvAeyIuPzc
	jvlfIgUMty3n/fP9XERthQdJDdB+TUMPjyiGpAqoJkyA/+wQunQqPlrnTTVYF21P5cEcMfcVY0O+G
	04E0iV2e3ITjP278WKpKbWX+1WfNonYsGvhEHcly4e+crLtnIC63YM4RvMHQ9VW5dhwbPaWV/6GOv
	sQhdwMFG3gsG8fFqrNBGnE5ouIy0DUewmHSG26E7FEaEPfg7iLICGmjMmO/9wXaQpRLvo1JBUsG7v
	m3pq+JTlw2OtcTw379nq0AdycwdQDXAaQ==;
Received: from [2a02:560:5c74:8700:9ebf:dff:fe00:fdb5] (port=49600 helo=[127.0.0.1])
	by mail.ku-gbr.de with esmtpsa (Exim 4.96 #2 (Debian))
	id 1wfBwF-003FZD-0x;
	Thu, 02 Jul 2026 09:34:23 +0200
From: "Sascha Hauer" <sascha@saschahauer.de>
Subject: Re: [PATCH] ARM: i.MX8M: enable MMU in PBL around fw-external BL32
 verify
To: "Johannes Schneider" <johannes.schneider@leica-geosystems.com>
Cc: barebox@lists.infradead.org, "Johannes Schneider" <johannes.schneider@leica-geosystems.com>
In-Reply-To: <20260616144924.1614561-1-johannes.schneider@leica-geosystems.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 02 Jul 2026 07:34:22 +0000
Message-ID: <E1wfBwF-003FZD-0x@saschahauer.de>
X-ACL-Warn: Adding Message-ID header because it is missing!
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260702_083453_557563_FD5DBD37 
X-CRM114-Status: GOOD (  15.76  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software, running on the system "desiato.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Johannes, On 2026-06-16 14:49, Johannes Schneider wrote:
    > The BL32 fw-external blob is loaded into DRAM by the PBL and then > SHA-256-verified
    inside get_builtin_firmware_ext(). The verify runs > in PBL phase [...] 
 
 Content analysis details:   (0.0 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_NONE               SPF: sender does not publish an SPF Record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
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
X-Rspamd-Queue-Id: 7E1BB200F84
X-Spamd-Result: default: False [-4.61 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	MISSING_MIME_VERSION(2.00)[];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2001:8b0:10b:1:d65d:64ff:fe57:4e05:received];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:johannes.schneider@leica-geosystems.com,m:barebox@lists.infradead.org,s:lore@pengutronix.de];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_MIXED(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[saschahauer.de];
	FORGED_SENDER(0.00)[sascha@saschahauer.de,barebox-bounces@lists.infradead.org];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@bombadil.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_DKIM_REJECT(0.00)[infradead.org:s=desiato.20200630,ku-gbr.de:s=x];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sascha@saschahauer.de,barebox-bounces@lists.infradead.org];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+,infradead.org:-,ku-gbr.de:-];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: czdy3q9eor5ieoaeeym4ifqsczb55qdz
X-Rspamd-Server: mx1

Hi Johannes,

On 2026-06-16 14:49, Johannes Schneider wrote:
> The BL32 fw-external blob is loaded into DRAM by the PBL and then
> SHA-256-verified inside get_builtin_firmware_ext(). The verify runs
> in PBL phase 1 with the MMU off and D-cache cold, walking ~720 KiB
> through uncached DRAM accesses; on a Cortex-A53 this costs around
> 2 s of pre-BL31 wall-clock on every boot.
>=20
> The verify is the only thing anchoring the BL32 content to the
> signed PBL: HABv4 on i.MX8M only signs and loads what fits in
> on-chip SRAM (=3D the PBL), and BL31/BL32 reach DRAM via PBL-driven
> copies, so skipping the SHA-256 would be a security regression.
>=20
> Turn on MMU + D-cache once the DRAM is populated and right before
> the SHA-256 verify + BL31/BL32 memcpy run, and drop the MMU again
> right before the BL31 entry (BL31 expects MMU off). Mirrors the
> Rockchip handling in commits f2ae1a4a85 ("ARM: rockchip: atf:
> enable MMU in PBL") and a0ef3a1b5c ("ARM: rockchip: atf: pass
> correct memsize to mmu_early_enable()").
>=20
> Measured on i.MX8MM and i.MX8MP (Cortex-A53, ~720 KiB BL32 blob):
> the BL32 verify drops from ~2 s to ~300 ms (generic-C SHA-256 in
> both cases, the difference is the D-cache state) and the BL31
> early-init also benefits from the warm cache (~200 ms saved).
>=20
> Assisted-by: Claude:claude-opus-4-7
> Signed-off-by: Johannes Schneider <johannes.schneider@leica-geosystems.co=
m>
> ---
> --- a/arch/arm/mach-imx/atf.c
> +++ b/arch/arm/mach-imx/atf.c
> @@ -20,6 +20,7 @@
>  #include <mach/imx/xload.h>
>  #include <mach/imx/snvs.h>
>  #include <pbl.h>
> +#include <asm/mmu.h>
> =20
>  static void imx_adjust_optee_memory(void **bl32, void **bl32_image, size=
_t *bl32_size)
>  {
> @@ -187,6 +188,9 @@
>  		     "r" (tfa_dest - 16) :
>  		     "cc");
> =20
> +	/* BL31 expects MMU off. */
> +	mmu_disable();
> +
>  	/*
>  	 * If enabled the bl_params are passed via x0 to the TF-A, except for
>  	 * the i.MX8MQ which doesn't support bl_params yet.
> @@ -284,6 +288,12 @@
>  	imx8m_setup_snvs();
>  	imx8mm_load_bl33(bl33);
> =20
> +	/* Cache DRAM for the BL32 verify + BL31/BL32 memcpy that follow. */
> +	mmu_early_enable(MX8M_DDR_CSD1_BASE_ADDR,
> +			 imx8m_barebox_earlymem_size(32),
> +			 MX8M_DDR_CSD1_BASE_ADDR +
> +			 imx8m_barebox_earlymem_size(32) - OPTEE_SIZE);

mmu_early_enable() only takes two arguments.

Please add a new imx8m_mmu_early_enable() function usable for all i.MX8M to
enable the MMU.

We already have this snippet elsewhere:

	endmem =3D MX8M_DDR_CSD1_BASE_ADDR;
	if (cpu_is_mx8mn())
		endmem +=3D imx8m_barebox_earlymem_size(16);
	else
		endmem +=3D imx8m_barebox_earlymem_size(32);

Which could help implementing this function.

Sascha



