Delivery-date: Mon, 05 Jan 2026 09:13:31 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcfiV-001SDk-0l
	for lore@lore.pengutronix.de;
	Mon, 05 Jan 2026 09:13:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vcfiU-0000Xy-MR
	for lore@pengutronix.de; Mon, 05 Jan 2026 09:13:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=G+VWop0adYatqgx+2vg1uuZUjBBTFu/0X0RcrVl7J0g=; b=GtXaS9M1tbSFsbpiqb5O5kTH7f
	/Lo25A/V/kaMuOuLEWYe6/4Vo2XQSBD+rJKyqrs4aNtY4PR1s9/bMf4ZhkMiqPb0B6Hrh+zJ5e0tE
	E4TY2zUdJ71EviEMAue+DS4zgdFfs/ZomzacAd5zYb5so8MIs4xXBNjk2xxCsLgtWN1VRgBx60mr1
	4PHSh+HxCcijiBHOvkhL14YF2Vn+BruZL4SrKwrvhULxFK4lda8FtfFoLxPFZvdUkjrSCNdkXkrYA
	1vZOF/BHY/tJIs0QgArPS2gcA++4zhnpbhloKF8akre3Hot8iLxGaLlJ5m8HYYqxKL78AAVy7mbr4
	SHElAA4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcfi4-0000000Axq3-23Nz;
	Mon, 05 Jan 2026 08:13:04 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcfi3-0000000Axpb-02CJ
	for barebox@bombadil.infradead.org;
	Mon, 05 Jan 2026 08:13:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=G+VWop0adYatqgx+2vg1uuZUjBBTFu/0X0RcrVl7J0g=; b=g5s1xi0uA4oZmtRoO7z5u1I7Zn
	oX3FnSOnCYR/UeQBPJ0rUzs6vmFGbbIRcjstXdlO0bQUqrsIfTFUZnVO5r0aIKnGrFn6IOQvr/Iau
	+z8yZMOwlZXYeq4ttt3dPBQFve03snJ9l6dQMe876umVncBJMQvHdFPYhq5mE3hlSuLQsLXZUgPbn
	jTlnGkgzufrQPdJLTyryoL3DXxbrgAv5dEMko1rPOLNTHtaE/yXJeMSR/apk91i3JzvV7oFmdO1vs
	jHCLw/uFgd+o/ySqPI7/Kl8TFx/PtaCiqXFKvCIrulaHzb8hkXnIQHLfy2HrFtOHbfdBnrleMu1HV
	dYxqvXqg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcfi0-00000007ofr-1j4Y
	for barebox@lists.infradead.org;
	Mon, 05 Jan 2026 08:13:01 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vcfhz-0000Sw-KJ; Mon, 05 Jan 2026 09:12:59 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon,  5 Jan 2026 09:12:46 +0100
Message-ID: <20260105081251.3244288-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_081300_510043_0F3D2B76 
X-CRM114-Status: UNSURE (   8.56  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH master] sandbox: fix make dependency for sandbox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The final barebox ELF didn't have a dependency on barebox.o, which means
that the final executable wasn't always updated.

Fix this by adding barebox.o into BAREBOX_PIGGY_OBJS, as the .elf
rule already has $(BAREBOX_PIGGY_OBJS) as dependency.

Fixes: 2aba0017c95a ("sandbox: switch to using PBL")
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 images/Makefile         | 2 ++
 images/Makefile.sandbox | 2 +-
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/images/Makefile b/images/Makefile
index 69447fd64541..ebbf57b46355 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -58,6 +58,8 @@ $(pbl-lds): $(obj)/../arch/$(SRCARCH)/lib/pbl.lds.S FORCE
 
 ifeq ($(CONFIG_PBL_IMAGE_NO_PIGGY),)
 BAREBOX_PIGGY_OBJS = $(obj)/piggy.o $(obj)/sha_sum.o
+else
+BAREBOX_PIGGY_OBJS = $(obj)/../$(BAREBOX_PROPER)
 endif
 
 quiet_cmd_elf__ ?= LD      $@
diff --git a/images/Makefile.sandbox b/images/Makefile.sandbox
index 5f94b6e589e8..210a7bf48ac8 100644
--- a/images/Makefile.sandbox
+++ b/images/Makefile.sandbox
@@ -21,7 +21,7 @@ endif
 quiet_cmd_elf__ = LD      $@
       cmd_elf__ = $(linker) -o $@ $(BAREBOX_LDFLAGS) \
 	-Wl,-T,$(pbl-lds) -Wl,--defsym=main=$(2) -Wl,--whole-archive \
-	$(obj)/../$(BAREBOX_PROPER) $(BAREBOX_PBL_OBJS) -Wl,--no-whole-archive \
+	$(BAREBOX_PIGGY_OBJS) $(BAREBOX_PBL_OBJS) -Wl,--no-whole-archive \
 	-lrt -pthread $(SANDBOX_LIBS) $(LDFLAGS_$(@F))
 
 ifeq ($(CONFIG_FUZZ_EXTERNAL),y)
-- 
2.47.3



