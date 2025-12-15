Delivery-date: Mon, 15 Dec 2025 10:04:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV4V2-00BgZT-2Z
	for lore@lore.pengutronix.de;
	Mon, 15 Dec 2025 10:04:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV4V2-0005oO-49
	for lore@pengutronix.de; Mon, 15 Dec 2025 10:04:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xbeoNgo1NSOpAt9ArTN1XnPJOgOTHGzJtUQuwYDwnX8=; b=h4o0F7um4octFttGDy6lJ42QGD
	Jk4aa+XPxW3HR75UWF+8IbGUSjKo/4ufTCVdTIJykx8icPwpas8ARVkk8G1v1B98BRFmqruDtIOrB
	TZeZzQNFN6Bm93T/UyF29ZJNLWGgWgmIhMXz4lr7LOYu2Ol8RzdTjgwajrn6RWTIkfN8EsLqD3dtD
	frBkXs/dXp3fx1Mqpl8l5NUjIeVQk69Q+nROVpgfGpFRj+vuXQEATsoDk6jQrXR+lXorshxRt7fcj
	cbFxVkhoYy6Km8PvipGwf8+rb7Pkcey2N76w2kcdruFlFgiosj0eaWwZxiELiDP/GY3o1eavU9rAg
	JNwQdjVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV4UX-00000003KT8-3a1F;
	Mon, 15 Dec 2025 09:03:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV4UU-00000003KRd-1Vu8
	for barebox@lists.infradead.org;
	Mon, 15 Dec 2025 09:03:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vV4US-0005d8-JO; Mon, 15 Dec 2025 10:03:36 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vV4US-005kda-1E;
	Mon, 15 Dec 2025 10:03:36 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vV4US-000000017Cd-1KYD;
	Mon, 15 Dec 2025 10:03:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251211203056.2014710-1-a.fatoum@pengutronix.de>
References: <20251211203056.2014710-1-a.fatoum@pengutronix.de>
Message-Id: <176578941631.265962.15388167906932023010.b4-ty@pengutronix.de>
Date: Mon, 15 Dec 2025 10:03:36 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251215_010338_479475_A46E280B 
X-CRM114-Status: GOOD (  10.09  )
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
Subject: Re: [PATCH 00/16] efi: restructure for reuse from loader code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Thu, 11 Dec 2025 21:29:51 +0100, Ahmad Fatoum wrote:
> This series mostly prepares existing definitions and code used for
> payload so it can be reused from the new loader support as well.
> 
> Ahmad Fatoum (16):
>   efi: payload: restructure Kconfig
>   efi: payload: populate $global.efi.payload variable
>   efi: mode: add efi_get_runtime_services helper
>   efi: payload: make EFI variable helpers usable for loader as well
>   fs: efivarfs: prepare for use with barebox as EFI loader
>   efi: handle: build for both EFI payload and loader
>   efi: provide populate $efi.payload_default_path depending on arch
>   efi: tidy up header includes for reuse
>   efi: types: add efi_intn_t/efi_uintn_t definition
>   efi: devicepath: make fully usable for loader
>   efi: guid: don't interleave protocol and event GUIDs
>   efi: guid: add some more GUIDs
>   efi: guid: move static GUIDs out of drivers
>   efi: gop: flesh out efi_graphics_output_protocol::blt definition
>   efi: payload: initrd: move into common efi code
>   efi: add missing EFIAPI to functions
> 
> [...]

Applied, thanks!

[01/1] fixup! efi: guid: add some more GUIDs
       https://git.pengutronix.de/cgit/barebox/commit/?id=9c5619f9019a (link may not be stable)
[01/16] efi: payload: restructure Kconfig
        https://git.pengutronix.de/cgit/barebox/commit/?id=ed21fe7e6efd (link may not be stable)
[03/16] efi: mode: add efi_get_runtime_services helper
        https://git.pengutronix.de/cgit/barebox/commit/?id=dcabd235966d (link may not be stable)
[04/16] efi: payload: make EFI variable helpers usable for loader as well
        https://git.pengutronix.de/cgit/barebox/commit/?id=b0f46a7df454 (link may not be stable)
[05/16] fs: efivarfs: prepare for use with barebox as EFI loader
        https://git.pengutronix.de/cgit/barebox/commit/?id=a3ebd37e7fb9 (link may not be stable)
[06/16] efi: handle: build for both EFI payload and loader
        https://git.pengutronix.de/cgit/barebox/commit/?id=63d6011df954 (link may not be stable)
[07/16] efi: provide populate $efi.payload_default_path depending on arch
        https://git.pengutronix.de/cgit/barebox/commit/?id=eb4971313129 (link may not be stable)
[08/16] efi: tidy up header includes for reuse
        https://git.pengutronix.de/cgit/barebox/commit/?id=df0789c9d8f7 (link may not be stable)
[09/16] efi: types: add efi_intn_t/efi_uintn_t definition
        https://git.pengutronix.de/cgit/barebox/commit/?id=f5c433fd496c (link may not be stable)
[10/16] efi: devicepath: make fully usable for loader
        https://git.pengutronix.de/cgit/barebox/commit/?id=ee9e080b46de (link may not be stable)
[11/16] efi: guid: don't interleave protocol and event GUIDs
        https://git.pengutronix.de/cgit/barebox/commit/?id=1d5d1afd83f9 (link may not be stable)
[12/16] efi: guid: add some more GUIDs
        https://git.pengutronix.de/cgit/barebox/commit/?id=4f3ff37a63ab (link may not be stable)
[13/16] efi: guid: move static GUIDs out of drivers
        https://git.pengutronix.de/cgit/barebox/commit/?id=8a860f8eea13 (link may not be stable)
[14/16] efi: gop: flesh out efi_graphics_output_protocol::blt definition
        https://git.pengutronix.de/cgit/barebox/commit/?id=e014bb52f015 (link may not be stable)
[15/16] efi: payload: initrd: move into common efi code
        https://git.pengutronix.de/cgit/barebox/commit/?id=919f43c39c50 (link may not be stable)
[16/16] efi: add missing EFIAPI to functions
        https://git.pengutronix.de/cgit/barebox/commit/?id=488b96b307a2 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



