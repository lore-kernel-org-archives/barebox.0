Delivery-date: Mon, 22 Aug 2022 13:33:29 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oQ5gQ-007DDR-0m
	for lore@lore.pengutronix.de; Mon, 22 Aug 2022 13:33:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oQ5gN-0002DO-U6
	for lore@pengutronix.de; Mon, 22 Aug 2022 13:33:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Mime-Version:References:In-Reply-To:Message-Id:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ok7Y+cxu6oH8znThQZ6g/m3AsZ+WhmQ3VEXOHzVR6r8=; b=cbeKPg28c93P+Wc6q2HcyCIjA2
	/HXiUTZUgiODFzDa8372Dr8QgE44OBaj7sKqGBCXBg8i7BY339uVX02Zfj502ASBP8ry05Df8l2l7
	cJuyMTWtRZu7CqHFmKKRRQlPzuu70rLkAcKMfaoaW+p4ea4HXy5kJB0rT/i7pcXKkjg9K3P+yJbLg
	HLpGYNwTQlGVx4B8y7r0qDu/Q8RQWVbqYCEtxnwbYnPXqYHdR5xRr5ccHcJ4/Uv/cwqld+vLsLYQk
	FzmV97AZPO05nfYsUW/kP3/Qdjzu6a747N1HAPWrZeGF4bOhjsTltWKImpPNEBR+cCM7RSqAKXZVk
	54Z2AHbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQ5d6-008FUj-Hy; Mon, 22 Aug 2022 11:30:04 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQ5d1-008FRV-5d
	for barebox@lists.infradead.org; Mon, 22 Aug 2022 11:30:01 +0000
Received: by mail-lj1-x232.google.com with SMTP id x10so10291017ljq.4
        for <barebox@lists.infradead.org>; Mon, 22 Aug 2022 04:29:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:from:to:cc;
        bh=ok7Y+cxu6oH8znThQZ6g/m3AsZ+WhmQ3VEXOHzVR6r8=;
        b=d0FueYDiE4Lq+ZI/f2QTshUsepLeKkg7X3tjNCGZug4LSh/LTKtUbdDZV/WnelGd36
         Tn84J9pAJr+mDUpeXlpj/ryZCRWiYjhlGKmmgpj9mHeX+OrOV8RzpUnuN28gRQlaNjqs
         zh039Rb0fc8yp/VKqBDpYKrReOpW3PbHd9Hr/OcFs5dLoOr1Zl6AVCtMKv9Or0R+HM3t
         Gd0YfQXzYE2ed5MHDPAHN40rfhts9UICpkHWropVSPpl5UmYdx03KBT7y92FPwwbOoDG
         4fzxnelJT3AtOGOpdCS7pjoXfpvI6uRVa3QKTQLjWmstEal5U3nP378gzCw1G6MMmb7F
         sqcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc;
        bh=ok7Y+cxu6oH8znThQZ6g/m3AsZ+WhmQ3VEXOHzVR6r8=;
        b=5Ep70/1dfCFKByS8l3DKnkUpkOY3HxFfJ5sopd0OdM334UoIVACMd/n+NgcoM6CrP3
         8GB37Y2nuRYfwKEcdQxw3Hmtx5FMJHvtxBK8YrGB/IcdkFbNMPPW0UiLQgmngHXa5i2n
         UqPWislAuLroTj3WXJt26xg826X5zVVKnsgdVCYRCvroylwFP9nRHANC4h8znZ1mrUO/
         KOJ21JrUCQYZUkoE4n8UKB26Lb8AvdG4FThbx/vVhyNFdPkk4rJ+t/qToWu+ProsglpA
         Z4WoWoJ7CatCg+bxP+SIt9va0dUW7C7nQqb7FBlMPYh2dWGqbxJoljbCULzMxTXhfYPy
         3dKw==
X-Gm-Message-State: ACgBeo1ZfzxgPBwmkP1wXd+3rQiUzefeNGSkCXZ/aUlVecso151VYSB6
	bjJ1FpKRs0Ov0Qo4aXc309S2G+khZ3c=
X-Google-Smtp-Source: AA6agR4XpfE5pVxm0mR3gLmdmqE3rQwzl9h9VLIB8jWs1P/ty0epEERx6nnC8317Jv5mEwo9UI1vqw==
X-Received: by 2002:a2e:a167:0:b0:261:cc95:e08e with SMTP id u7-20020a2ea167000000b00261cc95e08emr1427261ljl.149.1661167793595;
        Mon, 22 Aug 2022 04:29:53 -0700 (PDT)
Received: from flare (t35.niisi.ras.ru. [193.232.173.35])
        by smtp.gmail.com with ESMTPSA id h8-20020a05651c124800b0025e5755fd16sm1790627ljh.36.2022.08.22.04.29.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Aug 2022 04:29:52 -0700 (PDT)
Date: Mon, 22 Aug 2022 14:32:42 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-Id: <20220822143242.a7937c979f582c4989303380@gmail.com>
In-Reply-To: <20220426064604.422292-2-ahmad@a3f.at>
References: <20220426064604.422292-1-ahmad@a3f.at>
	<20220426064604.422292-2-ahmad@a3f.at>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.33; i686-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220822_042959_553874_56B25D78 
X-CRM114-Status: GOOD (  16.79  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,NICE_REPLY_A,
	RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 2/2] RISC-V: sifive: enable SPI Flash and SD in
 config
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, 26 Apr 2022 08:46:04 +0200
Ahmad Fatoum <ahmad@a3f.at> wrote:

Hi Ahmad!

I'm trying to run SiFive target with emulate.pl, e.g.

barebox$ dd if=3D/dev/zero of=3D/tmp/1M count=3D1 bs=3D1M
barebox$ ./test/emulate.pl sifive_defconfig  -- -drive file=3D/tmp/1M,if=3D=
sd
...
qemu-system-riscv64: -drive file=3D/tmp/1M,if=3Dsd: machine type does not s=
upport if=3Dsd,bus=3D0,unit=3D0
Error running emulator: 256

I use QEMU emulator version 5.2.0 (Debian 1:5.2+dfsg-11+deb11u2), please se=
e https://gitlab.com/frantony/barebox-gitlab-ci-runner .

If I skip the '-drive file=3D/tmp/1M,if=3Dsd' qemu option then I see "Load =
access fault", e.g.

barebox$ ./test/emulate.pl sifive_defconfig
...
barebox 2022.08.0-00162-g7fce4ae853b0 #1 @1661158478


Board: SiFive HiFive Unleashed A00
Unhandled exception: 5 "Load access fault"
E [<0000000087e224fc>] ra: [<0000000087e224f0>] tval: 0000000010040014

sp:  0000000087fffd70 gp:  0000000000000000 tp:  0000000000000001
t0:  0000000083f16cf0 t1:  0000000000000002 t2:  ffffffffffffffff
s0:  0000000083f16c78 s1:  0000000087eaf590 a0:  0000000003f940aa
a1:  0000000083f0fee0 a2:  0000000000000001 a3:  0000000083f0f3d8
a4:  0000000000000002 a5:  0000000010040000 a6:  0000000000000001
a7:  0000000000ff0000 s2:  0000000083f0fee0 s3:  ffffffffffffffff
s4:  fffffffffffff000 s5:  0000000000000008 s6:  0000000080201ca0
s7:  0000000000000001 s8:  00000000000db4f8 s9:  0000000087fe0000
s10: 0000000000000000 s11: 0000000000000000 t3:  0000000000000048
t4:  0000000000000000 t5:  0000000000000000 t6:  fffffffffffffffd
### ERROR ### Please RESET the board ###

If I revert the 'RISC-V: sifive: enable SPI Flash and SD in config' commit =
then './test/emulate.pl sifive_defconfig' runs successfully.

> To test SD-Card:
>=20
>   ./test/emulate.pl sifive_defconfig  -- -drive file=3Dimage.sdcard,if=3D=
sd
>=20
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
> v1 -> v2:
>   - No change
> ---
>  arch/riscv/configs/sifive_defconfig | 13 +++++++------
>  1 file changed, 7 insertions(+), 6 deletions(-)
>=20
> diff --git a/arch/riscv/configs/sifive_defconfig b/arch/riscv/configs/sif=
ive_defconfig
> index 59cfebf194df..6ebe6eaf3785 100644
> --- a/arch/riscv/configs/sifive_defconfig
> +++ b/arch/riscv/configs/sifive_defconfig
> @@ -13,13 +13,10 @@ CONFIG_HUSH_FANCY_PROMPT=3Dy
>  CONFIG_CMDLINE_EDITING=3Dy
>  CONFIG_AUTO_COMPLETE=3Dy
>  CONFIG_MENU=3Dy
> -CONFIG_IMD_TARGET=3Dy
>  CONFIG_CONSOLE_ALLOW_COLOR=3Dy
>  CONFIG_PBL_CONSOLE=3Dy
>  CONFIG_PARTITION_DISK_EFI=3Dy
>  CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=3Dy
> -CONFIG_BAREBOXENV_TARGET=3Dy
> -CONFIG_BAREBOXCRC32_TARGET=3Dy
>  CONFIG_STATE=3Dy
>  CONFIG_STATE_CRYPTO=3Dy
>  CONFIG_BOOTCHOOSER=3Dy
> @@ -85,20 +82,21 @@ CONFIG_VIRTIO_CONSOLE=3Dy
>  CONFIG_SERIAL_SIFIVE=3Dy
>  CONFIG_DRIVER_NET_MACB=3Dy
>  CONFIG_DRIVER_SPI_GPIO=3Dy
> +CONFIG_SPI_SIFIVE=3Dy
>  CONFIG_I2C=3Dy
>  CONFIG_I2C_GPIO=3Dy
>  CONFIG_MTD=3Dy
> -# CONFIG_MTD_OOB_DEVICE is not set
> +CONFIG_MTD_RAW_DEVICE=3Dy
>  CONFIG_MTD_CONCAT=3Dy
>  CONFIG_MTD_M25P80=3Dy
>  CONFIG_DRIVER_CFI=3Dy
>  CONFIG_DRIVER_CFI_BANK_WIDTH_8=3Dy
> -CONFIG_DISK=3Dy
> -CONFIG_DISK_WRITE=3Dy
>  CONFIG_VIRTIO_BLK=3Dy
>  CONFIG_VIDEO=3Dy
>  CONFIG_FRAMEBUFFER_CONSOLE=3Dy
>  CONFIG_DRIVER_VIDEO_SIMPLEFB_CLIENT=3Dy
> +CONFIG_MCI=3Dy
> +CONFIG_MCI_SPI=3Dy
>  CONFIG_CLOCKSOURCE_DUMMY_RATE=3D60000
>  CONFIG_EEPROM_AT24=3Dy
>  CONFIG_HWRNG=3Dy
> @@ -126,3 +124,6 @@ CONFIG_ZSTD_DECOMPRESS=3Dy
>  CONFIG_XZ_DECOMPRESS=3Dy
>  CONFIG_BASE64=3Dy
>  CONFIG_DIGEST_CRC32_GENERIC=3Dy
> +CONFIG_IMD_TARGET=3Dy
> +CONFIG_BAREBOXENV_TARGET=3Dy
> +CONFIG_BAREBOXCRC32_TARGET=3Dy
> --=20
> 2.34.1
>=20
>=20
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


--=20
Best regards,
=A0 Antony Pavlov


