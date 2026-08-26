Delivery-date: Thu, 27 Aug 2026 00:57:30 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wzMYj-007b44-3C
	for lore@lore.pengutronix.de;
	Thu, 27 Aug 2026 00:57:30 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 24746202148
	for <lore@pengutronix.de>; Thu, 27 Aug 2026 00:57:26 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=jRrwvt8M;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=XskSxo+R;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:
	In-Reply-To:Cc:To:From:Subject:Content-Transfer-Encoding:Content-Type:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uATo0EDOUyTYqdKK0ZBsdBiS6QongWYvjdLN6SpPGOM=; b=jRrwvt8MMMwzCoK6K6SlewgH6v
	3Bh2e3JdBEBAjZve6gOEpYKlbwXU3TnB5qP1X+coLWc8M5YWBRLa3m0CwVRxNHKcvtWnmcyMFgnls
	Zm6+qoM9ceampKnzG7qPkrn9oPVnONsFzed0c/D7yQ0MbzU2xrq28bNfhZPB//mEdoSyTmpyNPOiq
	clhEUdthewn9fv3XChSn1buBY5jzfYpEgAuWqt3ZRoslum64PAyifv/aRjSNGnF1+QIDMZOne8O28
	s0Pr6Jreegy7R7uEwtaMPhN5vc4vezAIUL/xlr+6ohuhEy5daKnZNfBbYIEiyq8llq09Cq+0U8K+u
	maBCmheg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzMXh-000000035jQ-1AYh;
	Wed, 26 Aug 2026 22:56:25 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzMXe-000000035j5-2UKO
	for barebox@lists.infradead.org;
	Wed, 26 Aug 2026 22:56:23 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-49b0d78a801so3924145e9.2
        for <barebox@lists.infradead.org>; Wed, 26 Aug 2026 15:56:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787784980; x=1788389780; darn=lists.infradead.org;
        h=message-id:date:references:in-reply-to:cc:to:from:subject
         :content-transfer-encoding:content-type:mime-version:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=uATo0EDOUyTYqdKK0ZBsdBiS6QongWYvjdLN6SpPGOM=;
        b=XskSxo+RabjlNRQJIIltMIAzwfbLuhShfkQUzNYusHsINSYxvgH2CpwkLb+1frA8+S
         zm/HTaqvJ6LzXcASsTXVxPRRF3IwuWOs9CPCnm36ijALJM10neAS4gxo0HvJuwhiMTwR
         oO5qIl2IaaGgXKmX7+BLGEjqskUrM5hpuvinPKTZsbGBPfqu8EsA7Fyw8kl+unDLSQtQ
         6ZvseUoIezWLqDYTHV1xhyHYaoLsYoVPktADzBa35EYD3NRgJszU+JihDz4UjMmrJ66d
         n/FtrUedlmqmBtwCUzHDaR05zHbOBrfwXR4t8NzmVK1YCr+sVlFQUsPc/nF+RrfkJfRV
         LfDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787784980; x=1788389780;
        h=message-id:date:references:in-reply-to:cc:to:from:subject
         :content-transfer-encoding:content-type:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=uATo0EDOUyTYqdKK0ZBsdBiS6QongWYvjdLN6SpPGOM=;
        b=fAUQOGx8N2YxVcVwz4PNhCkRvlwp00snzpbPxFq++O1d7fj0RxN7nczQbeN3okYKh4
         HijRn1IBC9aBkdAVYGN9KS1fmhKIcn60j92Mu0zWXphh4NSmYQoxVwuoLiyivYjprsj5
         YA1/mqbyqc0+dlKGUBQlGLc88RPBMpli6mS5hHD0mu/O7Z128WIEfdaTTsnnSYllbhRt
         wN1phdqFyKW1RjmUkB8YJk63toSEJex1RA4Wio6gxGNta9x+nNP4Mu6atnfkk0WgwSTv
         /XVlHUw/o4PBWgQMqQHol+PtJLQL720z4RvFbDKknV0JZmmkShVgyMpqfC8t7x3ej3wH
         Muow==
X-Gm-Message-State: AFuF++ko+wQjh0/cV6an87ensDuaoQu3o7bgTMNxK9M8B2CE3leVPyQf
	r0xbfnG7mV7XP/E4kdvyocR4oZB3q2plzMFKFAw4l1KMTNolATRygX4vHj4/tA==
X-Gm-Gg: AR+sD12YleaZEGUVK9GTOhtNjzkN/LUdq05F9CgJoJWYabknVLMriQ0Ab1tkcgqI0Dp
	TF6/eQpdAnt7RK2Gele4nsZtLcUadptrwWOoradjeibmmD3Fd1rSm6YQTawWQY6pPn+23kxybQ6
	nqbmMmv7quiugjorS/IlBxL6efvhrOHEowvaORHezn5VihwwqGI9XggyuLZbFiLE0F/LH38PxA2
	KlAcjbkxtIcv084rG3mAch1asDiYvOY/dcAOMgRnEN7I7zkWZughFIxEREwlUtOloWpjT1CF6Jy
	vIg18RbIMLlVCHN9gdwLVNwcDZQo9PIcJNKQ/E3mWWw/f865YUvwdfrn0WE2e5DjGgkPpcYGiRH
	PVKULrp4glIqeoSZZRt9kUILmN+P2B6kFlR6Jm8xLPRt4J3nhPUYFXu7jabPLWfjlSD0RfHbvWq
	b0gcCbcBORaCdPgSSXg0QBSCs7nfvdM8St7mT3lyTHVdE5Au8hSwLdMjQDBMFb6VAdfJS1j8Ixh
	nXrZjwsVcrKbIfUlybi4V9o7X5oqQNmWQ//rixhmkRHrNaCTZZOOmBLRFieFHfh2JLUE3Wq2SZ6
	nV9FIKiRwg==
X-Received: by 2002:a05:600c:5491:b0:499:a4d1:d7d9 with SMTP id 5b1f17b1804b1-499dc717e32mr94903185e9.9.1787784980399;
        Wed, 26 Aug 2026 15:56:20 -0700 (PDT)
Received: from [192.168.1.130] ([213.195.92.95])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49b4c321184sm2390615e9.11.2026.08.26.15.56.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Aug 2026 15:56:19 -0700 (PDT)
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Subject: Re: [PATCH RFT 0/4] efi: payload: allow extension via fragments
From: chalianis1@gmail.com
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, fpg@pengutronix.de, chalianis1@gmail.com
In-Reply-To: <20260826121640.2936023-1-a.fatoum@pengutronix.de>
References: <20260826121640.2936023-1-a.fatoum@pengutronix.de>
Date: Thu, 27 Aug 2026 00:56:18 +0200
Message-Id: <178778497813.821008.831123108674904992.b4-reply@b4>
X-Mailer: b4 0.17-dev
X-Developer-Signature: v=1; a=ed25519-sha256; t=1787784978; l=3402;
 i=chalianis1@gmail.com; s=20260827; h=from:subject:message-id;
 bh=bUtCOE1nel08ezRCAaSfbXy96PAgmEwxCZynyDy6Q1E=;
 b=O0uLGc/ne5jppQbIeOAnahrRq0bjjd57W10fKFthL0FjhTb2zJdsqAApy5Ae0jVEAnn4ANqhV
 Wxl3el6qycyDQlRInErsig3EOaiPCLyqz/+sS6p/VwdiS5UXLknVFln
X-Developer-Key: i=chalianis1@gmail.com; a=ed25519;
 pk=7vDhWf/izlmKbS9RoSS+5VOvMVGJA/TfcB3BIAylLdE=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260826_155622_688298_D4739561 
X-CRM114-Status: GOOD (  17.36  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 2026-08-26 14:15 +0200, Ahmad Fatoum wrote: > CONFIG_EXTERNAL_DTS_FRAGMENTS
    can't be used with the EFI payload, because > it has no internal DT at build-time
    and until recently not even a DT at > r [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a00:1450:4864:20:0:0:0:329 listed in]
                             [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
                             digit
                             [chalianis1(at)gmail.com]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail provider
                             [chalianis1(at)gmail.com]
 -0.0 DMARC_PASS             DMARC pass policy
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
X-Spamd-Result: default: False [-7.41 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER(0.00)[chalianis1@gmail.com,barebox-bounces@lists.infradead.org];
	PREVIOUSLY_DELIVERED(0.00)[barebox@lists.infradead.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DWL_DNSWL_NONE(0.00)[gmail.com:dkim];
	FREEMAIL_FROM(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	RECEIVED_SPAMHAUS_PBL(0.00)[213.195.92.95:received];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FROM_NEQ_ENVFROM(0.00)[chalianis1@gmail.com,barebox-bounces@lists.infradead.org];
	DKIM_TRACE(0.00)[lists.infradead.org:+,gmail.com:+];
	FREEMAIL_CC(0.00)[lists.infradead.org,pengutronix.de,gmail.com];
	RCVD_IN_DNSWL_NONE(0.00)[2a00:1450:4864:20::329:received];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: qjo896yfab34xyiwnabosxdqoshjr17n
X-Rspamd-Queue-Id: 24746202148

On 2026-08-26 14:15 +0200, Ahmad Fatoum wrote:
> CONFIG_EXTERNAL_DTS_FRAGMENTS can't be used with the EFI payload, because
> it has no internal DT at build-time and until recently not even a DT at
> runtime.
> 
> This series adds the necessary bits to have this work the same on
> non-EFI-payload platforms.
> 
> @Fabian, can you give this a test?
> 
> Ahmad Fatoum (4):
>   efi: payload: ignore ESP state.dtb if device tree is populated
>   kbuild: dtc: introduce empty fallback device tree
>   efi: payload: export device tree in barebox-dtb EFI variable
>   Documentation: efi: describe device tree handling
> 
>  Documentation/boards/efi.rst | 75 ++++++++++++++++++++++++++++++++++--
>  Documentation/user/state.rst |  5 +++
>  arch/arm/dts/Makefile        |  2 +
>  arch/riscv/dts/Makefile      |  2 +
>  arch/x86/Kbuild              |  2 +
>  arch/x86/dts/Makefile        |  5 +++
>  common/fallback.dts          | 10 +++++
>  efi/payload/boarddata.c      | 11 ------
>  efi/payload/fdt.c            | 53 +++++++++++++++++++++++++
>  efi/payload/handover.c       |  2 +
>  efi/payload/image.c          |  2 +
>  efi/payload/init.c           | 16 ++++++++
>  include/efi/payload.h        |  6 +++
>  scripts/Makefile.dtbs        | 10 +++++
>  14 files changed, 186 insertions(+), 15 deletions(-)
>  create mode 100644 arch/x86/dts/Makefile
>  create mode 100644 common/fallback.dts
> 
> -- 
> 2.47.3
> 
> 
> 
> 
does this work for using state fragment on arm platforms?
I tried quickly to compile with a dtsi for RPi4 and get an error
because the emmc label is not known for RPi3.

For EFI it works on both qemu (x86/arm).

make -j 8 CONFIG_EXTERNAL_DTS_FRAGMENTS=../barebox-arm64-poc/state-rpi.dtsi 
  UPD     include/generated/utsversion.h
  ENV     arch/arm/boards/raspberry-pi/defaultenv-rpi.bbenv
  DTC     arch/arm/dts/fallback.dtb
  ENV     defaultenv/barebox_default_env
  CC [P]  common/imd-barebox.pbl.o
  DTC     arch/arm/dts/bcm2837-rpi-3.dtb
  DTC     arch/arm/dts/bcm2837-rpi-cm3.dtb
./../barebox-arm64-poc/state-rpi.dtsi:11.8-78.4: ERROR (phandle_references): /state: Reference to non-existent node or label "emmc2"

ERROR: Input tree has errors, aborting (use -f to force output)
make[4]: *** [scripts/Makefile.dtbs:100: arch/arm/dts/fallback.dtb] Error 2
make[4]: *** Waiting for unfinished jobs....
  ENV     defaultenv/defaultenv-2-base.bbenv
./../barebox-arm64-poc/state-rpi.dtsi:11.8-78.4: ERROR (phandle_references): /state: Reference to non-existent node or label "emmc2"

ERROR: Input tree has errors, aborting (use -f to force output)
make[4]: *** [scripts/Makefile.dtbs:95: arch/arm/dts/bcm2837-rpi-cm3.dtb] Error 2
  CC      common/version.o
./../barebox-arm64-poc/state-rpi.dtsi:11.8-78.4: ERROR (phandle_references): /state: Reference to non-existent node or label "emmc2"

ERROR: Input tree has errors, aborting (use -f to force output)
make[4]: *** [scripts/Makefile.dtbs:95: arch/arm/dts/bcm2837-rpi-3.dtb] Error 2
make[3]: *** [scripts/Makefile.build:468: arch/arm/dts] Error 2
make[2]: *** [scripts/Makefile.build:468: arch/arm] Error 2
make[2]: *** Waiting for unfinished jobs....
  AR      common/built-in.pbl.a
  AR      common/built-in.a
make[1]: *** [/home/anicha1/sources/barebox-intern/Makefile:1801: .] Error 2
make: *** [Makefile:200: __sub-make] Error 2

best regards.
Anis



