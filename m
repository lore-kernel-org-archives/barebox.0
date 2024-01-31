Delivery-date: Wed, 31 Jan 2024 12:04:27 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rV8OI-00Dbmo-02
	for lore@lore.pengutronix.de;
	Wed, 31 Jan 2024 12:04:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rV8OG-0001a7-Lk
	for lore@pengutronix.de; Wed, 31 Jan 2024 12:04:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:Subject:
	Message-ID:Date:From:MIME-Version:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=MwyJTJkjgF5F4YGA/0bBynSAwFfeNaLTcwPplFJFCUg=; b=1HYOkSfu9EIvn3HzFdW8P7JSk5
	Ftm9rC8cvLAEY09vZgk0v3DBEiGsqT75YP9rifCBgYM2wS5Wpdb6Tv7wGeSkw5reAl6PVvJ3zMBhx
	V1Q2l5JxAcPoZlYjysbQ2KIleY8jFjSDRPfdG6lfa5ebt0gWWGCRfuPBQvOLf8XqCCPYcSRhINYKx
	qinSgwF90dWKk30hZWHAR6qkFHjKbgS1DOU9+JwgMd7eGKu44V2I/4/lsvb072fzQqGUHBjO4Sz2O
	0YdteAbl5xRxZWJefM50kYbUDW5QwA8e8mkaEZ62xgyw9IYrQGsw+y8WZJxNVQBWsO53J7B0KDAUi
	TBVk/1cg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rV8Nc-00000002y06-07kJ;
	Wed, 31 Jan 2024 11:03:44 +0000
Received: from mail-pg1-x52c.google.com ([2607:f8b0:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rV8NZ-00000002xyf-2V68
	for barebox@lists.infradead.org;
	Wed, 31 Jan 2024 11:03:42 +0000
Received: by mail-pg1-x52c.google.com with SMTP id 41be03b00d2f7-5cdf76cde78so3106655a12.1
        for <barebox@lists.infradead.org>; Wed, 31 Jan 2024 03:03:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706699019; x=1707303819; darn=lists.infradead.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=MwyJTJkjgF5F4YGA/0bBynSAwFfeNaLTcwPplFJFCUg=;
        b=E6mfaVd6sUIcRNIKWwMgD62muVrZAPWZ/QAQavKBc+pbVTamXy0xL9Q/ScKK97JyUV
         fM2cElzBrgoGPYMqRamjSq/VbHR1h5VXINrDWxlPuQWFQwLD91xXiNiHF5s6EpygIEgy
         wOsCLrnnDruAEuSZZLeqKZSntcQQrHW69xFvwhygs8JZl53nxFsT6smG6+4Rx3e5AFeV
         VtNZ8Y7w81NDiD34gokeSsR8dHC84f2jdRb90SAKmVnk4Bya0KztHJmmekTPmBvUCrVZ
         JVXCKbli384CHHAjXGpmqtzjWYeWPvYsi/aor23yEcVYHodeIokw1O4ad5F13nzajoT5
         QOKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706699019; x=1707303819;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MwyJTJkjgF5F4YGA/0bBynSAwFfeNaLTcwPplFJFCUg=;
        b=fXHGJ97XpcmUNV062vNkx2GPCUaswzVyzHsPzucHhbLFTl/XGDKE+Bze48W781Ywba
         uk18dfS7r306IFgWtNxP2loe2nUdUWjEXbULZEgfuGOlEfN8BMewlLB4lKFtKkFpk/iC
         UV5bdVPcEwu1jtf54Rv5iAxM5hTjLLp8vIw6NJWa/CvV3jzGXcIneoFntudV8knFMIrR
         jSUPoP7PVzBdNzMvkuQsTBW6Stc17q7OACe6SixcyNaFgxnGn0j+PLa5SN7Gblpnb1OI
         rGx+LV/W+FxW2oKFzsZMfAiwJ0MCdGLFvOHisYLUDLpW5gv3ziZSWrkplhwH312nqK0N
         R6lQ==
X-Gm-Message-State: AOJu0YwKdircdQQloztYSdC1JwlFpg1tkhkt76lMxnm1AuC4HhkCW/Jl
	4QID2OXT121cMn9PY557lugAN2qRIiRI+I7PUdsKkNHiiL8Af1ZbvT+9o1X003+0WmERzU0f0QE
	lSmOOMviz6P1+rVLZI+ZFubgWSYDTXoLMDI9KQg==
X-Google-Smtp-Source: AGHT+IFMpGeyeqI9T6b/RYdclH517lM8dO8/WJvua6tj2lA4x+BatObtbxw34mhy2g+x0a4CTZWvGUwA42L3NEkvmrE=
X-Received: by 2002:a05:6a20:1787:b0:19c:841a:99e4 with SMTP id
 bl7-20020a056a20178700b0019c841a99e4mr934959pzb.6.1706699019169; Wed, 31 Jan
 2024 03:03:39 -0800 (PST)
MIME-Version: 1.0
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Wed, 31 Jan 2024 14:03:27 +0300
Message-ID: <CAP1tNvS5XfXJXv0Fkg9Q=X-QL6jAn7-R7CdGhyoOzo3mbVuh3Q@mail.gmail.com>
To: Barebox List <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240131_030341_664789_CE5C5C02 
X-CRM114-Status: UNSURE (   5.29  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Possible regression 2023.12 -> 2024.01
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello.

Here is an output with bb 2023.12.0:

barebox 2023.12.0-00134-gad7f545cf97d #6 Wed Jan 31 13:37:45 MSK 2024
Board: Diasom DS-IMX8M-EVB
deep-probe: supported due to diasom,ds-imx8m-evb
detected i.MX8MM revision 1.0
i.MX8MM unique ID: 1e0769aac2a3784a
netconsole: registered as netconsole-1
WARNING: imx-esdhc 30b40000.mmc@30b40000.of: Failed to get 'vmmc'
regulator (ignored).
imx-esdhc 30b40000.mmc@30b40000.of: registered as mmc0
mmc0: detected MMC card version 5.1
mmc0: registered mmc0.boot0
mmc0: registered mmc0.boot1
WARNING: mmc0: GPT:Primary header thinks Alt. header is not at the end
of the disk.
WARNING: mmc0: GPT:1040487 != 7634943
WARNING: mmc0: GPT:Alternate GPT header not at the end of the disk.
WARNING: mmc0: GPT:1040487 != 7634943
WARNING: mmc0: GPT: Use GNU Parted to correct GPT errors.
mmc0: registered mmc0
imx-esdhc 30b50000.mmc@30b50000.of: registered as mmc1
mmc1: detected SD card version 2.0
WARNING: mmc1: GPT:Primary header thinks Alt. header is not at the end
of the disk.
WARNING: mmc1: GPT:1757287 != 60579839
WARNING: mmc1: GPT:Alternate GPT header not at the end of the disk.
WARNING: mmc1: GPT:1757287 != 60579839
WARNING: mmc1: GPT: Use GNU Parted to correct GPT errors.
mmc1: registered mmc1
imx-usb 32e50000.usb@32e50000.of: USB EHCI 1.00
malloc space: 0x7fefe200 -> 0xbfdfc3ff (size 1023 MiB)
envfs: no envfs (magic mismatch) - envfs never written?
multi_bind: creating Fastboot function
multi_bind: creating USB Mass Storage function
multi_bind: creating ACM function
g_multi gadget0: Multifunction Composite Gadget
g_multi gadget0: g_multi ready
Hit m for menu or any to stop autoboot:    9

Here is an output with bb 2024.01.0:

barebox 2024.01.0-00135-g2449d030bcf1 #5 Wed Jan 31 12:43:50 MSK 2024
Board: Diasom DS-IMX8M-EVB
deep-probe: supported due to diasom,ds-imx8m-evb
detected i.MX8MM revision 1.0
i.MX8MM unique ID: 1e0769aac2a3784a
netconsole: registered as netconsole-1
WARNING: imx-esdhc 30b40000.mmc@30b40000.of: Failed to get 'vmmc'
regulator (ignored).
imx-esdhc 30b40000.mmc@30b40000.of: registered as mmc0
mmc0: detected MMC card version 5.1
mmc0: registered mmc0.boot0
mmc0: registered mmc0.boot1
WARNING: mmc0: GPT:Primary header thinks Alt. header is not at the end
of the disk.
WARNING: mmc0: GPT:1040487 != 7634943
WARNING: mmc0: GPT:Alternate GPT header not at the end of the disk.
WARNING: mmc0: GPT:1040487 != 7634943
WARNING: mmc0: GPT: Use GNU Parted to correct GPT errors.
mmc0: registered mmc0
imx-esdhc 30b50000.mmc@30b50000.of: registered as mmc1
mmc1: detected SD card version 2.0
ERROR: mmc1: Cannot read MBR/partition table: I/O error
mmc1: registered mmc1
imx-usb 32e50000.usb@32e50000.of: USB EHCI 1.00
malloc space: 0x7fefe200 -> 0xbfdfc3ff (size 1023 MiB)
ERROR: barebox-environment chosen:environment-sd.of: probe failed: No
such file or directory
environment load /dev/env0: No such file or directory
Maybe you have to create the partition.
multi_bind: creating Fastboot function
multi_bind: creating USB Mass Storage function
multi_bind: creating ACM function
g_multi gadget0: Multifunction Composite Gadget
g_multi gadget0: g_multi ready
Hit m for menu or any to stop autoboot:

The booting freezes (~5 s or so) during the mmc1 detection process.
Also, for reasons unknown to me, the kernel now throws an error when loading:

mmc1: Timeout waiting for hardware interrupt.
mmc1: sdhci: ============ SDHCI REGISTER DUMP ===========
mmc1: sdhci: Sys addr:  0x00000008 | Version:  0x00000002
mmc1: sdhci: Blk size:  0x00000200 | Blk cnt:  0x00000008
mmc1: sdhci: Argument:  0x00000000 | Trn mode: 0x0000003b
mmc1: sdhci: Present:   0x01f8820e | Host ctl: 0x00000013
mmc1: sdhci: Power:     0x00000002 | Blk gap:  0x00000080
mmc1: sdhci: Wake-up:   0x00000008 | Clock:    0x00000077
mmc1: sdhci: Timeout:   0x0000000f | Int stat: 0x00000000
mmc1: sdhci: Int enab:  0x117f100b | Sig enab: 0x117f100b
mmc1: sdhci: ACmd stat: 0x00000000 | Slot int: 0x00000502
mmc1: sdhci: Caps:      0x07eb0000 | Caps_1:   0x0000b407
mmc1: sdhci: Cmd:       0x0000123a | Max curr: 0x00ffffff
mmc1: sdhci: Resp[0]:   0x00000900 | Resp[1]:  0x00e7177f
mmc1: sdhci: Resp[2]:   0x325b5900 | Resp[3]:  0x00000900
mmc1: sdhci: Host ctl2: 0x00000000
mmc1: sdhci: ADMA Err:  0x00000003 | ADMA Ptr: 0x42133204
mmc1: sdhci-esdhc-imx: ========= ESDHC IMX DEBUG STATUS DUMP =========
mmc1: sdhci-esdhc-imx: cmd debug status:  0x3100
mmc1: sdhci-esdhc-imx: data debug status:  0x32a0
mmc1: sdhci-esdhc-imx: trans debug status:  0x33a0
mmc1: sdhci-esdhc-imx: dma debug status:  0x3400
mmc1: sdhci-esdhc-imx: adma debug status:  0x35b4
mmc1: sdhci-esdhc-imx: fifo debug status:  0x3680
mmc1: sdhci-esdhc-imx: async fifo debug status:  0x3750
mmc1: sdhci: ============================================

Any ideas?

Thanks!


