Delivery-date: Mon, 20 Nov 2023 11:51:33 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r51sL-001Oze-0d
	for lore@lore.pengutronix.de;
	Mon, 20 Nov 2023 11:51:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r51sL-0001sg-70
	for lore@pengutronix.de; Mon, 20 Nov 2023 11:51:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9pMV7OHgL7/9R1/dQ0nYp8Z+ny7pzD01kvIJQBfF8Lo=; b=0GwPc5YSlCBvpqE5qwJk15Somc
	wChGkSqR3d6uBDpcPo3I/Sh6ocgeVZQBWZMc/Q+mYkruWPKx1AgCTo0grc6zyhslBTx7DH3F2jz5Y
	WHDWNIUvAvCowpKlUGI4UUKJwVzgzz3UbApDWT0tS5k1nenIttHV/AEEY0bmkkOHctJXr7HcaIcZB
	NoubIrDTeiYC/RjzC6E/Ly2Mn+ZVg2yZ2c7S+G4O9iPoi3YDVLkkpTi1j47ciPuTclRN6GZ6PpELG
	40u+HViHgw21MLJ1VTnL3iHvvlKMHj7sFYrW9Y9ltK3T8iQN57HnEmPQyR6jlK390Ujqc/GTU9xYm
	1SpS30IA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r51qt-00Bp4L-0a;
	Mon, 20 Nov 2023 10:50:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r51qn-00Bp3d-3C
	for barebox@lists.infradead.org;
	Mon, 20 Nov 2023 10:49:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r51qj-0001SN-N2; Mon, 20 Nov 2023 11:49:53 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r51qh-00AKUE-Ht; Mon, 20 Nov 2023 11:49:51 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r51qh-003KpU-1U;
	Mon, 20 Nov 2023 11:49:51 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Yann Sionneau <ysionneau@kalrayinc.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 20 Nov 2023 11:49:43 +0100
Message-Id: <20231120104943.795034-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231120083750.3967831-1-a.fatoum@pengutronix.de>
References: <20231120083750.3967831-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231120_024958_045047_325EB48F 
X-CRM114-Status: GOOD (  14.53  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] fixup! libfile: implement read_fd counterpart to read_file
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

- Justify why the buffer is three bytes longer than the file's content
  (Yann)
- Check for malloc failure (Yann)
- Don't close file descriptor on failure as it's opened outside
  the function
- set errno to indicate why the function failed

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 lib/libfile.c | 29 ++++++++++++++++++++---------
 1 file changed, 20 insertions(+), 9 deletions(-)

diff --git a/lib/libfile.c b/lib/libfile.c
index c257baaa2733..a7762ab833f6 100644
--- a/lib/libfile.c
+++ b/lib/libfile.c
@@ -314,7 +314,9 @@ EXPORT_SYMBOL(read_file);
  * This function reads a file descriptor from offset 0 until EOF to an
  * allocated buffer.
  *
- * Return: The buffer containing the file or NULL on failure
+ * Return: On success, returns a nul-terminated buffer with the file's
+ * contents that should be deallocated with free().
+ * On error, NULL is returned and errno is set to an error code.
  */
 void *read_fd(int fd, size_t *out_size)
 {
@@ -329,24 +331,33 @@ void *read_fd(int fd, size_t *out_size)
 		off = lseek(fd, SEEK_SET, 0);
 	}
 	if (off < 0) {
-		ret = off;
-		goto close_fd;
+		errno = -off;
+		return NULL;
 	}
 
+	/* For user convenience, we always nul-terminate the buffer in
+	 * case it contains a string. As we don't want to assume the string
+	 * to be either an array of char or wchar_t, we just unconditionally
+	 * add 2 bytes as terminator. As the two byte terminator needs to be
+	 * aligned, we just make it three bytes
+	 */
 	buf = malloc(size + 3);
+	if (!buf) {
+		errno = ENOMEM;
+		return NULL;
+	}
+
 	ret = read_full(fd, buf, size);
 	if (ret < 0) {
 		free(buf);
-		goto close_fd;
+		errno = -ret;
+		return NULL;
 	}
 
-	memset(&buf[size], '\0', 3);
+	memset(buf + size, '\0', 3);
 	*out_size = size;
 
-close_fd:
-	close(fd);
-
-	return ret < 0 ? NULL : buf;
+	return buf;
 }
 EXPORT_SYMBOL(read_fd);
 
-- 
2.39.2



