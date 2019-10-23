Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNJvo-0002hZ-Oj
 for barebox@lists.infradead.org; Wed, 23 Oct 2019 16:56:23 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 23 Oct 2019 18:55:56 +0200
Message-Id: <20191023165601.16441-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/6] Documentation: efi: emphasize watchdog deactivation on
 ExitBootServices
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>, Ahmad Fatoum <a.fatoum@pengutronix.de>

The UEFI specification paragraph quoted above notes:
> The watchdog timer is only used during boot services. On successful
> completion of ExitBootServices() the watchdog timer is disabled.

Thus disabling the watchdog is _the_ only proper behavior. Adjust the
wording accordingly.

Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/boards/efi.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/boards/efi.rst b/Documentation/boards/efi.rst
index 2178c9ab4293..f04b1d32378b 100644
--- a/Documentation/boards/efi.rst
+++ b/Documentation/boards/efi.rst
@@ -350,7 +350,7 @@ https://uefi.org/sites/default/files/resources/UEFI_Spec_2_1_D.pdf
 
 Current linux kernel (v5.0) will execute ExitBootServices() during the early
 boot stage and thus will automatically disable the (U)EFI watchdog. Since it is
-a proper behavior according to the (U)EFI specification, it is impossible to
+the proper behavior according to the (U)EFI specification, it is impossible to
 protect full boot chain by using this watchdog only. It is recommended to use
 an alternative hardware watchdog, preferably started before the bootloader. If (U)EFI
 firmware lacks this feature, the bootloader should be able to start an alternative
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
