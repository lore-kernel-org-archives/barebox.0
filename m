Delivery-date: Fri, 06 Dec 2024 14:11:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tJY7K-004kaN-2n
	for lore@lore.pengutronix.de;
	Fri, 06 Dec 2024 14:11:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tJY7K-000846-M1
	for lore@pengutronix.de; Fri, 06 Dec 2024 14:11:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:Subject:
	Message-ID:Date:From:MIME-Version:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=MS+/UInMaN40/Ka8SX++gNoOkMFJVff4drAW9GNHCLQ=; b=bFb54zNQb0sf7IQN8+bRP1Hu/U
	lRNxQCK01UqVrEuOJVD1uslojTa6C2VCB8B8z5g1zzv0rofSevr0kJBBtQAjbxwYmHtKUiz/FtLkt
	P3a/U5wEianKpX9DFh/US3aZS9cKeHrLx8HObq3VGiLIa2VSs5Es/y+GGnugsnUf3gsM0+AByKNWt
	axkkdF22RAK3PSL/MHZlt+q2lHwCWeQ3piPa+BI4s52BgCn8+LCHdGrSr5oVXazGRJm7EJ34RkvfP
	oxs8jFnnpjrHQBZIWdmUSigQx2uWznurgzrBHKcGjDQjeIxYTeo+56KfgtHvtMkLRblP7su7Fiu24
	T5tFctcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tJY6k-00000001h98-1wkL;
	Fri, 06 Dec 2024 13:10:58 +0000
Received: from mail-pj1-x1035.google.com ([2607:f8b0:4864:20::1035])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJY6i-00000001h8e-0Is9
	for barebox@lists.infradead.org;
	Fri, 06 Dec 2024 13:10:57 +0000
Received: by mail-pj1-x1035.google.com with SMTP id 98e67ed59e1d1-2ee50ffcf14so2578638a91.0
        for <barebox@lists.infradead.org>; Fri, 06 Dec 2024 05:10:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733490654; x=1734095454; darn=lists.infradead.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=MS+/UInMaN40/Ka8SX++gNoOkMFJVff4drAW9GNHCLQ=;
        b=FC/w3PcMcQ/mDyr8eaqQFhd42Be/Rztk2AtY/hHeNdd+NvlBmUBShjMFF+usRLhk7A
         YfDd0M0r/g7IJrXH2b0Ytd2f7BoLd8H7DIUJnaXcpzMoIe9LGwo1cvbETg56hG6pS9TD
         +sd5gWds6Muu+ulZIRTygmzpAc6ahkGgaVa81Dg0md3f/uqQh2d45ExeI2qyVkizcSp8
         aHKkVnauETk2xbBMyDg+01Tl6QUW2nHq9IGrIp63EDS/o+dzwTP7y92q8XI3p91G5ped
         vqBQ8G9r8hqzoWIjRqMGhOhCVad4bKeU5RkXU7O8Ggr5mMFlOcuM4+cChHGYqnxwX4eS
         80bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733490654; x=1734095454;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MS+/UInMaN40/Ka8SX++gNoOkMFJVff4drAW9GNHCLQ=;
        b=dHms2WOOLypJvlkbjUzCeX83a0Z1YbP6XOofvBaKf0xIshu1wDi5SGHn3HHx4SI7JV
         nEEq2fskenbSAMfXPtcR6VqBifkS1QUF/9nTnidYwqfKMubDpj+IhGPM7EFz1jYjRw9a
         5j1QW4Hw1hPrNKPB7Fz5+f288HeCYQeWZ9p/yb52QJw/YPU2QNGe8gRIlKk7BTfkixUU
         FuekjjN7BWzve/Ra2iL5bCauGNFbXTuffrieSkTiWmrklBYU1Q4RtXWoMWJnoz7w+gRi
         rkgxX0F4+ubQbsQAjb5C5+4uKHm/3QH6ch+s9W1tzgeM8+ANDimFgvLcJIEjwdc9FBEz
         8B4w==
X-Gm-Message-State: AOJu0Yw6HrdJFSm01lfg7h8a0tpaCJs3Qk6qTSu5gEhkrj4nFcF+j5g0
	7VRJr0pnnLJEl3gOcIYMUtlg+RD8HTXqBZKnrIsCXPhSFr1+W4MDpYZ2+WtwA1ZZDvfFQqaUgkf
	3vsWD/78+96TXwjrgqz/nMY9wzWQa7/a1
X-Gm-Gg: ASbGncsogTdOrspU98aJb8SEhV3eyjJFnwpozpxIatgebzd/vspHKk75voqZ2au3467
	ucUJvG3l5hUd/GVP+oDnTcxGweyq+Oa3C
X-Google-Smtp-Source: AGHT+IEN+cjpy5VEyCmOkws7atQgpOZsbnxgYez10aaYAPITLhkeQZGYhDoe9aYkwY4CGqXRIT2MrErF4VxF51s/6CI=
X-Received: by 2002:a17:90b:1344:b0:2ee:5c9b:35c0 with SMTP id
 98e67ed59e1d1-2ef68dc2160mr5422204a91.9.1733490653653; Fri, 06 Dec 2024
 05:10:53 -0800 (PST)
MIME-Version: 1.0
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri, 6 Dec 2024 16:10:42 +0300
Message-ID: <CAP1tNvQXh3sQz8exOva9oY-XFUh0ULrSuuAA5fNrCREdw8cxAA@mail.gmail.com>
To: Barebox List <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241206_051056_168276_B6FFBA30 
X-CRM114-Status: UNSURE (   5.49  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: memtest failed for rk3588
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello all!

When testing a board with a RK3588 CPU, I get a stable crash on memtest.
This is the first sample of the board on this CPU and of course it is possible
that something is really not soldered correctly, but should the
bootloader crash in this case?


barebox 2024.12.0-00352-g41ed6686c3d4-dirty #69 Fri Dec 6 15:45:18 MSK 2024

Board: Diasom DS-RK3588-BTB-EVB
deep-probe: supported due to diasom,ds-rk3588-btb
rockchip-dmc memory-controller.of: Detected memory size: 0x400000000
netconsole: registered as netconsole-1
arm-scmi firmware:scmi.of: SCMI Protocol v2.0 'rockchip:' Firmware version 0x0
psci psci.of: detected version 1.1
fan53555-regulator rk86020: FAN53555 Option[10] Rev[1] Detected!
fan53555-regulator rk86030: FAN53555 Option[10] Rev[1] Detected!
dw_mmc fe2c0000.mmc@fe2c0000.of: registered as mmc1
mmc1: detected SD card version 2.0
mmc1: registered mmc1
rk3568-dwcmshc-sdhci fe2e0000.mmc@fe2e0000.of: registered as mmc0
mmc0: detected MMC card version 5.1
mmc0: registered mmc0.boot0
mmc0: registered mmc0.boot1
mmc0: registered mmc0
fan53555-regulator rk86021: FAN53555 Option[10] Rev[1] Detected!
malloc space: 0xafd00000 -> 0xefcfffff (size 1 GiB)
environment load /dev/env0: No such file or directory
Maybe you have to create the partition.

Hit any to stop autoboot:    3
barebox@Diasom DS-RK3588-BTB-EVB:/ memtest
Start iteration 1 of 1.
Testing memory space: 0x0000000100000000 -> 0x00000003ffffffff:
Starting data line test.
Check for address bits stuck high.
Check for address bits stuck low or shorted.
Starting moving inversions test of RAM:
Fill with address, compare, fill with inverted address, compare again
        [##########################################DABT (current EL)
exception (ESR 0x96000010) at 0x00000003fc000200
elr: 00000000efd07064 lr : 00000000efd07058
x0 : 00000002fc000200 x1 : 0000000000000001
x2 : 000000005fffffff x3 : 0000000000000002
x4 : 0000000000000002 x5 : 0000000000000020
x6 : 00000000ffffffd8 x7 : 00000000efff76ae
x8 : 00000000efff79c8 x9 : 0000000000000078
x10: 0000000000000001 x11: 0000000000000011
x12: 0000000000000010 x13: 00000000efdaf076
x14: 0000000000000000 x15: 0000000000000003
x16: 00000000efff73f8 x17: 0000000000000003
x18: 00000000efff7b20 x19: 0000000100000000
x20: 0000000000000001 x21: 0000000000000001
x22: fffffffffffffffe x23: 0000000000000000
x24: 0000000000000001 x25: 0000000000000000
x26: 00000000efd9e5de x27: 00000000efd9e5f1
x28: 0000000000000000 x29: 00000000efff7a60

Call trace:
[<efd07064>] (mem_test_moving_inversions+0xfc/0x244) from [<efd6375c>]
(do_test_one_area+0x74/0x98)
[<efd6375c>] (do_test_one_area+0x74/0x98) from [<efd63808>]
(do_memtest_biggest+0x28/0x3c)
[<efd63808>] (do_memtest_biggest+0x28/0x3c) from [<efd63a18>]
(do_memtest+0x1fc/0x218)
[<efd63a18>] (do_memtest+0x1fc/0x218) from [<efd073cc>]
(execute_command+0x44/0x8c)
[<efd073cc>] (execute_command+0x44/0x8c) from [<efd042c0>]
(execute_binfmt+0x68/0xa0)
[<efd042c0>] (execute_binfmt+0x68/0xa0) from [<efd11430>]
(run_list_real+0x8cc/0x978)
[<efd11430>] (run_list_real+0x8cc/0x978) from [<efd109b8>]
(parse_stream_outer+0x140/0x1ec)
[<efd109b8>] (parse_stream_outer+0x140/0x1ec) from [<efd11734>]
(run_shell+0x64/0xac)
[<efd11734>] (run_shell+0x64/0xac) from [<efd019f4>] (run_init+0x114/0x258)
[<efd019f4>] (run_init+0x114/0x258) from [<efd01b88>] (start_barebox+0x50/0x8c)
[<efd01b88>] (start_barebox+0x50/0x8c) from [<efd8a6b8>]
(psci_driver_register+0x0/0x1c)
[<efd8a6b8>] (psci_driver_register+0x0/0x1c) from [<efd0000c>]
(__bare_init_start+0x0/0x14)
[<efd0000c>] (__bare_init_start+0x0/0x14) from [<00b01bc8>] (0xb01bc8)
[<00b01bc8>] (0xb01bc8) from [<00b013ac>] (0xb013ac)
panic: unhandled exception
### ERROR ### Please RESET the board ###


