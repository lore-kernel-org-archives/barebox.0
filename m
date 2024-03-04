Delivery-date: Mon, 04 Mar 2024 20:03:52 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDbM-008d28-1U
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 20:03:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDbK-0007O7-U9
	for lore@pengutronix.de; Mon, 04 Mar 2024 20:03:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AoVUmHmLbzzbdQ/IbUYjHeGH7Z67c3K3JvsqYcS5hyA=; b=RwE90a/rBROkzWBzcfn4bcwtgG
	uPdHr1GKnCXxjwh++q+p6MeEQvr4JvyCMFezFx/rJ3Um/07ZB1DwFcmgXGPgy/do5fN+uz4sxL0kA
	VGRyqFmLBaFWRpagDYOBoi3gRDtIXeYeTSR8qSZvJUCL4ixcVrnl0DJFaTgCU0pPfDWqC2ZwLm40s
	ab2ruagSMCHR7LpHQ2WOAqAGgLmoxo/l7dbs6Yr4U7bEUqYd6ZlEgv8dxU7myrTnhGxdCOQcOvr7C
	X+aB3pQ4iDTcsmPO2snFdPS5MAmEbe7bymv8sFN5gRQGBI3nOwDFn9hKwkqk6lu1TAhGwJ2svszID
	qZSSNDAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDak-0000000AIib-0m61;
	Mon, 04 Mar 2024 19:03:14 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaL-0000000AINe-0B76
	for barebox@bombadil.infradead.org;
	Mon, 04 Mar 2024 19:02:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=AoVUmHmLbzzbdQ/IbUYjHeGH7Z67c3K3JvsqYcS5hyA=; b=JlLac4MlUD30PZMZoT1sq9MQu3
	A2t8hf6HhMiHSo4OhwBvcbvJkGzrjmjc4AOcoHR1o3hMOOfAV0rw9myi6d+VXKEnq4RrZRwizMEZk
	jybrDejXHjR6Cx0Me2FR+8iwKOWHiavQRS5rbGsDHndnfOGbc3tjswuYSD783pO3UZl5unnJKHqIN
	3s7czWll8J7JKK5o5NvujjkJ6siYjHiTBLeujftv2pm9gDS9ybwE+QnvqkWvTeNJoAFeu+ZSNa/sz
	8M29nRNBKVxwBKhfaoKzHqkY5/eX+DlEnckZjRRBd4+SE+kKCm4Rli3s+JC8qL8RoeR19vIQ4noy5
	BKyRB7Pg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaF-000000051vg-2Ovs
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 19:02:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaE-00061M-7j; Mon, 04 Mar 2024 20:02:42 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaD-004PHO-Pt; Mon, 04 Mar 2024 20:02:41 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYN-00Ed9V-0K;
	Mon, 04 Mar 2024 20:00:47 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  4 Mar 2024 20:00:15 +0100
Message-Id: <20240304190038.3486881-91-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
References: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_190243_937433_7EED0781 
X-CRM114-Status: GOOD (  17.11  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 090/113] lib: vsprintf: align documentation with current feature set
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The documentation lists modifiers unsupported by barebox and lacks
modifiers that are actually supported. Align the documentation with the
currently supported feature set and reorder it to the same order used
inside the pointer() main switch statement.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - new patch
---
 lib/vsprintf.c | 25 +++++++++++++++----------
 1 file changed, 15 insertions(+), 10 deletions(-)

diff --git a/lib/vsprintf.c b/lib/vsprintf.c
index b12d04e37885..4458616e442b 100644
--- a/lib/vsprintf.c
+++ b/lib/vsprintf.c
@@ -472,8 +472,6 @@ char *device_node_string(char *buf, const char *end, const struct device_node *n
  *
  * Right now we handle:
  *
- * - 'I' [4] for IPv4 addresses printed in the usual way
- *       IPv4 uses dot-separated decimal without leading 0's (1.2.3.4)
  * - 'S' For symbolic direct pointers
  * - 'U' For a 16 byte UUID/GUID, it prints the UUID/GUID in the form
  *       "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
@@ -493,12 +491,18 @@ char *device_node_string(char *buf, const char *end, const struct device_node *n
  *       correctness of the format string and va_list arguments.
  * - 'a[pd]' For address types [p] phys_addr_t, [d] dma_addr_t and derivatives
  *           (default assumed to be phys_addr_t, passed by reference)
+ * - 'I' [4] for IPv4 addresses printed in the usual way
+ *       IPv4 uses dot-separated decimal without leading 0's (1.2.3.4)
+ * - 'e' For formatting error pointers as string descriptions
+ * - 'OF' For a device tree node
+ * - 'h[CDN]' For a variable-length buffer, it prints it as a hex string with
+ *            a certain separator (' ' by default):
+ *              C colon
+ *              D dash
+ *              N no separator
+ * - 'JP' For a JSON path
  * - 'M' For a 6-byte MAC address, it prints the address in the
  *       usual colon-separated hex notation
- *
- * Note: The difference between 'S' and 'F' is that on ia64 and ppc64
- * function pointers are really function descriptors, which contain a
- * pointer to the real address.
  */
 static char *pointer(const char *fmt, char *buf, const char *end, const void *ptr,
 		     int field_width, int precision, int flags)
@@ -573,10 +577,11 @@ static char *errno_string(char *buf, const char *end, int field_width, int preci
  * @fmt: The format string to use
  * @args: Arguments for the format string
  *
- * This function follows C99 vsnprintf, but has some extensions:
- * %pS output the name of a text symbol
- * %pF output the name of a function pointer
- * %pR output the address range in a struct resource
+ * This function generally follows C99 vsnprintf, but has some
+ * extensions and a few limitations:
+ *
+ *  - ``%n`` is unsupported
+ *  - ``%p*`` is handled by pointer()
  *
  * The return value is the number of characters which would
  * be generated for the given input, excluding the trailing
-- 
2.39.2



