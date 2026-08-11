Delivery-date: Tue, 11 Aug 2026 13:53:29 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wtl2u-001y5z-2R
	for lore@lore.pengutronix.de;
	Tue, 11 Aug 2026 13:53:29 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id C4CE1201C9F
	for <lore@pengutronix.de>; Tue, 11 Aug 2026 13:53:28 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=VAYUUbXm;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=p4Ww99Xb;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("google.com:s=arc-20260327:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:Subject:
	Message-ID:Date:From:MIME-Version:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=L6EguJjT2XepUDrP2B/XKtNJ+tkNd8JzKqz68FaVWi8=; b=VAYUUbXmgDFNGNvQWl9YeAlyxl
	2WuynjDhbqqnAP7elNmo3vzTOOfiyS7yQMSpk9vPFJ5MurlW9si/pZqYxFNGLbWUWlmX6vyjUJay6
	fOhlgt0Qw9uc/YtubTRfKWo3aaysGDNpY8KfNVfr+Brad9DtvsRF/cKrEwwA7fLnAxctOAt+M2/hC
	UxAeGhRnusYcYiNj4Y9L1wM1UeHYlH7G6VjYQ6A1IAnk32ntIESQJ9gKAWFcLLKInvGB2G3g61Bsl
	p3WDiVi46WMN3iycCRoKnVZPkP//uvKsG7QvoZfXDxxdAyiGvN2lXId6P1A75kZdjWahFv1QqTybB
	zVsU0L1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtl1a-0000000Dxmx-3nop;
	Tue, 11 Aug 2026 11:52:06 +0000
Received: from mail-pj1-x102e.google.com ([2607:f8b0:4864:20::102e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtl1Y-0000000Dxmb-2bAt
	for barebox@lists.infradead.org;
	Tue, 11 Aug 2026 11:52:05 +0000
Received: by mail-pj1-x102e.google.com with SMTP id 98e67ed59e1d1-3811f512167so4108150a91.3
        for <barebox@lists.infradead.org>; Tue, 11 Aug 2026 04:52:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1786449123; cv=none;
        d=google.com; s=arc-20260327;
        b=prz/rkAHxKKBSy6+4NWXKFtJhFFLLZ+39O9GlFD3kfcZec9NToEvbFePbOH2oJoUZ9
         xDY6Fh8hpMBDxSnnuMFx+5f7rXVvkZxqOs4d1d/4BIhgjou4Gx1S/OrL/zlNwZnEESdN
         NQLLNZdtSWLyLsRJQYHki+W+RlheHB0ouJBsC3hRGksce5w+xEu55PFD55Brs1c1Wp7Z
         ug/MJ1nJuNPV15Ds/MSbgK3DNKVMxfzw76TvFbUyZ/sa9r0FG/2iWzWzN9zLjWNs5EZE
         ExGmQxpPn7doYWEUMqppL37LESBxoSyJJbhH3iUqUVYvVZUddP2LDo6/RkSiRG0Mz/5d
         8Txw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=L6EguJjT2XepUDrP2B/XKtNJ+tkNd8JzKqz68FaVWi8=;
        fh=nDWr/NGBxypLRpXDDzp3G+TPW5FTTeYIsyMzIh7BKA8=;
        b=ceRbBXFwT2g6zndDD+UXXe0uSH0TvVcRENstqvJt8vBdhxLSLur+E/+kk5Jh03qhkR
         CmHjkvSLO2lElV0+R0F6Z8kGKlp8jaz7BTq+IJTx9+gV/EfEHfyoRjlx0cNlEfjwclB3
         QpeIGbJCZdHu1b2Hz5rz+wc04L5DYwN6Kk7nQiRPOmKb7b2f/DR+HzmYT90ikfyTyqw+
         rBNsXIwP2v8Ou/q/S5rHMWlJLdAfJHfQc5V9mt6zY/StunR5H3owUP6E8Ag1jQRO3VW/
         c09A5dfM67HthSzg5SGF/unJwO522UqruKHK65XUy1FdT8uoK9VQUuoDW9JTCrzV6iK4
         1Xpg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786449123; x=1787053923; darn=lists.infradead.org;
        h=content-type:to:subject:message-id:date:from:mime-version:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=L6EguJjT2XepUDrP2B/XKtNJ+tkNd8JzKqz68FaVWi8=;
        b=p4Ww99Xb2VHnhugMeAKijWGKp+LJZknkNL943ZYrtpZe7rtmasg3Lvi7Fnga0wKynC
         gFz0I2/TcoQDiPfEf77sHf5ckz6SsuYSxp+V2tTnfIlodUUUZPsTqvuQM4hk1/cJdQGw
         k46zJDKm9s9+E3pi2T3qIF39Z1XrewgCJd7GJRA5JzyrZsEz+7y85KQqJQ7/j7N0yqIy
         kLVokek1sMI4jJaTQXR8tnVom03r4pMsUIQOhNsJFg3jfKbYsBWiQMutpbw6EvrYDB8o
         p8+Gq61aKzlvv5uDePSDv8gWFsYHC3mFIUG3ker+Y68wcCRGKiJMKITSdu157odXcTao
         J2Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786449123; x=1787053923;
        h=content-type:to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=L6EguJjT2XepUDrP2B/XKtNJ+tkNd8JzKqz68FaVWi8=;
        b=tEfilLcGSmCKHT18D36p9/KtTWb8k3P4NGBXcsHkXH58eBNNN07Gac/gdBa+gcBPh+
         CJyVCvOWhs5tx5YYyjIXeTERLdxSKr6oxRZUQS4VUrhpU9gXlwPW2LV7ID0vnZ3yJ95t
         SaoAMKT7xkyOiJE5i4/EpOYfmZgMa3/GHBmuDRnD7hLhhSt0ve65H5p8RfGYTiPEhtjo
         0QCvaIXuQI9NMp9Y2S3fe/ZvqTIYbWLXOfR2pXocHObvvgm5otSOh9v8bXt86Ck2UqKn
         fZSr4/O86VRi0ECGTtcGJTZtmZfSnNNq7Mp1s5LId+0gETSak6ijFHz8TmtAQDfIA2G6
         3gPA==
X-Gm-Message-State: AOJu0YzsHjl0F0Q0knklV5q9f5Jy2C/6Px66q7m+lrT8mO4Wrp9jjU/L
	VaNZUE8aCmedHl6iqcAlYc+9DoOn3Fo21GeBmwz4rO/Yc7HTMew1ABnULyxtt50Uht1o+gnHmMm
	bpZEOzfRILP1Cset3U6nckMdyOh5/DK5n3l8Q
X-Gm-Gg: AR+sD12XJSEPbBJpUceFhi21N0UUIaNpwpnzhXM8k5rA0YQ1ylPcQwNqr5VLwBpfchS
	ceeNXPJ9SE5FMmhpiX9Nakj2/OAR19/b3LdiBg5BV5F1d52LoJju3+8A4hxK51K5taMN/xvu5GU
	+xiyqf49rjs0hAxQRlsZ28WFetN0hzPbbQy7KOgUBjSTsnS2aYXUK6QlLiyGKQbfHUReXWbJA1d
	Enyp9sgzttU6BGwmRTBgGlwVBATZxiR3339UZYwBVm3GodMuJal8Q/n/cT+WRT0stYF14DtQBJ4
	EcTp3MUV1AhVsTVVRPi1hdF0fSFcy4Tsn09f3omT56ws2Da0ZVY1RkVH
X-Received: by 2002:a17:90b:278c:b0:37f:c97a:939f with SMTP id
 98e67ed59e1d1-392ec38e1fdmr2993652a91.7.1786449122660; Tue, 11 Aug 2026
 04:52:02 -0700 (PDT)
MIME-Version: 1.0
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Tue, 11 Aug 2026 14:51:50 +0300
X-Gm-Features: AUfX_mwBgvZwbMSZmezcgEYzXSQhg64FBmZc3CLXWDmWGjgl50q-3Mv2xcQo3pM
Message-ID: <CAP1tNvQBxkjkCX7=zYt5ACjUUi+c2FkbCjz7UG+vQeVKeNB_Og@mail.gmail.com>
Subject: RK3588 optee question
To: Barebox List <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260811_045204_665299_984A17FF 
X-CRM114-Status: UNSURE (   5.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hello All. BL31 = rockchip bl31 from rkbin BL32 = tee.bin
   builded from https://github.com/OP-TEE/optee_os.git DDR cb12b99cc23 hcy 25/10/17-18:57:13,fwver:
    v1.21 ... NOTICE: BL31: v2.3():v2.3-964-g8319968f5:derrick.huang, fwver:
   v1.54 NOTICE: BL31: Built : 17:20:23, Dec 26 2025 ... INFO: BL31: Initialising
    Exc [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2607:f8b0:4864:20:0:0:0:102e listed in]
                             [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
                             digit
                             [eagle.alexander923(at)gmail.com]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail provider
                             [eagle.alexander923(at)gmail.com]
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: zpc7k6drmffjff6p6txkcjaxdtk8ky7z
X-Spamd-Result: default: False [-8.91 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[google.com:s=arc-20260327:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,gmail.com:s=20251104];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_IN_DNSWL_NONE(0.00)[2607:f8b0:4864:20::102e:received];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,gmail.com:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	PREVIOUSLY_DELIVERED(0.00)[barebox@lists.infradead.org];
	FROM_NEQ_ENVFROM(0.00)[eaglealexander923@gmail.com,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_ALL(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DWL_DNSWL_NONE(0.00)[gmail.com:dkim]
X-Rspamd-Queue-Id: C4CE1201C9F

Hello All.

BL31 = rockchip bl31 from rkbin
BL32 = tee.bin builded from https://github.com/OP-TEE/optee_os.git

DDR cb12b99cc23 hcy 25/10/17-18:57:13,fwver: v1.21
...
NOTICE:  BL31: v2.3():v2.3-964-g8319968f5:derrick.huang, fwver: v1.54
NOTICE:  BL31: Built : 17:20:23, Dec 26 2025
...
INFO:    BL31: Initialising Exception Handling Framework
INFO:    BL31: Initializing runtime services
INFO:    BL31: Initializing BL32
INFO:    BL31: Preparing for EL3 exit to normal world
INFO:    Entry point address = 0xb00000
INFO:    SPSR = 0x3c9

barebox 2026.07.0-00839-g50ae8812b950-dirty #144 Tue Aug 11 14:39:36 MSK 2026

Board: Diasom DS-RK3588-BTB-EVB
rockchip-dmc memory-controller.of: Detected memory size: 0x100000000
netconsole: registered as netconsole-1
fan53555-regulator rk86020: FAN53555 Option[10] Rev[1] Detected!
vdd2_ddr: Bringing 500000uV into 1100000-1100000uV
vddq_ddr: Bringing 500000uV into 600000-600000uV
rockchip_saradc fec10000.adc@fec10000.of: registered as aiodev0
BTB revision: 3
EVB revision: 2
EVB HAT Addon detected.
arm-scmi firmware:scmi.of: SCMI Protocol v2.0 'rockchip:' Firmware version 0x0
optee: smc_abi: probing for conduit method.
optee: smc_abi: revision 4.10 (71196403f6f9f642)
ERROR: optee: smc_abi: driver requires OP-TEE dynamic shared memory support
ERROR: optee firmware:optee.of: probe failed: Function not implemented
psci psci.of: detected version 1.1
xHCI xHCI0: USB XHCI 1.10
ehci fc800000.usb@fc800000.of: USB EHCI 1.00
ehci fc880000.usb@fc880000.of: USB EHCI 1.00
xHCI xHCI1: USB XHCI 1.10
fan53555-regulator rk86021: FAN53555 Option[10] Rev[1] Detected!
fan53555-regulator rk86030: FAN53555 Option[10] Rev[1] Detected!
rtl8169_eth pci-10ec:8125.0: found RTL8125B (base=0x0000000a00000000)
mdio_bus: miibus0: probed
dw_mmc fe2c0000.mmc@fe2c0000.of: registered as mmc1
mmc1: detected SD card version 3.0
WARNING: mmc1: GPT:Primary header thinks Alt. header is not at the end
of the disk.
WARNING: mmc1: GPT:2976871 != 62333951
WARNING: mmc1: GPT:Alternate GPT header not at the end of the disk.
WARNING: mmc1: GPT:2976871 != 62333951
mmc1: GPT: will repair later if global.system.gpt_refresh=1
mmc1: registered mmc1
rk3568-dwcmshc-sdhci fe2e0000.mmc@fe2e0000.of: registered as mmc0
mmc0: detected MMC card version 5.1
mmc0: registered mmc0.boot0
mmc0: registered mmc0.boot1
mmc0: registered mmc0
i2c3: Added multiplexed i2c bus 9
i2c3: Added multiplexed i2c bus 10
i2c3: Added multiplexed i2c bus 11
i2c3: Added multiplexed i2c bus 12
pca954x pca95460: registered 4 multiplexed busses for I2C switch
xHCI xHCI2: USB XHCI 1.10
rockchip-dw-pcie a40000000.pcie@fe150000.of: Phy link never came up
rtl8169_eth pci-10ec:8125.1: found RTL8125B (base=0x0000000980000000)
mdio_bus: miibus1: probed
Setup Machine ID from EMMC serial: 1815144414
nv variable modified, will save nv variables on shutdown
malloc space: 0xb0000000 -> 0xedd0ffff (size 989.1 MiB)
CAM0: No cameras detected.
CAM1: Camera AR0234 detected.
envfs: no envfs (magic mismatch) - envfs never written?
eth1: Got preset MAC address from NVMEM: 80:34:28:75:d4:d4
eth0: Got preset MAC address from NVMEM: 80:34:28:75:cf:e7

Hit any to stop autoboot:    2
barebox@Diasom DS-RK3588-BTB-EVB-HAT:/ rksecure -i
Failed to read secure boot info
rksecure: No such device
barebox@Diasom DS-RK3588-BTB-EVB-HAT:/

Am I missing something?
The following lines confuse me, what is these line mean?:
ERROR: optee: smc_abi: driver requires OP-TEE dynamic shared memory support
ERROR: optee firmware:optee.of: probe failed: Function not implemented

Thanks!


