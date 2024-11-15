Delivery-date: Fri, 15 Nov 2024 14:44:52 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tBwd2-002GbV-1L
	for lore@lore.pengutronix.de;
	Fri, 15 Nov 2024 14:44:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tBwd1-0004Dk-Pp
	for lore@pengutronix.de; Fri, 15 Nov 2024 14:44:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:Subject:
	Message-ID:Date:From:MIME-Version:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=OF+8ERl9GO1rtadiDLLszKhFljkHIuASMDA7rzP6b/0=; b=TJEqqCBC6nHYjkCpNnjSdpzcLU
	9OI1VKOqErAsvrDDunWz6zb9QzLMBkp8qgE6vWergSUl0CXud3TE+ccdEgGFZ6oGbP/dglC60UCW6
	0GxNmHWLJP76ifdhFpl20YuXIWFglcdEjHZqOI6FafPJTTld2050Cepu/c70IxPAV1lpoSBdkjZm3
	y+8bbg/20Kop2GNbHR3O3KneIXAOk6Kt03Mm4WLLjTUeokpfTn/JlbddEg2s0FrAih+hkJ3Wc4oSL
	ZLxtAMN8AgJqI6ROGDS7rTMCR5cfZ7JA/v+Ow4LHudvFFV4Y1aH+lu5ErNq0lLgio3hGuO36vvJy7
	NoDydt2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBwcP-00000002sJu-0EaT;
	Fri, 15 Nov 2024 13:44:13 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBwcN-00000002sJQ-0jQ7
	for barebox@lists.infradead.org;
	Fri, 15 Nov 2024 13:44:12 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-43155abaf0bso16363165e9.0
        for <barebox@lists.infradead.org>; Fri, 15 Nov 2024 05:44:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1731678249; x=1732283049; darn=lists.infradead.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=OF+8ERl9GO1rtadiDLLszKhFljkHIuASMDA7rzP6b/0=;
        b=EUudbLoLpEPzi2tvE6Jq/HsRBNEhrtsUMuRddW8vTB2nCMbCN1XgzS8puYnJvkGeup
         LDPwBG5Yiv28CTzRObiDdtzTgt7e8xn/76tgurcPBxNqgX4NS04QAqzugRvqtbLsiEOQ
         wvW3VWrPPplAX2yq+2UDwdi0QCE7YAkTzjBR7yPEIJD7pA6EFwCTkvPR49CGtRjjV1Kn
         wCX7CZvI2TGZB6a8NVhA/ublr+Npot1tHQYJCHOV4APREElpt8LpruOqhoMLjS29fwqo
         dDqWvhkfriaI1+W3duFZXQvwrrZ/2knWAA1E/u9kNcNfCuZeohq/RU3PPq0wEFByyg/Z
         VpHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731678249; x=1732283049;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OF+8ERl9GO1rtadiDLLszKhFljkHIuASMDA7rzP6b/0=;
        b=hTBFFnBXh9khmQoqhrP94edszPu77iUkxRjAMpabg9EZvF5tsdGhYF+/z3ZH93bJM/
         g53Jj/MN9d/8NAzJOlEcYvMpuJ/RIdBElsAs6KIsM9PyOPvTqzjEJAAiA+q0ItTVm6qf
         XHPwUr6Irl2mtHxoX+1lE3fQU3YMtMTqa64MJlfkUGJfW/bwV+i4A2CVsx4W4xRAxKN1
         QNkjdtIFtO3tRRCHs8iwq+Gf0Qh+zTXaP08OLkhpGLitswcWZ1cnLOk1YO03nuyXBrum
         q0Q1Vh6r0aLFoqPYZfkTs7wVRVX3t1n3hCWsG2j0HehcjkE1MYsyShOjye0OwreiQyuO
         0iSg==
X-Gm-Message-State: AOJu0Ywb7N/ERxGf0WZSR3uevuhVK8IElD4m8194r7NSblKrbk3Sglah
	ljysoYMrKjRfQXerroqGLIkPJOvq9bC3L4V85L9AXM5hmTqcZLYHEq11IIE/C0EuWX7TYrhW4Dk
	/ib0bMmWNefLxlsehxW9MBOs4xVwGALXu
X-Google-Smtp-Source: AGHT+IHliQTWLKymtWPtQ8sJjBXSIjs/7bH4hlt+lPEue7LQEOTlCmL4BtDMw8F4QMKYCx11k/OkUWSFluUyUP54OrY=
X-Received: by 2002:a5d:59a2:0:b0:381:f587:a971 with SMTP id
 ffacd0b85a97d-38225a92082mr2296591f8f.41.1731678248898; Fri, 15 Nov 2024
 05:44:08 -0800 (PST)
MIME-Version: 1.0
From: Stefano Manni <stefano.manni@gmail.com>
Date: Fri, 15 Nov 2024 14:43:57 +0100
Message-ID: <CANn9nbiT8J+irgWYQxiTydNyOiTEiXBo_ZLqdVG1EGpHY9eyOA@mail.gmail.com>
To: barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241115_054411_212550_3DABD8F0 
X-CRM114-Status: UNSURE (   6.39  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: firmwareload fails for cortex-m7 on imx8mp
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Dear all,

I cannot run an ELF image on the M7 core on the imx8mp soc.
The ELF comes from zephyr and it runs as expected when I load it from linux,
but in barebox I encounter this error:

barebox@NXP i.MX8MPlus EVK board:/ tftp zephyr.elf
        [################################################################]
barebox@NXP i.MX8MPlus EVK board:/ firmwareload zephyr.elf
remoteproc0: powering up remoteproc-cm7.of
DABT (current EL) exception (ESR 0x96000061) at 0x00000000007e0004
elr: 00000000ffd826f4 lr : 00000000ffd829cc
x0 : 00000000007e0000 x1 : 00000000bff22a40
x2 : 0000000000003f88 x3 : 00002add00000a91
x4 : 000000000000000c x5 : 00000000ffff7478
x6 : 00000000007e0004 x7 : 727065746f6d6572
x8 : 585858203a30636f x9 : 2074736564205858
x10: 3030303030303030 x11: 3030303065373030
x12: 3030302063727320 x13: 6666623030303030
x14: 6973203433613232 x15: 0000000000000001
x16: 00000000ffff7458 x17: 0000000000000001
x18: 00000000ffff79e0 x19: 00000000bff22994
x20: 0000000000003f94 x21: 00000000007e0000
x22: 00000000bff22940 x23: 00000000bfdd0b80
x24: 00000000bfdd0b28 x25: 00000000ffff7a80
x26: 0000000000000001 x27: 00000000ffd8edc0
x28: 0000000000003f94 x29: 00000000ffff79c0

Call trace:
[<ffd826f4>] (__arch_memcpy+0x48/0x13c) from [<ffd82a00>] (memcpy+0xc/0x14)
[<ffd82a00>] (memcpy+0xc/0x14) from [<ffd5150c>]
(rproc_elf_load_segments+0x148/0x16c)
[<ffd5150c>] (rproc_elf_load_segments+0x148/0x16c) from [<ffd5115c>]
(rproc_firmware_finish+0x84/0x10c)
[<ffd5115c>] (rproc_firmware_finish+0x84/0x10c) from [<ffd141b0>]
(firmware_close+0x28/0x4c)
[<ffd141b0>] (firmware_close+0x28/0x4c) from [<ffd73c44>] (cdev_close+0x3c/0x44)
[<ffd73c44>] (cdev_close+0x3c/0x44) from [<ffd751cc>] (devfs_close+0x10/0x18)
[<ffd751cc>] (devfs_close+0x10/0x18) from [<ffd76be4>] (close+0x110/0x118)
[<ffd76be4>] (close+0x110/0x118) from [<ffd1466c>]
(firmwaremgr_load_file+0x140/0x198)
[<ffd1466c>] (firmwaremgr_load_file+0x140/0x198) from [<ffd5eac4>]
(do_firmwareload+0xc4/0xd0)
[<ffd5eac4>] (do_firmwareload+0xc4/0xd0) from [<ffd078e0>]
(execute_command+0x44/0x8c)
[<ffd078e0>] (execute_command+0x44/0x8c) from [<ffd0422c>]
(execute_binfmt+0x68/0xa0)
[<ffd0422c>] (execute_binfmt+0x68/0xa0) from [<ffd11200>]
(run_list_real+0x8cc/0x978)
[<ffd11200>] (run_list_real+0x8cc/0x978) from [<ffd10788>]
(parse_stream_outer+0x140/0x1ec)
[<ffd10788>] (parse_stream_outer+0x140/0x1ec) from [<ffd115e0>]
(run_shell+0x64/0xac)
[<ffd115e0>] (run_shell+0x64/0xac) from [<ffd01a28>] (run_init+0x114/0x258)
[<ffd01a28>] (run_init+0x114/0x258) from [<ffd01bbc>] (start_barebox+0x50/0x8c)
[<ffd01bbc>] (start_barebox+0x50/0x8c) from [<ffd81748>] (decode_cache+0x0/0x5c)
[<ffd81748>] (decode_cache+0x0/0x5c) from [<ffd0000c>]
(__bare_init_start+0x0/0x14)
[<ffd0000c>] (__bare_init_start+0x0/0x14) from [<402046c8>] (0x402046c8)
[<402046c8>] (0x402046c8) from [<40203f48>] (0x40203f48)
panic: unhandled exception


As you can see the exception happens when rproc_elf_load_segments() tries to
memcpy a segment where the M7 expects it. The ELF has been compiled to run
from ITCM memory (0x007E0000-0x007FFFFF).

Do you have any idea? Maybe may I have to put a reserved-memory for ITCM?

Thank you.

Best,
Stefano


