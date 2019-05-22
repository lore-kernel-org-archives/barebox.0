Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTLlb-0002CK-AI
 for barebox@lists.infradead.org; Wed, 22 May 2019 07:34:31 +0000
Received: by mail-pg1-x542.google.com with SMTP id n2so858791pgp.11
 for <barebox@lists.infradead.org>; Wed, 22 May 2019 00:34:27 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 22 May 2019 00:34:02 -0700
Message-Id: <20190522073414.9308-7-andrew.smirnov@gmail.com>
In-Reply-To: <20190522073414.9308-1-andrew.smirnov@gmail.com>
References: <20190522073414.9308-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 06/18] usb: host: ehci: Introduce ehci_prepare_qtd()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Move shared struct qTD initialization code into a subroutine and
convert the rest of the code to use it. No functional change intended.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/usb/host/ehci-hcd.c | 66 ++++++++++++++++++++-----------------
 1 file changed, 35 insertions(+), 31 deletions(-)

diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index be875d402..ad244637e 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -213,6 +213,27 @@ static int ehci_td_buffer(struct qTD *td, void *buf, size_t sz)
 	return 0;
 }
 
+static int ehci_prepare_qtd(struct qTD *td, uint32_t token,
+			    void *buffer, size_t length)
+{
+	int ret;
+
+	td->qt_next = cpu_to_hc32(QT_NEXT_TERMINATE);
+	td->qt_altnext = cpu_to_hc32(QT_NEXT_TERMINATE);
+	token |= QT_TOKEN_TOTALBYTES(length) |
+		QT_TOKEN_CPAGE(0) | QT_TOKEN_CERR(3) |
+		QT_TOKEN_STATUS(QT_TOKEN_STATUS_ACTIVE);
+	td->qt_token = cpu_to_hc32(token);
+
+	if (length) {
+		ret = ehci_td_buffer(td, buffer, length);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
 static int ehci_enable_async_schedule(struct ehci_host *ehci, bool enable)
 {
 	uint32_t cmd, done;
@@ -299,16 +320,9 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 	if (req != NULL) {
 		td = &ehci->td[0];
 
-		td->qt_next = cpu_to_hc32(QT_NEXT_TERMINATE);
-		td->qt_altnext = cpu_to_hc32(QT_NEXT_TERMINATE);
-		token = QT_TOKEN_DT(0) |
-			QT_TOKEN_TOTALBYTES(sizeof(*req)) |
-			QT_TOKEN_IOC(0) |
-			QT_TOKEN_CPAGE(0) | QT_TOKEN_CERR(3) |
-			QT_TOKEN_PID(QT_TOKEN_PID_SETUP) |
-			QT_TOKEN_STATUS(QT_TOKEN_STATUS_ACTIVE);
-		td->qt_token = cpu_to_hc32(token);
-		ret = ehci_td_buffer(td, req, sizeof(*req));
+		ret = ehci_prepare_qtd(td, QT_TOKEN_DT(0) | QT_TOKEN_IOC(0) |
+				       QT_TOKEN_PID(QT_TOKEN_PID_SETUP),
+				       req, sizeof(*req));
 		if (ret) {
 			dev_dbg(ehci->dev, "unable construct SETUP td\n");
 			return ret;
@@ -322,17 +336,12 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 	if (length > 0 || req == NULL) {
 		td = &ehci->td[1];
 
-		td->qt_next = cpu_to_hc32(QT_NEXT_TERMINATE);
-		td->qt_altnext = cpu_to_hc32(QT_NEXT_TERMINATE);
-		token = QT_TOKEN_DT(toggle) |
-			QT_TOKEN_TOTALBYTES(length) |
-			QT_TOKEN_IOC(req == NULL) |
-			QT_TOKEN_CPAGE(0) | QT_TOKEN_CERR(3) |
-			QT_TOKEN_PID(usb_pipein(pipe) ?
-				     QT_TOKEN_PID_IN : QT_TOKEN_PID_OUT) |
-			QT_TOKEN_STATUS(QT_TOKEN_STATUS_ACTIVE);
-		td->qt_token = cpu_to_hc32(token);
-		ret = ehci_td_buffer(td, buffer, length);
+		ret = ehci_prepare_qtd(td, QT_TOKEN_DT(toggle) |
+				       QT_TOKEN_IOC(req == NULL) |
+				       QT_TOKEN_PID(usb_pipein(pipe) ?
+						    QT_TOKEN_PID_IN :
+						    QT_TOKEN_PID_OUT),
+				       buffer, length);
 		if (ret) {
 			dev_err(ehci->dev, "unable construct DATA td\n");
 			return ret;
@@ -344,16 +353,11 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 	if (req) {
 		td = &ehci->td[2];
 
-		td->qt_next = cpu_to_hc32(QT_NEXT_TERMINATE);
-		td->qt_altnext = cpu_to_hc32(QT_NEXT_TERMINATE);
-		token = QT_TOKEN_DT(1) |
-			QT_TOKEN_TOTALBYTES(0) |
-			QT_TOKEN_IOC(1) |
-			QT_TOKEN_CPAGE(0) | QT_TOKEN_CERR(3) |
-			QT_TOKEN_PID(usb_pipein(pipe) ?
-				     QT_TOKEN_PID_OUT : QT_TOKEN_PID_IN) |
-			QT_TOKEN_STATUS(QT_TOKEN_STATUS_ACTIVE);
-		td->qt_token = cpu_to_hc32(token);
+		ehci_prepare_qtd(td, QT_TOKEN_DT(1) | QT_TOKEN_IOC(1) |
+				 QT_TOKEN_PID(usb_pipein(pipe) ?
+					      QT_TOKEN_PID_OUT :
+					      QT_TOKEN_PID_IN),
+				 NULL, 0);
 		*tdp = cpu_to_hc32((uint32_t)td);
 		tdp = &td->qt_next;
 	}
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
