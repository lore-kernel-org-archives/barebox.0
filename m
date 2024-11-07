Delivery-date: Thu, 07 Nov 2024 13:22:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t91WV-005uvP-2p
	for lore@lore.pengutronix.de;
	Thu, 07 Nov 2024 13:22:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t91WW-00043k-EO
	for lore@pengutronix.de; Thu, 07 Nov 2024 13:22:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ghqu356uGiV3CNUREZh3OJleMFmCB5Y/D1/xS61ihcg=; b=3GBdxYzu+UH58CVFFemLFFjs10
	2B7dt6EYed3dC0q0KA86m5Oi/zN5pIWwuFEbq6fLQjcrcxacylg9WB4B5ePhjB9idY3zV5941ZHyG
	k6xBu13uFA+HpxuduNqoXNaGXJNdDUdD+6mcuefuEBKRKX6IarSzQolb3CE22OGm7eyY61DySAIti
	PrbnLBJke4SP4CU3s+BvgHrxPgueJeex9GUE94xgrDNuKaysnU5QBHXNU1sYhca+0EM17n/iUy9TV
	7hkdnOtTlzfYPuOx/Av4zGeM74KB5joYbWrBRbpVGeekFKuWo0lce+LHjb1wDYjx/A9hZgZLujoDe
	oayIVtTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t91Vq-00000006uCX-27om;
	Thu, 07 Nov 2024 12:21:22 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t91Lk-00000006slL-3LGW
	for barebox@lists.infradead.org;
	Thu, 07 Nov 2024 12:10:58 +0000
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-5c9404c0d50so1077852a12.3
        for <barebox@lists.infradead.org>; Thu, 07 Nov 2024 04:10:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730981454; x=1731586254; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ghqu356uGiV3CNUREZh3OJleMFmCB5Y/D1/xS61ihcg=;
        b=lwZ0JLmObF2NHlaqRyCQYnnO8o8TnOLEjVeVu3DuOl3G9xHeTmAWTR+nf0ArptgTHr
         qSK52ObPkQ2/FTIe+US/VU1mERJ0nlTGy/85K/dZLydC2EqGw6gRqs+QbG9Mp3tEuJrD
         UURUAY3dgDn9o8JWxZ5xzCGIFln2GXdphqkoyZpc5jAD9ryTBgSV+2XvRw/yTlrmxwUQ
         zafOGH0VG0km+4XEYi3ch44vBdq4XbtHKoS8Ck+e1KQR43r36rPls/TslIGYmXohXmg4
         v7QY3JoIgGcfkTBNi85FaPkuXLIcimyxDwU+K+SrujrtI6/yIt5EqR358ePrx2ra+iU6
         3fNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730981454; x=1731586254;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ghqu356uGiV3CNUREZh3OJleMFmCB5Y/D1/xS61ihcg=;
        b=Lcs08G2M5vGJuMW/328836CSVOfoh2pnNYc8oy/OiFpLVwE5GSWY4/GGbSh+7a1oRR
         htk1p7i/6cnjyYpeIi40kM9tY3wFctrwR65tSvy83BrZrMtSRyWlHZ/krGI8m/LC5wj9
         ikCExyl1VrOYH1l8+mnkz2o72xunGRRiKMUTG+Y5LPUBdamYclc+mH5udwEs3j4yBhZ0
         P+bnAbaD8ZolpJvzEts39CSkTbU5AzFPDKf2H+MMLG0i20sNwCsEd2tbzQZfPTCvGPx/
         Y3Doi5jmsg9Ig/w9J/LbIgTvHqS6sY4ioLIytMVdTa5dwqV/sZ4AtEvnYz+1tmQr8S1l
         vPGA==
X-Gm-Message-State: AOJu0YxZ5RYKhky6RU1hKZF42APYMTJZXysmyrW0V9sAnH/U1mUDxTIN
	TLJJDrl35BqVa29du3LaHGa8/xOdlqlwdM2S8XzjgXZFttlgUuKW666RnhYoFhg7Tq5yJriG/TX
	B/ox8YIIIoA2m4vjGLxZKOUboyh0h0ZxX
X-Google-Smtp-Source: AGHT+IHxcdrzYrJ5XNmWbZzbm802kcsP6LtEqmVLdhzUQZuLXuUsVnvjDOtMJwk8a8kbsC6naUclAFH3xp3+2i9qwVU=
X-Received: by 2002:a05:6402:2790:b0:5ce:fc3b:ce59 with SMTP id
 4fb4d7f45d1cf-5cefc3bcfc6mr2210300a12.22.1730981453977; Thu, 07 Nov 2024
 04:10:53 -0800 (PST)
MIME-Version: 1.0
References: <20241031124854.625174-1-abdelrahmanyossef12@gmail.com>
In-Reply-To: <20241031124854.625174-1-abdelrahmanyossef12@gmail.com>
From: AbdelRahman Yossef <abdelrahmanyossef12@gmail.com>
Date: Thu, 7 Nov 2024 14:10:42 +0200
Message-ID: <CABwgSGYrLnUz1EoHEehHARWe4KLBMCoct91La0UjCzB4Ko_Jcw@mail.gmail.com>
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241107_041056_877636_15605071 
X-CRM114-Status: GOOD (  25.83  )
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
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] partitions: efi: fix overflow issues while allocating gpt entries
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

This is just a quick reminder if the patch got missed for some reason.
Please let me know if there is anything that needs to get fixed.

Cheers,
Abdelrahman


On Thu, Oct 31, 2024 at 3:49=E2=80=AFPM Abdelrahman Youssef
<abdelrahmanyossef12@gmail.com> wrote:
>
> while parsting the GPT header in alloc_read_gpt_entries() the number
> of partitions can be large that multiplying it with the size of a single
> partition overflows 32-bit multiplication.
>
> we already enforce a MAX_PARTITION limit of 128 partitions in efi_partiti=
on(),
> so allowing any bigger value in alloc_read_gpt_entries() would fail,
> even if we fix the overflow.
>
> Therefore, we can enforce the limit strictly and treat any overflow as
> a failing condition.
>
> Signed-off-by: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>
> ---
>  common/partitions/efi.c | 36 ++++++++++++++++++++++++++++--------
>  1 file changed, 28 insertions(+), 8 deletions(-)
>
> diff --git a/common/partitions/efi.c b/common/partitions/efi.c
> index 9a04b7014d..8014579b67 100644
> --- a/common/partitions/efi.c
> +++ b/common/partitions/efi.c
> @@ -35,6 +35,25 @@ struct efi_partition {
>
>  static const int force_gpt =3D IS_ENABLED(CONFIG_PARTITION_DISK_EFI_GPT_=
NO_FORCE);
>
> +/**
> +* compute_partitions_entries_size() - return the size of all partitions
> +* @gpt: GPT header
> +*
> +* Description: return size of all partitions, 0 on error
> +*
> +* This is a helper function that compute the size of all partitions
> +* by multiplying the size of a single partition by the number of partiti=
ons
> +*/
> +static u32 compute_partitions_entries_size(const gpt_header *gpt) {
> +       u32 nb_parts, sz_parts, total_size;
> +
> +       nb_parts =3D min(MAX_PARTITION, le32_to_cpu(gpt->num_partition_en=
tries));
> +       sz_parts =3D le32_to_cpu(gpt->sizeof_partition_entry);
> +       if (check_mul_overflow(nb_parts, sz_parts, &total_size))
> +               return 0;
> +       return total_size;
> +}
> +
>  /**
>   * efi_crc32() - EFI version of crc32 function
>   * @buf: buffer to calculate crc32 of
> @@ -81,14 +100,12 @@ static u64 last_lba(struct block_device *bdev)
>  static gpt_entry *alloc_read_gpt_entries(struct block_device *blk,
>                                          gpt_header * pgpt_head)
>  {
> -       size_t count =3D 0;
> +       u32 count =3D 0;
>         gpt_entry *pte =3D NULL;
>         unsigned long from, size;
>         int ret;
>
> -       count =3D le32_to_cpu(pgpt_head->num_partition_entries) *
> -               le32_to_cpu(pgpt_head->sizeof_partition_entry);
> -
> +       count =3D compute_partitions_entries_size(pgpt_head);
>         if (!count)
>                 return NULL;
>
> @@ -156,7 +173,7 @@ static gpt_header *alloc_read_gpt_header(struct block=
_device *blk,
>  static int is_gpt_valid(struct block_device *blk, u64 lba,
>                         gpt_header **gpt, gpt_entry **ptes)
>  {
> -       u32 crc, origcrc;
> +       u32 crc, origcrc, count;
>         u64 lastlba;
>
>         if (!ptes)
> @@ -215,10 +232,13 @@ static int is_gpt_valid(struct block_device *blk, u=
64 lba,
>         if (!(*ptes =3D alloc_read_gpt_entries(blk, *gpt)))
>                 goto fail;
>
> +       /* Check the size of all partitions */
> +       count =3D compute_partitions_entries_size(*gpt);
> +       if (!count)
> +               goto fail_ptes;
> +
>         /* Check the GUID Partition Table Entry Array CRC */
> -       crc =3D efi_crc32((const unsigned char *)*ptes,
> -               le32_to_cpu((*gpt)->num_partition_entries) *
> -               le32_to_cpu((*gpt)->sizeof_partition_entry));
> +       crc =3D efi_crc32((const unsigned char *)*ptes, count);
>
>         if (crc !=3D le32_to_cpu((*gpt)->partition_entry_array_crc32)) {
>                 dev_dbg(blk->dev, "GUID Partitition Entry Array CRC check=
 failed: 0x%08x 0x%08x\n",
> --
> 2.43.0
>


