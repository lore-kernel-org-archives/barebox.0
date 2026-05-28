Delivery-date: Thu, 28 May 2026 14:18:20 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wSZgq-004jfC-13
	for lore@lore.pengutronix.de;
	Thu, 28 May 2026 14:18:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wSZgp-0003n8-ON
	for lore@pengutronix.de; Thu, 28 May 2026 14:18:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eEQZuqeP+MYzUHtzp7q3G+aS9gOnVwou72dntBKsQ/A=; b=QgfWMHVngpg6wPHKTANmlzXQmu
	jvKq/OgOtKeLMsJlqhtPAy5xIxhe90WF6Z7UMzuZw+2ZPl6LLNc3v6CvpbAJnPy7JTtzG1XYkkLNF
	5cXHT7pVgVUBv5PPcLb6YlRTv6+4vIclP72VhY4m7e1NHcx9vII+sdpaLD0sKzH1AobAy0HYyaueF
	4CMtAdLAzf3vryUFNR39VwZu6AhZzg1jrZET0NUw2I/fSw3fvw47oe7IWBU/2Anm1fqfij7YUXi2T
	OlfXubWfReP25l8j3FhgX7uye5Ix/CBJdmncrpWN60RvixkW70Y3lnhGAaTHZfbccKive/KSIGaqR
	fnHRr6sA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSZfd-00000005hyf-2s8Z;
	Thu, 28 May 2026 12:17:05 +0000
Received: from mail-dl1-x1232.google.com ([2607:f8b0:4864:20::1232])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSZfb-00000005hy6-2OJR
	for barebox@lists.infradead.org;
	Thu, 28 May 2026 12:17:04 +0000
Received: by mail-dl1-x1232.google.com with SMTP id a92af1059eb24-1378943cd4aso817902c88.0
        for <barebox@lists.infradead.org>; Thu, 28 May 2026 05:17:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1779970623; cv=none;
        d=google.com; s=arc-20240605;
        b=BKSE3Z/QqJKt0hi3l0XECx20pXOZC/u2VdL3vUbpQRrDsBNwwyKsbtG2/gLvUcRy7x
         YIZqmVv0NtgXDX6Sl1ThqQHpDlzGX/3faV4cQLIcYQ/Hvhd0vpPv5yyxg8O74Fq/EwV6
         m5AQffqU/68veFJdKt0rfQKkXhmDclXkR02hVw+WAsWYxoPXq1a1iWSO+OcHCgXQNbc7
         QtHeTZqj3obBX0iQNqRyGJjWr+k5Bsb538KGGbujCIvyz/hedKQ4QlItdLD2uxGuDl2b
         ZGjpPwDSZ+cWfBKcfTgMEqCo6R+FGryKd/s1Yb9sfGGAJP/Hp/DEgjtK5UdFUi2GXAEj
         yuEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=eEQZuqeP+MYzUHtzp7q3G+aS9gOnVwou72dntBKsQ/A=;
        fh=7Yiba8wXx+vLUz4ud+g5VaEZLPel68E1Fvl1EGss/6I=;
        b=TOzXPy16S6+yzGwbliKS0bLX2wILeqqTzyqTxW+Alq99yAF+1lM7yk6JyeAreMd5hq
         t/fZ7AlnjGm7wfknGsTPIXIaAG2u9gdl7G7P2mHSTINHV4/m8bjgPMVqMBkHZb2jY87q
         GXYtRlG0Dy23p7DUT/Dp5IDnzpmjES/8RKBDmC4QZD90a2GmtxBrtCilxdoyizbM1rXN
         F3E/gkdvEkR08biC9P7+LacySOOMrbT7YOTRE0og5iUmGGuUNCrR3BTVR42PbumXyNav
         KNg1F+ohEA/Xo0rRfHxb9lVHp58hB2S51M7DxUsbEJeblNJFqFCJUqGfDgEeXHhob9wT
         5nQQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779970623; x=1780575423; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eEQZuqeP+MYzUHtzp7q3G+aS9gOnVwou72dntBKsQ/A=;
        b=b+3kyokiOqmouruFbzoX6uNl/znMBTqZofQizE+8RmHaKqhMqDnGYRrnNJd3vAePST
         MykKXFyQXgKqPa6mfy37QrwAudsK4REUsyv2uNsfLkN00Nb6SAeUoc9O6/UtFkIL11a+
         2PZ8ABybNLrcGj6osm//ILKl/3xOXLSUy49HhYjyg1/WHn7ag4U2B9sWcLUXujgZccBN
         QuiIhXXgdte1lYrrM8Sf2rlYkQAmBGLlOf7+NEpuYDUp/pdD/2siTp44m3XKJmozzAk/
         UDAePWmnH+9QLwwZc8yPwtiDiBzUvz1/cxLDO8gnqHogdtW1GcPj52BaTEb8k4lb96pp
         tQTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779970623; x=1780575423;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=eEQZuqeP+MYzUHtzp7q3G+aS9gOnVwou72dntBKsQ/A=;
        b=nGiBEit9KRYsfbhLIbxMETu6qjUry0DQB/aamg65gy4gTkues7CSbdWx+EXnmjPiFR
         XIk3rZ7H+KpChbgmWnFqYqHueDfTA0Mis8doqs4fjW8GD6FJYV4rQPiYPbt2lOLEhpFg
         gwozPkJwNYWTJl2bg/hecHDxjCiXXUT2TFedfjC/1P1lQQNqW592Ecpc3gO18xES7WyD
         9TE3YpAChGgKWjUafIUhir0cbRxK4S6HudYDdBNSaQPPNSFB7ZOAOKNH3LQMDxA+8FQU
         k+K+s6FiRwVX7eClexxkiV+PcfI0QPHV31JQCQAaFgH7INCEtDhpNjf67nP8kRsX9s/X
         pCPw==
X-Gm-Message-State: AOJu0YwK6qVwLedSdSEAUN8tADFibB7fJAKLgK25ggmgexEzbA9ekqY6
	SFeUQW8weIWqSdeARq+j6H9Vraqm1Tjiiw8yNT23stUSoMPxmzO+Vlx8/W/wLLVIuhTbhQmkXXo
	iz1XpRBszrK/TRtydBluNSnr8HR5pFDZ8kIx85ZL/gg==
X-Gm-Gg: Acq92OEfy7Y0Kio47aM3YNP9VRsqBH45cgrxpsLnr/9P3f1QTWKRMWvy3CSuCuaz+wP
	SL9ZAjKf61r6J7j1PcG8UZYVzenVBSj4ZrexHl5DDbwB4MtqrN9I4jKTCMDD5CJLmisbxaqojs2
	YzXtP1Oai9foIxwUVqelayNBZm8Xah05mGKpZg7I9XG/Lz3Z1r8Oow5WEn+xTz4ISCB4QrAMelF
	EIRhvpOC96N4GiYVr6q6QTozRMO0M/qAGCSwPDyhzpAhLCK+ONXcOe3reFpcXrFr2NW1LSfPq5y
	ZTp2tYF0qv6koqH4DCSkwg1hSF1i9w==
X-Received: by 2002:a05:7022:46:b0:137:8bc2:833 with SMTP id
 a92af1059eb24-1378bc20cc9mr667297c88.19.1779970622466; Thu, 28 May 2026
 05:17:02 -0700 (PDT)
MIME-Version: 1.0
References: <20260527121649.3365172-6-a.fatoum@pengutronix.de> <20260528105541.3899027-1-a.fatoum@pengutronix.de>
In-Reply-To: <20260528105541.3899027-1-a.fatoum@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu, 28 May 2026 15:16:50 +0300
X-Gm-Features: AVHnY4IA4McfvLR9nyMf3SA8c0-PNPyjBVbRbQKT3OwKaCGaZA9WuRk6cuslGv4
Message-ID: <CAP1tNvRtaNiFmQtni+cOHSaKV2LXuhwhesA4qAoYcuaJdbLJcg@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260528_051703_613797_3680203A 
X-CRM114-Status: GOOD (  13.64  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_GMAIL_RCVD,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH master v2] fixup! ARM64: place PBL malloc area at start of
 barebox proper malloc area
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Tested-by: Alexander Shiyan <eagle.alexander923@gmail.com>

=D1=87=D1=82, 28 =D0=BC=D0=B0=D1=8F 2026=E2=80=AF=D0=B3. =D0=B2 14:20, Ahma=
d Fatoum <a.fatoum@pengutronix.de>:
>
> ARM64: rockchip: atf: place PBL malloc area within barebox proper malloc =
area
>
> We should restrict pbl_malloc_init to PBL_MALLOC_SIZE as memsize[0] as a
> whole also contains non-malloc area parts like barebox proper location,
> the stack and the OP-TEE region if any.
>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/mach-rockchip/atf.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm/mach-rockchip/atf.c b/arch/arm/mach-rockchip/atf.c
> index f9dbc8b20c5a..8e10d6af445d 100644
> --- a/arch/arm/mach-rockchip/atf.c
> +++ b/arch/arm/mach-rockchip/atf.c
> @@ -173,7 +173,7 @@ static void rockchip_atf_load_bl31(void *fdt)
>         unsigned long bl31_ep;
>
>         mmu_early_enable(membase[0], memsize[0]);
> -       pbl_malloc_init(membase[0], memsize[0]);
> +       pbl_malloc_init(membase[0], PBL_MALLOC_SIZE);
>
>         bl31_ep =3D load_elf64_image_phdr(&bl31);
>
> --
> 2.47.3
>
>


