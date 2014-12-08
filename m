Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Xxyae-0008Js-7h
 for barebox@lists.infradead.org; Mon, 08 Dec 2014 13:43:06 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1XxyaG-0004d9-38
 for barebox@lists.infradead.org; Mon, 08 Dec 2014 14:42:40 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon,  8 Dec 2014 14:42:30 +0100
Message-Id: <1418046159-29843-3-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1418046159-29843-1-git-send-email-l.stach@pengutronix.de>
References: <1418046159-29843-1-git-send-email-l.stach@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 03/12] efi: move exit to EFI into own command
To: barebox@lists.infradead.org

Adds a command to drop back into the calling EFI process.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/efi/efi/efi.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/efi/efi/efi.c b/arch/efi/efi/efi.c
index bdb992fb9f15..7b954695f9e8 100644
--- a/arch/efi/efi/efi.c
+++ b/arch/efi/efi/efi.c
@@ -344,3 +344,19 @@ efi_status_t efi_main(efi_handle_t image, efi_system_table_t *sys_table)
 
 	return EFI_SUCCESS;
 }
+
+static int do_efiexit(int argc, char *argv[])
+{
+	return BS->exit(efi_parent_image, EFI_SUCCESS, 0, NULL);
+}
+
+BAREBOX_CMD_HELP_START(efiexit)
+BAREBOX_CMD_HELP_TEXT("Leave barebox and return to the calling EFI process\n")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(efiexit)
+	.cmd = do_efiexit,
+	BAREBOX_CMD_DESC("Usage: efiexit")
+	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
+	BAREBOX_CMD_HELP(cmd_efiexit_help)
+BAREBOX_CMD_END
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
