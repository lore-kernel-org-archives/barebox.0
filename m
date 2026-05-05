Delivery-date: Tue, 05 May 2026 14:45:27 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKF9U-001FG7-0i
	for lore@lore.pengutronix.de;
	Tue, 05 May 2026 14:45:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKF9P-0002Ga-1m
	for lore@pengutronix.de; Tue, 05 May 2026 14:45:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5HsmYLGscKOXNNxe9PBAO/Ccde/t6L9zyE+7UzPQ/Wk=; b=44ZRc1YWs6F1x/w7TYcrVTfA80
	u2ZsJs1UlJzcWs0pihkbl1i0n9fyaCHrO75zfO7ofaa8kHxgun4E1hy8bxohGcRj71G/k/k9mHTYa
	p9PaCmLtvrbr9Hu2uZ/5UPSD4obgfow9k8076pArx6jV7yjlsZCIE0bnodFDWEnHMfV25Nkj8eP9B
	4KqSNtXNknYPWKe+u97t5hPT8XPvPWQFuZkkHup7yG6AjJCWuiqWXJhxpeeKmW3QokRCbH3d/bj3N
	wrYxKX01fc9zCzUPCioieYu77bf9C4CvaWLB5etN9L7lv9NJ296DeiUtNSPR38NbBBVC9TKrqdtSK
	cwU8NYdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKF8k-0000000GDV2-09Zr;
	Tue, 05 May 2026 12:44:42 +0000
Received: from mail-dy1-x1329.google.com ([2607:f8b0:4864:20::1329])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKF8g-0000000GDTy-2hJL
	for barebox@lists.infradead.org;
	Tue, 05 May 2026 12:44:39 +0000
Received: by mail-dy1-x1329.google.com with SMTP id 5a478bee46e88-2b4520f6b32so7833725eec.0
        for <barebox@lists.infradead.org>; Tue, 05 May 2026 05:44:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1777985078; cv=none;
        d=google.com; s=arc-20240605;
        b=Xu1Fsri37XPDAoawBCpxJxRY4z1aaEh0KCYPF/XEt2PCmctlZd/aAo8ZycFiyLrs8d
         SOzop5wxnr9eZ4N8QAE4QuvrtYzl2NLeren/skT/3/HZrgeex4zG27deD6DihP6lYlqj
         pOeaYQdz2CHdvOwZWZvKCtZCZ5fLvp/hqcWtMSAb4+IxnbpJ0kUyVZwXaz5m0kNbich1
         Ft7qrR2QLt7uX3xTeC+FwpVG4wSPbwfXn81AvPGRS9wSXj9dpq5GCxJrRmTvzbMdJO7U
         kqq01+0sWH3M2CC52r+HWnMnnhdRiU8sZ/hvVkBw1bTQcoT/FDiexEyihjOrpsQjW2Nn
         BWBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=5HsmYLGscKOXNNxe9PBAO/Ccde/t6L9zyE+7UzPQ/Wk=;
        fh=7Yiba8wXx+vLUz4ud+g5VaEZLPel68E1Fvl1EGss/6I=;
        b=KQJ3sMiF3F0IwrY1xPJWFDUEVdnCFkiSBzxBIAvEkpnZivwviDJDHI6UkzRxHRu0ut
         HDSADGLJRxgJosJDHzPYSFm4xt5GFvfCix5ljWwY8oEVjLmSWwf62tyiTd+7Y39yOuVu
         xsttLOceyI5eirM+hl+388QZOmYXttaxBcNoK+QwJlwSYPG4yhbThY/Cl/dhbTIRU901
         ZJdeZIYGPEqIzPwvBAbwuGCVAZfGn1dIS5LcyIx/bilXF+DZg/508LrIVD1vLjyyhgZP
         yB9ujtr+1KRESPzVnpEAZBu1oqNnec70zmqQzB4ugAZoLx2ZaYEywncGfDP//VNEYulG
         JUzw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777985078; x=1778589878; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5HsmYLGscKOXNNxe9PBAO/Ccde/t6L9zyE+7UzPQ/Wk=;
        b=q2NAC2P/rmsRBPG9LcIAB4HhzQtuFASp7qnkCrX08QZH6AVZ7O3pcDfJxJq7T0y8FS
         rfcvPZypR0MnA+Tik2b+cWZtbGa7Lb8ZBDuJ81p6imbGbQpmBCNSbEANRYFAWtP+Ah7G
         Og1Mn7pw4hI9yzxrOBbMqwiqExapagE26oc6ZHV3Wmf4eXnxwoLuEz7IAxroOmAWr3z1
         yWYY3jeogs8lSgnkL6PMLR03a6CvX+2mkDOYiDsBpmJYfk76psuVWnuSej10QoaJOdhr
         I2NzTdY+oH1pThucrEmz2D7qbcUsXnQ/Ar9GP3s6fEgSqLE9DTa8g4ONYQ4NsMz3X4ay
         0/kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777985078; x=1778589878;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=5HsmYLGscKOXNNxe9PBAO/Ccde/t6L9zyE+7UzPQ/Wk=;
        b=mKHf6NHTwyrYjETNbCtbtb1YwuAoV/2lfUz0xr4MjqjyzcSYqKDH0DJIUZg5v7yQsH
         uQXoUJW9umpIP6rvy9FvGuGtWN9onXlrw3KhvcttSit97CEp2OfUim10BIlCF3tw+5Ag
         j4ZbTOr3JDQYQtPjLf9k29wzs1XQX85lewhXRx+0hNLSywRu/TYdsTlj+9IUUStYxEDq
         LaOC9dm0Nqq4LBCI0zNG6ZWPf4JSaQOummrpxktcZqtdkPA8J5tJm/mlTwvjWaMP/zXR
         7NDJ01dWHwuN6CMCArfTVlkVvJpNxOKD/9wrEV7rUnGOIFZ17qm3iWLGvfl0IfPBVbaR
         wkiQ==
X-Gm-Message-State: AOJu0YztvEdt9EX0NyDYTaLCy54vn2pgWFhCKo5aQloW5y2recLydWwa
	PwiTJzzB+FLf6FdvzYhpEoeSKACOQQjsZVyEehgY75zJZLnB2szvnCqfyP2kmdiRM+YortINuWR
	haOwNhRq8s3RzFkaeXXFVXM+GT8EuovA=
X-Gm-Gg: AeBDievQFJhHW46uZ7oDcPcS65cZVhHYS6fTHMt+wkGh6m1boLWuRY40x8OuF5bcXfz
	9V+w+kFi+cRZpTZHMgglaKlTsAPIJpCFykgmZG/avhc7d6dllGxxameR5uKqokoI27BlZrHvKgs
	oaAPxf/37J8Rhst7l4AXnZ8/2oop9OHTcHXJU4N5dW0BWcDKRPZ7c9Ny7+G+LjKlr/Mzrs+G3Gq
	Laqs8qp1GY5qHWL8Ip95Gyqz2/CBKqarJj6gl34YKDQTkXLJlNdhhA2QkfPuvENFp177nFKA1kM
	lNZOqXo+9Z3ubYhfD6o=
X-Received: by 2002:a05:7022:43a4:b0:128:cf5c:5356 with SMTP id
 a92af1059eb24-12dfd7d1929mr7646063c88.5.1777985077599; Tue, 05 May 2026
 05:44:37 -0700 (PDT)
MIME-Version: 1.0
References: <20260428132811.3691086-1-eagle.alexander923@gmail.com>
 <c3a17e51-3624-4215-b352-6dce10e1a1b4@pengutronix.de> <CAP1tNvShGMqgQ+MHq46n0q_VhqscNz3wNbgnCDaF20n=T-M_aA@mail.gmail.com>
 <4e34c9f9-816a-4242-a324-0f23505e9cc8@pengutronix.de> <CAP1tNvQkpV-UprEMqx16vbxtmCCLGpQi3enhSc07rQixU+TrtA@mail.gmail.com>
 <32447f15-ff62-4215-a845-376f28261b87@pengutronix.de>
In-Reply-To: <32447f15-ff62-4215-a845-376f28261b87@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Tue, 5 May 2026 15:44:26 +0300
X-Gm-Features: AVHnY4LjW8lKrZ4SuszBo5Fq2Exugat_kIHVbsPqT0E-g8dPQuFl2Ut99K9j2hg
Message-ID: <CAP1tNvRkGxsKGsvGhTdcM9zL_y46wWOS58tVCLwyxLANXVjenw@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260505_054438_685675_487C7484 
X-CRM114-Status: GOOD (  24.74  )
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
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/2] Add support for extlinux.conf
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

barebox@Diasom DS-RK3568-SOM-EVB:/ global
* allow_color: 1
  arch: arm64
  autoboot: countdown (values: "countdown", "abort", "halt", "menu", "boot"=
)
  autoboot_abort_key: <NULL>
* autoboot_timeout: 2
* boot.default: default
  boot.watchdog_timeout: 0
* bootm.appendroot: 1
  bootm.dryrun: 0
  bootm.earlycon: 0
  bootm.image:
  bootm.image.loadaddr:
  bootm.initrd:
  bootm.initrd.loadaddr:
  bootm.oftree:
  bootm.provide_hostname: 0
* bootm.provide_machine_id: 1
  bootm.root_dev:
  bootm.root_param: root
  bootm.tee:
  bootm.verbose: 0
  bootm.verify: available (values: "none", "hash", "signature", "available"=
)
  console.ctrlc_allowed: 1
  dhcp.bootfile:
  dhcp.client_id:
  dhcp.client_uuid:
  dhcp.hostname:
  dhcp.oftree_file:
  dhcp.option224:
  dhcp.retries: 20
  dhcp.rootpath:
  dhcp.tftp_server_name:
  dhcp.user_class:
  dhcp.vendor_id: barebox
  endianness: little
  env.autoprobe: 1
  fastboot.bbu: 0
  fastboot.max_download_size: 134217728
  fastboot.partitions:
  firmware.path: /env/firmware
  hostname: diasom
  linux.bootargs.base:
  linux.bootargs.console: console=3DttyS2,1500000n8
  linux.bootargs_append: 0
  linux.rootnfsopts: v3,tcp
  log_max_messages: 32768
  loglevel: 7
  machine_id: 181af2816b4c6b0aef77068e0ccc69ad
  model: Diasom DS-RK3568-SOM-EVB
  net.domainname:
  net.fetchdir: /mnt/tftp
  net.gateway: 0.0.0.0
  net.ifup_force_detect: 0
  net.nameserver: 0.0.0.0
  net.server:
  nfs.port: 0
  of.kernel.add_machine_compatible:
  of.overlay.compatible:
  of.overlay.filter: pattern compatible
  of.overlay.path:
  of.overlay.pattern: *
  of_partition_binding: adaptive (values: "new", "legacy",
"donttouch", "adaptive")
  partitions.first_usable_lba: 16384
  system.partitions:
  system.reset: unknown (values: "unknown", "POR", "RST", "WDG",
"WKE", "JTAG", "THERM", "EXT", "BROWNOUT")
  system.reset_instance: 0
  tftp.windowsize: 1
  usbgadget.acm: 0
  usbgadget.dfu_function:
* user: none
  version: 2026.04.0-00765-gd3f78fc00c40-dirty
barebox@Diasom DS-RK3568-SOM-EVB:/ global.boot.default=3Dmmc1.2
barebox@Diasom DS-RK3568-SOM-EVB:/ boot
ext4 ext40: EXT2 rev 1, inode_size 256, descriptor size 64
Booting entry 'extlinux: linux'
extlinux: Booting extlinux label 'linux'
Adding "root=3D/dev/mmcblk1p3" to Kernel commandline

Loading ARM aarch64 Linux/EFI image '/mnt/mmc1.2/boot/extlinux/../vmlinuz'
Camera IMX662 detected.
commandline: console=3DttyS2,1500000n8 root=3DLABEL=3DROOT ro
systemd.unit=3Dsetup.target quiet splash  root=3D/dev/mmcblk1p3
systemd.machine_id=3D181af2816b4c6b0aef77068e0ccc69ad
Loaded kernel to 0x0a400000, devicetree at 0x000000000fb49000
nv variables modified, saving them
I/TC: Secondary CPU 1 initializing
I/TC: Secondary CPU 1 switching to normal world boot
I/TC: Secondary CPU 2 initializing
I/TC: Secondary CPU 2 switching to normal world boot
I/TC: Secondary CPU 3 initializing
I/TC: Secondary CPU 3 switching to normal world boot

Now it works!

=D0=B2=D1=82, 5 =D0=BC=D0=B0=D1=8F 2026=E2=80=AF=D0=B3. =D0=B2 15:22, Ahmad=
 Fatoum <a.fatoum@pengutronix.de>:
>
> Hello Alexander,
>
> On 5/5/26 2:19 PM, Alexander Shiyan wrote:
> > barebox@Diasom DS-RK3568-SOM-EVB:/ global
> > * bootm.~appendroot: true
>
> This should be bootm.appendroot: 1.
>
> > bootm.~appendroot: true, but now is ever not added to the cmdline.
>
> The tilde is just an implementation detail in common/bootm.c. You should
> just global.bootm.appendroot as before.
>
> Thanks,
> Ahmad
>
> >
> > =D0=B2=D1=82, 5 =D0=BC=D0=B0=D1=8F 2026=E2=80=AF=D0=B3. =D0=B2 13:49, A=
hmad Fatoum <a.fatoum@pengutronix.de>:
> >>
> >> Hello Alexander,
> >>
> >> On 5/5/26 12:47 PM, Alexander Shiyan wrote:
> >>> Hello Ahmad.
> >>>
> >>> ...
> >>>>> +     if (e->append) {
> >>>>> +             char *append;
> >>>>> +
> >>>>> +             /*
> >>>>> +              * The same rootfs image may be launched from eMMC or=
 SD card.
> >>>>> +              * Remove any hardcoded root=3D parameter from "appen=
d" to avoid
> >>>>> +              * conflicts, then let barebox automatically add the =
correct
> >>>>> +              * root=3D (via global.bootm.appendroot) based on the=
 boot device.
> >>>>> +              */
> >>>>> +             if (data.appendroot)
> >>>>> +                     append =3D remove_param(e->append, "ROOT=3D")=
;
> >>> ...
> >>>> I thus have a question to you: What happens if you drop remove_param=
()
> >>>> completely? Sure we will have two root=3D, but the later gets preced=
ence,
> >>>> so your use case would continue to work without giving users a wrong
> >>>> expectation.
> >>>
> >>> Yes, the second one takes priority.
> >>> The second one is the one added via extlinux.conf APPEND option.
> >>> In our case we need the first parameter, i.e. which comes from barebo=
x
> >>> when global.bootm.appendroot is toggled on.
> >>
> >> Ack. Please check the series I Cc'd you on, which ensures that
> >> global.bootm.appendroot applies _after_ extlinux.conf APPEND.
> >>
> >> Thanks,
> >> Ahmad
> >>
> >>>
> >>> Thanks!
> >>>
> >>
> >> --
> >> Pengutronix e.K.                  |                             |
> >> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
> >> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
> >> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
> >>
> >
>
> --
> Pengutronix e.K.                  |                             |
> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
>


