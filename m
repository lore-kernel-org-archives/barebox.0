Delivery-date: Wed, 04 Dec 2024 19:20:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tItzJ-0040vj-2d
	for lore@lore.pengutronix.de;
	Wed, 04 Dec 2024 19:20:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tItzJ-0003Bo-Pv
	for lore@pengutronix.de; Wed, 04 Dec 2024 19:20:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wX71i7DJcSdHIQCnmLB6LcbiyVXRrBfZcPw7lMyEMvU=; b=2V2npKJ6DZPSoQOrMOtr17B2cx
	l3nTqu4ocnjv+TUR1CeTU7GgrkRD3ojTX0wymV0vA0kkCvAqlqh69QM0+IQ3T20xdHxBpSSUzOaTl
	Ls0XNmMLVUxjqwtF/vqeAF478B3nqp+YYjzAqRMigIaXwDXVtqRMGsoSSaQNt0iP6x1mqbniRVkwK
	TcEAKHcXQTwpuFIKPzlA5W/M6Fxo50/9c3tgJjSAiLbhM96Op29uSTuGIpPufexc0VWpfIqeNMQtA
	FAZB9khzWpzKtDkf0QGyjDeq+3ORykgtndJClBfzYbAmmXLlcbQGAGhma0eTIM/te1926TNmp3avk
	y+/QIAQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tItyb-0000000DVuJ-1vOG;
	Wed, 04 Dec 2024 18:19:53 +0000
Received: from mail-pg1-x536.google.com ([2607:f8b0:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tItxw-0000000DVpB-0HUa
	for barebox@lists.infradead.org;
	Wed, 04 Dec 2024 18:19:13 +0000
Received: by mail-pg1-x536.google.com with SMTP id 41be03b00d2f7-7fd10cd5b10so69930a12.2
        for <barebox@lists.infradead.org>; Wed, 04 Dec 2024 10:19:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733336351; x=1733941151; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wX71i7DJcSdHIQCnmLB6LcbiyVXRrBfZcPw7lMyEMvU=;
        b=IjFrQiZjkVr1BTXAse3Hh6GTY0hgfsVFQDKtf6LQcp0Nke3G2dS41XTq0Fc4ABS3Q2
         rAZ/NWo+Vff/1zxVGsRsiau7MxbJuibelrJFtShAJxIo9J+mfFxVm/gRoKh5GqDyN58y
         ltJPHsTpQQf7Rm10bTh1hrEbVcT77pcm5WRC1c3LmWJ2eKdj2pUlzoHwOzWI27n+ZOcy
         qZER8TCbX8gsyzWf8xObHX5mbl7d9VCifp9lsY9xbQAkBqjSpNMxrkH6+lwLUv2T4/xQ
         cQPCkrzVbcnUyT3R5syfXlgc/bmKrO6wGAl/Cv3dccASO4GX9Kq0eLYnBmTlpUtVFWUs
         JCtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733336351; x=1733941151;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wX71i7DJcSdHIQCnmLB6LcbiyVXRrBfZcPw7lMyEMvU=;
        b=IFnF2oUN+O8oMitoz8e/EKQvpecSUcAi+JmMXp4IH2CCJ2mIfspmMUFaW0EZSW34vJ
         A8Fh0LzyOGYFl/mouw00Oh99uAL5V39O/UbrjeqDtgWBV+DjiwK50AvgP3WcLC48L6m8
         dD3GiPFjmPhN2rnSbtuW2iG/+cdsRxqMp7iFh3OiraA10Cc+EmexO3wdBi4V4Rpgru9T
         jUCNIA/8MCbI5PyDnj4GR5rBkR+C82W/ybzP23Rfd7vNixbLcPSmQ/GiO62l5XywvA6K
         Y9aBBnvdfQtHR+RrFUshJ9xBC+s1lC6fE1WmkbLDWsiXh/QioQLM933f2MTtMhciu23+
         raYg==
X-Gm-Message-State: AOJu0YxWWYvGaWrLL/lr+X33PnLnI2pVjfj+b0R/MrLNJ0UDOaRbhDnO
	8QXFbKHS6nRNUL90kuLzulEewo8K5rrWsgRx/rumQN1z9QqvRu/EPfP8rodWqqm/5XFOnqV2fH6
	Ew2EFVRyOAuj8t1mAvywsD0/2bVv/z/gF
X-Gm-Gg: ASbGncvSY/FD/RzkGc3G4/HULwjYrV5WpkhsFSrZMNTAX/DQIOt+2bEkj8VNJWns4mh
	uEX7OVRLtEkKRB3dFKgZaF17e+ok+yFlE
X-Google-Smtp-Source: AGHT+IGyZyNFC9941q4ASrTIcGNSfcZgsCeStS92ttQ+/MPfw2rw9QxUNUcNit1nVMcUMqxImcutnvnHvrPjcNCXGUQ=
X-Received: by 2002:a17:90a:d450:b0:2ee:d96a:5831 with SMTP id
 98e67ed59e1d1-2ef01259f11mr11307738a91.30.1733336350745; Wed, 04 Dec 2024
 10:19:10 -0800 (PST)
MIME-Version: 1.0
References: <20241204152625.17529-1-abdelrahmanyossef12@gmail.com>
In-Reply-To: <20241204152625.17529-1-abdelrahmanyossef12@gmail.com>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Wed, 4 Dec 2024 21:18:58 +0300
Message-ID: <CAP1tNvTf-pKpnO9S_Lo512WscXSVTeA+vxED9eQEtWo0Dof7zg@mail.gmail.com>
To: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>
Cc: barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241204_101912_101314_723A36C7 
X-CRM114-Status: GOOD (  14.69  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] partitions: efi: Check GPT header size against minimum limit
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello.

Maybe it's better to use sizeof(struct _gpt_header) ?

Thanks!

=D1=81=D1=80, 4 =D0=B4=D0=B5=D0=BA. 2024=E2=80=AF=D0=B3. =D0=B2 18:30, Abde=
lrahman Youssef <abdelrahmanyossef12@gmail.com>:
>
> In https://git.pengutronix.de/cgit/barebox/commit/?id=3Da9c6ad764144, we =
were
> checking if the GPT header size is exceeding the maximum limit.
>
> This is a follow-up patch to check if the header size is less than
> the minimum limit which is 92 as per this documentation
> https://uefi.org/specs/UEFI/2.10/05_GUID_Partition_Table_Format.html#id14
>
> Signed-off-by: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>
> ---
>  common/partitions/efi.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/common/partitions/efi.c b/common/partitions/efi.c
> index 8014579b67..a4e60c3c98 100644
> --- a/common/partitions/efi.c
> +++ b/common/partitions/efi.c
> @@ -190,7 +190,8 @@ static int is_gpt_valid(struct block_device *blk, u64=
 lba,
>                 goto fail;
>         }
>
> -       if (le32_to_cpu((*gpt)->header_size) > bdev_logical_block_size(bl=
k))
> +       if (le32_to_cpu((*gpt)->header_size) < 92 ||
> +        le32_to_cpu((*gpt)->header_size) > bdev_logical_block_size(blk))
>                 goto fail;
>
>         /* Check the GUID Partition Table CRC */
> --
> 2.43.0
>
>


