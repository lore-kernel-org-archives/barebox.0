Delivery-date: Fri, 14 Nov 2025 17:50:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vJx0V-000yVL-25
	for lore@lore.pengutronix.de;
	Fri, 14 Nov 2025 17:50:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vJx0U-0001FC-Mz
	for lore@pengutronix.de; Fri, 14 Nov 2025 17:50:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AZ4AIKqyXQIUBaK/4k8BbjaIl+9vt7GuzH8vY41wktk=; b=DtHRKdOG2YV15jE8dm8sbjlbLr
	sepvI7RFuQQA2q3I4Q1hs0GkBrluL2ruHQ5JUZJdWV6FnP2YM/95YRhSK+jObtn88fHQ2ueKkrSBC
	sPBxpZzYZLTBU+dJpEAZ0kWP6+q3Ef06yK5FVAM48oLl44sXC34sYM8H4qj5oN7PdlpyN5MtWCSy1
	O5r/PZdpe1Ox5U5Nqo3qrofLO4j97vkIWpB4k0R4ZnRRkMQmgLdMJ5fxr1TLoyP6hgfGNmTxQbiEm
	Hdvr4Taxv8Y76MITu2+k3Ro10ieqvI17xi0ArnpfaWiIQVWMTbsV7zS/PSBXZo7atDFKz+XDei5L4
	/w70DvOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJwzy-0000000ClYV-0Sej;
	Fri, 14 Nov 2025 16:50:10 +0000
Received: from mail-pg1-x52b.google.com ([2607:f8b0:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJwzv-0000000ClXi-3329
	for barebox@lists.infradead.org;
	Fri, 14 Nov 2025 16:50:09 +0000
Received: by mail-pg1-x52b.google.com with SMTP id 41be03b00d2f7-b55517e74e3so1784398a12.2
        for <barebox@lists.infradead.org>; Fri, 14 Nov 2025 08:50:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763139007; x=1763743807; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AZ4AIKqyXQIUBaK/4k8BbjaIl+9vt7GuzH8vY41wktk=;
        b=IuJpqdDmaouJknVFvFBSzJY7aJ07wfZ3xvL90nnOyiuO8HCS5g54dEHRbLZ+VTZUgg
         1h/2YSB8bY48t8ABvE4433XjQa+myQvFHDBZuJ2l6UJz4ubysR8RBSlSi8IQC+zWAmtH
         4f/0pMwajT7V8TC8u/WX6442ylXU3rJ8wM0N2Uu5xhfMuEi4KWlPm+mVR8X9uzHUSHYv
         2CuStinMAfE1//gZ/yaK3BtrIDcnGnKjYIUUuIe46MGg4LkbOgWgti67Qp4u/HW/YPYk
         kSzHHHvoBhQsamnLsN58o0gIlYKT1FGs3Bz/QFOQhTe9sDMN0kxLyflUsEGTUxAYIZoH
         6Zxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763139007; x=1763743807;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=AZ4AIKqyXQIUBaK/4k8BbjaIl+9vt7GuzH8vY41wktk=;
        b=JU+mwlB2NEFXnGxH7U2wz3jc5l/oIXOAfQZWZm1c9o080ShD3QHOFVVKZK8RpF8MoF
         YoyslTZMqmp/iIDR8e3/MrC0urZ7TQeTIShlkKPyj9TVmFsDBI2XEI/HoQU4axjm2zcg
         VwPm+qWVImLMaSG6gcesYozlie/Mf2MVJ4cluAR+J5R48nRbhIvJo02XLFZYUN9pRpxm
         mpw6Z416cyHdEr6xMh27IlTDL0fI1Dq+VFy6Ry8boqHuj6uhlbmUWDGrnkuHP8jU8K1v
         MBCpUNRoDk6XHX5s7hJZrd2+r718L4rzddPvONibHbpyhXOtfAAV5+iqzTzBmjguScMB
         6+ww==
X-Gm-Message-State: AOJu0YzSu/lyTH6MvaHC5fWgNhPBXaiPMPOZ01k/ZCiVcJNlq0HaPJmX
	jpJOO3SiuNhJ4LTz3NaLLlsjPbxnZXEbxzO6NK8oTWPOS+nNAvFw7eeAZoNgf5vSpxbrHFam/u4
	KKAJofsD/d3314WnFAM7ZzBzKYB8kVienlx56D14=
X-Gm-Gg: ASbGnctne3EU1su2/OKYUit24oSRmjMp8m2T7V2+S0E1RExZKRCeKd3qP6KaN8u2pRS
	79XKHgGa+50Qg6hCQKaY9mN8YqM2kn4zUel1qoVeH9/fuDcWj27FRQkV4p5TES0G2Y6P5SkZ/fE
	SPS5xdATR8ZbHh/bcsAqgqKjyKl56RhFcdg3GfepRopzTybGjBk/lFm6DyNMaP0Bot8JG6fTt15
	zaoJNnWpwQkvEXpSCRqP+ZNJXFTiIoRJdT8fn3gWhHSHDLMW78qpIDB0VOC7LJGt4BLj8fFnsqx
X-Google-Smtp-Source: AGHT+IF4pxDFbEME9cNuR+fQj9fiTt0GBIX6Wtq2rdpzLVQvBG5XdqxMGyugO9lBkDt4MYbLIHqltnW9I24tsbMSkuE=
X-Received: by 2002:a05:7301:1528:b0:2a4:5f3d:34f2 with SMTP id
 5a478bee46e88-2a4abd77d28mr1081846eec.34.1763139006571; Fri, 14 Nov 2025
 08:50:06 -0800 (PST)
MIME-Version: 1.0
References: <20251114050034.186683-1-chalianis1@gmail.com> <20251114101100.4dpxj3vztsdmezqg@pengutronix.de>
 <865dceb4-1dae-49f1-b8cc-36dfd24746dd@pengutronix.de> <CAL+1fyCeZdxMhpDNYjpvbteGre+mgDi0pRyUn_24wUkKJa_+4w@mail.gmail.com>
In-Reply-To: <CAL+1fyCeZdxMhpDNYjpvbteGre+mgDi0pRyUn_24wUkKJa_+4w@mail.gmail.com>
From: anis chali <chalianis1@gmail.com>
Date: Fri, 14 Nov 2025 11:49:55 -0500
X-Gm-Features: AWmQ_bm-J4S0nMOQkESjT_fVs-cwyHpnZ8_I-Lwl8DY_a3QUjw5z2ulv2Nvf_2I
Message-ID: <CAL+1fyD1DN+6TLmJKKNaMHeLccTXH_VENRQvEm9LMLrDhLzw0A@mail.gmail.com>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>, Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251114_085007_794755_D66E4C70 
X-CRM114-Status: GOOD (  34.92  )
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
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_NONE,WEIRD_QUOTING autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] blspec: derive root prefix from blspec config path
 instead of mountpoint
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Marco,

As Ahmad mentioned this will serve to boot blspec files directly, a
practical use case is when using ostree without separating the /boot
from the rest of rootfs in one partition, in that case the loader is
under /boot. And inside the same entry directory they put two configs.
This force the user to use the full config path to boot specific
system. Without this patch the boot fails because the path to the
kernel is broken because it puts only the prefix with the mount point
and not mount point/boot/....


Thanks.

Anis C.

Le ven. 14 nov. 2025 =C3=A0 10:58, anis chali <chalianis1@gmail.com> a =C3=
=A9crit :
>
> Hi Marco,
>
> As Ahmad mentioned this will serve to boot blspec files directly, a pract=
ical use case is when using ostree without separating the /boot from the re=
st of rootfs in one partition, in that case the loader is under /boot. And =
inside the same entry directory they put two configs. This force the user t=
o use the full config path to boot specific system. Without this patch the =
boot fails because the path to the kernel is broken because it puts only th=
e prefix with the mount point and not mount point/boot/....
>
>
> Thanks.
>
> Anis C.
>
> Le ven. 14 nov. 2025, 08:51, Ahmad Fatoum <a.fatoum@pengutronix.de> a =C3=
=A9crit :
>>
>> Hello Marco,
>>
>> On 11/14/25 11:11 AM, Marco Felsch wrote:
>> > Hi,
>> >
>> > thanks for your patch.
>> >
>> > On 25-11-14, chalianis1@gmail.com wrote:
>> >> From: Chali Anis <chalianis1@gmail.com>
>> >>
>> >> Add get_prefix_path() to compute the filesystem prefix of a BLSpec
>> >> entry by locating the deepest /loader/entries/ component in the
>> >
>> > What exactly do you mean by "deepest"? The specification says that the
>> > entries should be under /loader/entries of $BOOT or $EFI partition [1]=
.
>> >
>> > There is also a note:
>> > """""""""
>> > In all cases the /loader/entries/ directory should be located directly
>> > in the root of the ESP or XBOOTLDR filesystem. Specifically, the
>> > /loader/entries/ directory should not be located under the /EFI/
>> > subdirectory on the ESP.
>> > """""""""
>> >
>> > So searching in subdirs seems not to be spec compatible. May I ask why
>> > your loader entries are within some subdir in the first place?
>>
>> I was also confused when Anis first mentioned this on IRC, but the
>> missing piece of information was that get_mounted_path() (and now
>> get_blspec_prefix_path()) is only used when booting a specific
>> bootloader spec config by name, e.g.,
>>
>> bootm /mnt/.../loader/entries/my.conf
>>
>> as opposed to:
>>
>> bootm /mnt/.../
>>
>>
>> In that case, it makes sense to not go up to the first mount, but just
>> take the loader/entries the file is inside.
>>
>> I believe this can also be useful for testing: include a loader/
>> directory in the barebox environment and then run tests over it directly
>> without having to copy /env/loader to /loader first, because that's the
>> file system root.
>>
>> Cheers,
>> Ahmad
>>
>> >
>> > Regards,
>> >   Marco
>> >
>> > [1] https://uapi-group.org/specifications/specs/boot_loader_specificat=
ion/#type-1-boot-loader-specification-entries
>> >
>> >> configuration path. This ensures correct rootpath extraction for
>> >> nested loader directories, mixed path layouts, duplicate segments,
>> >> and paths without valid loader entries. If no prefix is found,
>> >> fall back to get_mounted_path().
>> >>
>> >> Signed-off-by: Chali Anis <chalianis1@gmail.com>
>> >> ---
>> >>  common/blspec.c | 25 ++++++++++++++++++++++++-
>> >>  1 file changed, 24 insertions(+), 1 deletion(-)
>> >>
>> >> diff --git a/common/blspec.c b/common/blspec.c
>> >> index 80ebe256ceaf..ad94d4d6be64 100644
>> >> --- a/common/blspec.c
>> >> +++ b/common/blspec.c
>> >> @@ -391,6 +391,29 @@ static bool entry_is_match_machine_id(struct bls=
pec_entry *entry)
>> >>      return ret;
>> >>  }
>> >>
>> >> +/*
>> >> + * Return the path prefix before the deepest "/loader/entries/" comp=
onent
>> >> + * in @configname. Falls back to the mounted path if none is found.
>> >> + */
>> >> +static char *get_blspec_prefix_path(char *configname)
>> >> +{
>> >> +    char *p;
>> >> +    char *scfg =3D configname;
>> >> +    char *save =3D NULL;
>> >> +
>> >> +    while ((p =3D strstr(scfg, "/loader/entries/")) !=3D NULL) {
>> >> +            if (p - configname > 0)
>> >> +                    save =3D p;
>> >> +
>> >> +            scfg =3D p + 1;
>> >> +    }
>> >> +
>> >> +    if (save && save - configname > 0)
>> >> +            return xstrndup(configname, save - configname);
>> >> +
>> >> +    return get_mounted_path(configname);
>> >> +}
>> >> +
>> >>  static int __blspec_scan_file(struct bootentries *bootentries, const=
 char *root,
>> >>                            const char *configname)
>> >>  {
>> >> @@ -404,7 +427,7 @@ static int __blspec_scan_file(struct bootentries =
*bootentries, const char *root,
>> >>      if (IS_ERR(entry))
>> >>              return PTR_ERR(entry);
>> >>
>> >> -    root =3D root ?: get_mounted_path(configname);
>> >> +    root =3D root ?: get_blspec_prefix_path(configname);
>> >>      entry->rootpath =3D xstrdup_const(root);
>> >>      entry->configpath =3D xstrdup_const(configname);
>> >>      entry->cdev =3D get_cdev_by_mountpath(root);
>> >> --
>> >> 2.49.0
>> >>
>> >>
>> >>
>> >
>>
>> --
>> Pengutronix e.K.                  |                             |
>> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
>> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
>>


