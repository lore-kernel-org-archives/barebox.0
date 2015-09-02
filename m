Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZX1aF-00054i-3Q
 for barebox@lists.infradead.org; Wed, 02 Sep 2015 06:31:48 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 125AAA00226
 for <barebox@lists.infradead.org>; Wed,  2 Sep 2015 08:33:22 +0200 (CEST)
From: Daniel Schultz <d.schultz@phytec.de>
Date: Wed, 2 Sep 2015 08:28:50 +0200
Message-Id: <1441175333-26759-1-git-send-email-d.schultz@phytec.de>
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
Subject: [PATCH v3 1/4] drivers: mci: Make two functions public
To: barebox@lists.infradead.org

There is no possibility to read/write to the extended CSD register of
MMC devices from a command. To avoid duplicated driver code, two driver
functions have to be public.

Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
---

Changes:
	v2:
	Changed patch order

	v3:
	No changes

 drivers/mci/mci-core.c | 4 ++--
 include/mci.h          | 3 +++
 2 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index bd5cae2..c22f932 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -370,7 +370,7 @@ static int mmc_send_op_cond(struct mci *mci)
  * Note: Only cards newer than Version 1.1 (Physical Layer Spec) support
  * this command
  */
-static int mci_send_ext_csd(struct mci *mci, char *ext_csd)
+int mci_send_ext_csd(struct mci *mci, char *ext_csd)
 {
 	struct mci_cmd cmd;
 	struct mci_data data;
@@ -394,7 +394,7 @@ static int mci_send_ext_csd(struct mci *mci, char *ext_csd)
  * @param value FIXME
  * @return Transaction status (0 on success)
  */
-static int mci_switch(struct mci *mci, unsigned set, unsigned index,
+int mci_switch(struct mci *mci, unsigned set, unsigned index,
 			unsigned value)
 {
 	struct mci_cmd cmd;
diff --git a/include/mci.h b/include/mci.h
index c5ab5b3..a7bf8cd 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -372,6 +372,9 @@ struct mci {
 int mci_register(struct mci_host*);
 void mci_of_parse(struct mci_host *host);
 int mci_detect_card(struct mci_host *);
+int mci_send_ext_csd(struct mci *mci, char *ext_csd);
+int mci_switch(struct mci *mci, unsigned set, unsigned index,
+			unsigned value);
 
 static inline int mmc_host_is_spi(struct mci_host *host)
 {
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
