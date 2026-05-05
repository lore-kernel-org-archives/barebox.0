Delivery-date: Tue, 05 May 2026 14:20:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKEla-001Ewn-2K
	for lore@lore.pengutronix.de;
	Tue, 05 May 2026 14:20:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKElV-0000Df-Gh
	for lore@pengutronix.de; Tue, 05 May 2026 14:20:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mnf75ipEjfOTMNzRQkLhyEJ+cxPbpmDLpGsZ4kudo+Y=; b=HRUtYYZ2kUWhsofaXkU4BMCpJf
	8hdbYXd9D2RJFDeJ65sYBraznV2TRdTsX446vOCNsaHi7ydZtC9xTBC7rEFd7fwvQMuukeUvkIe3M
	Gf45Vjq2Ls0cBnW+Bk4B4OmpLbnyDCfrXj/+oGkxAWE5jfmyPLfd6AT7WsFqcNg3rTmpUMmeYqakU
	fiBlvmtsjehIan47BsNw1ATXcpI7vs51+qhVfN/EF2xAfXjoI3Ht813rJi/k0SVadXDsQPaCpa9cq
	YKfFdFu4KDBilqKrWKF5B/gGZ8/Zuu9BNSSIToT4jgcvvaRyvyIWPaU6XhVterDHteuhDbCej/Xy7
	tK9d5Z4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKEka-0000000G9qD-1zts;
	Tue, 05 May 2026 12:19:44 +0000
Received: from mail-dl1-x1229.google.com ([2607:f8b0:4864:20::1229])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKEkY-0000000G9pn-2sxF
	for barebox@lists.infradead.org;
	Tue, 05 May 2026 12:19:44 +0000
Received: by mail-dl1-x1229.google.com with SMTP id a92af1059eb24-12c19d23b19so7473402c88.0
        for <barebox@lists.infradead.org>; Tue, 05 May 2026 05:19:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1777983582; cv=none;
        d=google.com; s=arc-20240605;
        b=NGQHW7glw37f4j+hvMgmm5UI79V2Ur6cfdWDV8xTex01FHV3k/z7O0kTO8w/vueKX9
         gJHE4Z6hv2m/je42dESRq7SJdCQO1eanSIYZSbdFXPbpKhRqUtoaSu54dXBw7XryJVsf
         DWbquy9k9VbXE7l+fFO52nCQCIvupS2T6bIqLr5PgLzfoThpEA1ZWNvkvjftp5eJ4cvO
         K9TBkap0rMTGhSc3k7RiyraplJo5u5GbkdZQeaoxpdKoRvDBVHI7g9BbIE2Rdn0//46Z
         LsrhJRLjBOIN8GHt95LAEm0sux7KGcm9TGnPcOOoFCAbUs4tS+fBq+IiMM3B9ShjziL0
         dFOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=mnf75ipEjfOTMNzRQkLhyEJ+cxPbpmDLpGsZ4kudo+Y=;
        fh=7Yiba8wXx+vLUz4ud+g5VaEZLPel68E1Fvl1EGss/6I=;
        b=eSaPcjfa5xwGZqEzNnJrNDt2Ia/qcT9UkWdIrvMzx41+M3LmJKs4UGv5y2gMJEflCg
         GDrsYNR1lQfAcZ+8UClDhkxx1oP+5piSMBq0YMXOzlm4BxeWFu1IT7zp5v2JaNvGKF4D
         gocu5AeLquq786kePr7O2V71IY0hQk5VPnCI1l3r86fEVVFLTXQod6c2HQ5rVeo0/BbI
         boKUrIqdOrYCW6YBe4bWTN4SsEnx1Oqhl5upPubItdGLB4P8NiKr4ORU5N9Ci5+vAYQ5
         9Xkg5XgSgEu/jixwja+pKQ4WBwQSIaCJsCI/dVzVMc0iUyckMZrTDlNmuNI/Da8YXJmV
         TYqQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777983582; x=1778588382; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mnf75ipEjfOTMNzRQkLhyEJ+cxPbpmDLpGsZ4kudo+Y=;
        b=IUo1RBw2vjafe+WqacUytgjoCbd5nD/NdKoP2FUPPSaTyrOFdc4a0q9ZDtJWhQr2x1
         YrQR9g7U2FaOeSfzfrwWOplowwRtOL21Aoh/vjoYTrxaO7yUnvOSu0B6XN+onbd+N9zr
         R7+HtW1gM8jaJFwnu3CrHinNZmp+s7wqrgbyYlsuDC8Xtu94NCQxyvzafAkzvRAVDaTA
         xXOrkudDMNSxxkv8hBSuR1g78gZOS9GKTV4u7dLFvEPMHy0Ec8Lpc2GsuaGvBGFEq5do
         75DMm9EvruqsYcKwf0VQPQGie9cbPTtpWOuVNcHFMqwAX9BWSv9xJc+OOQb7vwwnoYGy
         QoFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777983582; x=1778588382;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=mnf75ipEjfOTMNzRQkLhyEJ+cxPbpmDLpGsZ4kudo+Y=;
        b=RXq5ciMfdbymq83i6zbz/bMCBYg5kXKZAu74NSJz7yAVFvuGwQGocXNnAkRb4SRt5b
         UWDAb7EkQgmhLwlhJCc7rdVsOe38Y/L+DYd9KaxXT7KKheZcaIVapjMD6UEhqZJL1daQ
         b+p65/Pn7ZPp1lCgDKG3sdVGWwQa8X65UWO6VXP5AJHpVJurpRlWqPzaWc9VnLFQ7Whs
         E5jI/U2atl+2i8H1WWAj+JOtC2aGK6o8Uvq+sPEVXzxEnbypxrJqsV35cAr5mr89rSpu
         cCO27v56Fjom8nIQL/TIuQYDSxisQKq6HOOCP/v9kWMEs7VCaFliNZ4a20yL5oA6grOc
         CZfA==
X-Gm-Message-State: AOJu0YwGrIER8WU7EOajhYwE5wvjU50DBPafu3nCUBPzDDe8OuFua9jy
	797laEyQTg9b949xFYdbW0U5y/W9mIhKewAeMHn2xr2v3Hi7mlJegF7QWvhoVhXlJhro5zJEncf
	aeOOQN7iZPlIAgQzH5zDfPpdM0gG14HXnFJcmA+fszx0j
X-Gm-Gg: AeBDievoTMbty81chLtcskGKdaPXhPM04UbMVIQNJiZbJic0xjfqGX8OFCrQ3KGgNAg
	1s9U/PynLUSscMptk4QDxZ+31I+GGYbr0ZOs/TYbDGQ85aIamaMNAcyMenNwQkP5lHIQYzfbYrM
	wAlkaH+CHr5HDcp3i2txx3S/7nRj1wj9A+INsT+xrBdjMJkMePkMUVNNwDOLV0yR+qeshDlJ5pR
	IYw3CjtreFpUfZpZTacURduDVvoN4UNU176nE+k7STSLV0EHOq7OqnufU8OigyePcsfyIXFrj6M
	bcxOR1F3LlY0qLq5CDWjsDojnl0PiQ==
X-Received: by 2002:a05:7022:404:b0:128:d494:a1ab with SMTP id
 a92af1059eb24-12dfd7c9fc3mr6010088c88.15.1777983581589; Tue, 05 May 2026
 05:19:41 -0700 (PDT)
MIME-Version: 1.0
References: <20260428132811.3691086-1-eagle.alexander923@gmail.com>
 <c3a17e51-3624-4215-b352-6dce10e1a1b4@pengutronix.de> <CAP1tNvShGMqgQ+MHq46n0q_VhqscNz3wNbgnCDaF20n=T-M_aA@mail.gmail.com>
 <4e34c9f9-816a-4242-a324-0f23505e9cc8@pengutronix.de>
In-Reply-To: <4e34c9f9-816a-4242-a324-0f23505e9cc8@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Tue, 5 May 2026 15:19:29 +0300
X-Gm-Features: AVHnY4KcttlkrAwTMDBNlyUJICO8gQ4jdDlFeD3VkJSznmYNeU6n5BSfWRkVcD8
Message-ID: <CAP1tNvQkpV-UprEMqx16vbxtmCCLGpQi3enhSc07rQixU+TrtA@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260505_051942_736379_32A396DE 
X-CRM114-Status: GOOD (  22.44  )
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
Subject: Re: [PATCH v2 1/2] Add support for extlinux.conf
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Ahmad.

barebox@Diasom DS-RK3568-SOM-EVB:/ global
* allow_color: 1
  arch: arm64
  autoboot: countdown (values: "countdown", "abort", "halt", "menu", "boot"=
)
  autoboot_abort_key: <NULL>
* autoboot_timeout: 2
* boot.default: default
  boot.watchdog_timeout: 0
  bootm.appendroot: 0
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
* bootm.~appendroot: true
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
barebox@Diasom DS-RK3568-SOM-EVB:/ boot -d
ext4 ext40: EXT2 rev 1, inode_size 256, descriptor size 64
Booting entry 'extlinux: linux'
extlinux: Booting extlinux label 'linux'

Loading ARM aarch64 Linux/EFI image '/mnt/mmc1.2/boot/extlinux/../vmlinuz'
Camera IMX662 detected.
commandline: console=3DttyS2,1500000n8
systemd.machine_id=3D181af2816b4c6b0aef77068e0ccc69ad root=3DLABEL=3DROOT r=
o
systemd.unit=3Dsetup.target quiet splash
Loaded kernel to 0x0a400000, devicetree at 0x000000000fb49000
Dryrun. Aborted

bootm.~appendroot: true, but now is ever not added to the cmdline.

=D0=B2=D1=82, 5 =D0=BC=D0=B0=D1=8F 2026=E2=80=AF=D0=B3. =D0=B2 13:49, Ahmad=
 Fatoum <a.fatoum@pengutronix.de>:
>
> Hello Alexander,
>
> On 5/5/26 12:47 PM, Alexander Shiyan wrote:
> > Hello Ahmad.
> >
> > ...
> >>> +     if (e->append) {
> >>> +             char *append;
> >>> +
> >>> +             /*
> >>> +              * The same rootfs image may be launched from eMMC or S=
D card.
> >>> +              * Remove any hardcoded root=3D parameter from "append"=
 to avoid
> >>> +              * conflicts, then let barebox automatically add the co=
rrect
> >>> +              * root=3D (via global.bootm.appendroot) based on the b=
oot device.
> >>> +              */
> >>> +             if (data.appendroot)
> >>> +                     append =3D remove_param(e->append, "ROOT=3D");
> > ...
> >> I thus have a question to you: What happens if you drop remove_param()
> >> completely? Sure we will have two root=3D, but the later gets preceden=
ce,
> >> so your use case would continue to work without giving users a wrong
> >> expectation.
> >
> > Yes, the second one takes priority.
> > The second one is the one added via extlinux.conf APPEND option.
> > In our case we need the first parameter, i.e. which comes from barebox
> > when global.bootm.appendroot is toggled on.
>
> Ack. Please check the series I Cc'd you on, which ensures that
> global.bootm.appendroot applies _after_ extlinux.conf APPEND.
>
> Thanks,
> Ahmad
>
> >
> > Thanks!
> >
>
> --
> Pengutronix e.K.                  |                             |
> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
>


