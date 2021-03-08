Delivery-date: Mon, 08 Mar 2021 20:33:37 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lJLdJ-0007Tr-2u
	for lore@lore.pengutronix.de; Mon, 08 Mar 2021 20:33:37 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lJLdF-0003iW-1L
	for lore@pengutronix.de; Mon, 08 Mar 2021 20:33:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jvPLhGjyiyp9CcV52CbJYyvhf1uLk+BtAXA86UTye3U=; b=lfNn4xTYGwJGvfq7ENCFs17O7
	7v8kUzMz+FV2j6XWqEzkpOadVTM/kzSaqikwASphzXvNdV1lWfoFTlfxNHisk8geus/OBo7rYMCzg
	wWy/8uugFX9DaQgsPwoMrYxqkAmFOAiaiCV3z58qK946OWyMMFKEmOirx7EYfWQnRJhuZY1ZiJDK9
	aX+VawKI92LA1e0t+OkXTYl1wfLIQvD8628pHvezdxec/AEW9u/AZjneBg6MpVKd4tycsaR/XVqe7
	m1+k0g9DQcwIwSAuTYcjikM+suegWZqsk+0wPj04jhlUkkdfPYEHopMJCXSSeF9ljqkqLjJ/ZqEl8
	bQljRmcRw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJLcG-0027Kn-EE; Mon, 08 Mar 2021 19:32:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lJLcA-0027JS-9a
 for barebox@lists.infradead.org; Mon, 08 Mar 2021 19:32:28 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lJLc1-0003Z2-T2; Mon, 08 Mar 2021 20:32:17 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lJLc1-0008VL-Ke; Mon, 08 Mar 2021 20:32:17 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  8 Mar 2021 20:32:13 +0100
Message-Id: <20210308193214.32573-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210308193214.32573-1-a.fatoum@pengutronix.de>
References: <20210308193214.32573-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210308_193227_407422_F975F292 
X-CRM114-Status: UNSURE (   8.70  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,UPPERCASE_50_75
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/4] ARM64: qemu-virt64: enable Virt IO and other useful
 options
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We have no size limitation whatsoever with the qemu-virt64, so enable
everything we might need there.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/configs/qemu_virt64_defconfig | 46 +++++++++++++++++++++++---
 1 file changed, 41 insertions(+), 5 deletions(-)

diff --git a/arch/arm/configs/qemu_virt64_defconfig b/arch/arm/configs/qemu_virt64_defconfig
index f138dc648de8..17509ce9d644 100644
--- a/arch/arm/configs/qemu_virt64_defconfig
+++ b/arch/arm/configs/qemu_virt64_defconfig
@@ -2,24 +2,37 @@ CONFIG_ARCH_ARM64_VIRT=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_MMU=y
 # CONFIG_MMU_EARLY is not set
-CONFIG_PROMPT="qemu-virt64: "
-CONFIG_GLOB=y
+CONFIG_KALLSYMS=y
+CONFIG_PROMPT=""
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
-CONFIG_PARTITION=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+CONFIG_IMD=y
+CONFIG_CONSOLE_ACTIVATE_NONE=y
+CONFIG_CONSOLE_ALLOW_COLOR=y
+CONFIG_PARTITION_DISK_EFI=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+CONFIG_POLLER=y
+CONFIG_STATE=y
+CONFIG_BOOTCHOOSER=y
+CONFIG_RESET_SOURCE=y
+CONFIG_MACHINE_ID=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_LOADB=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_UIMAGE=y
+CONFIG_CMD_BOOTCHOOSER=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_MAGICVAR=y
+CONFIG_CMD_MAGICVAR_HELP=y
 CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_FILETYPE=y
+CONFIG_CMD_SHA256SUM=y
 CONFIG_CMD_UNCOMPRESS=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_ECHO_E=y
@@ -30,14 +43,37 @@ CONFIG_CMD_MENU_MANAGEMENT=y
 CONFIG_CMD_PASSWD=y
 CONFIG_CMD_READLINE=y
 CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_CRC=y
+CONFIG_CMD_CRC_CMP=y
+CONFIG_CMD_DETECT=y
+CONFIG_CMD_FLASH=y
+CONFIG_CMD_POWEROFF=y
+CONFIG_CMD_BAREBOX_UPDATE=y
+CONFIG_CMD_OF_DIFF=y
+CONFIG_CMD_OF_NODE=y
+CONFIG_CMD_OF_PROPERTY=y
+CONFIG_CMD_OF_DISPLAY_TIMINGS=y
+CONFIG_CMD_OF_FIXUP_STATUS=y
+CONFIG_CMD_OF_OVERLAY=y
 CONFIG_CMD_OFTREE=y
+CONFIG_CMD_STATE=y
 CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_OF_BAREBOX_ENV_IN_FS=y
 CONFIG_SERIAL_AMBA_PL011=y
+CONFIG_VIRTIO_CONSOLE=y
 # CONFIG_SPI is not set
 CONFIG_MTD=y
 CONFIG_DRIVER_CFI=y
 CONFIG_CFI_BUFFER_WRITE=y
+CONFIG_DISK=y
+CONFIG_DISK_WRITE=y
+CONFIG_VIRTIO_BLK=y
+CONFIG_HWRNG=y
+CONFIG_HW_RANDOM_VIRTIO=y
 # CONFIG_PINCTRL is not set
+CONFIG_VIRTIO_MMIO=y
+CONFIG_FS_EXT4=y
+CONFIG_FS_FAT=y
+CONFIG_FS_PSTORE=y
+CONFIG_FS_PSTORE_CONSOLE=y
 CONFIG_DIGEST_SHA1_GENERIC=y
-CONFIG_DIGEST_SHA256_GENERIC=y
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

