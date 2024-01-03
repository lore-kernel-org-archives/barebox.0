Delivery-date: Wed, 03 Jan 2024 19:36:56 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL66q-002OHN-2n
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 19:36:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL66k-0008HZ-Qa
	for lore@pengutronix.de; Wed, 03 Jan 2024 19:36:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dvit1+M/JGv/htFqc0f3SrKRmV5c6nV8dRfkYxUSxvU=; b=CplI9Ds5BMyjd8OI2bA4EQ6Y1U
	Y90c6eeUKxvR/e90LVs9a3eNWly5sNo9+5n8uRuJ5DY1ECW0vegwmw34+9QQiVH8uuC0U+MpXuPfR
	cA7yZvSMTWdGQ8KHaemhg90L6HoXf19cvMhpWLp+2+0nLUObwFwIinXZNr9OfA6wtj2tECNCkrmMa
	tqV8NzJhNdNHP4Nl+AeXl10kjq4k/jegHCXwAqzo/sR7uReTh3+eh6DdnLuAMaqMDjCto+L36QcdM
	6tuSJa69OJun0gMM2d5sBBJBFlbammMIyFOUd8brjTK74VtvfpPqln5p2hsZblUpxXat4CEGWFkbr
	9FKqZZ3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL656-00BlsT-19;
	Wed, 03 Jan 2024 18:35:08 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61P-00BhTx-1I
	for barebox@bombadil.infradead.org;
	Wed, 03 Jan 2024 18:31:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=dvit1+M/JGv/htFqc0f3SrKRmV5c6nV8dRfkYxUSxvU=; b=K7tUp4/uA3zcsivWBJaXsV5IsA
	IfIb+xh2YmYy5aj4zDYQ9SyYH6CZbqf4gxtoBCWG/+cJMA66MOQTL6Xpkh3ZU9F9dQHcdJ6q5wHhE
	cdHn6KrYQewqUyI4VskNkek1vJvBB6wFQSgozRz3lKx1JYFGmNqRbaJZrwRH3kJpGfaD2dCWulMtq
	epM0Q50sjpAPDTv5ThjeYoduxkKxA+l7XxSpbaNQBfZ/W439pd0BLq/uhUmVQc0wiF/Wjj02Goq2k
	JzDRSzgaReOKHOiP4ZZV6Uo4prbRKRvEnNRQRniMCbuTIVsB1zDTXFjrRK2GgeKQchWgA0Dw5lZXN
	srvVArhA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1rL61H-00DImB-E7
	for barebox@lists.infradead.org; Wed, 03 Jan 2024 18:31:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL611-0001Xz-Ml; Wed, 03 Jan 2024 19:30:55 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL611-000AvW-A5; Wed, 03 Jan 2024 19:30:55 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k5-001j4X-2e;
	Wed, 03 Jan 2024 19:13:25 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:13:08 +0100
Message-Id: <20240103181312.409668-109-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_183112_776674_393D3E8B 
X-CRM114-Status: GOOD (  14.08  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 108/112] lib: uuid: implement uuid/guid_parse
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We opencode this at least once in EFI code, so import the Linux
definition and start using that instead.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 lib/uuid.c | 63 ++++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 63 insertions(+)

diff --git a/lib/uuid.c b/lib/uuid.c
index db75be1725bf..c83227c0d1e7 100644
--- a/lib/uuid.c
+++ b/lib/uuid.c
@@ -8,9 +8,72 @@
 
 #include <linux/uuid.h>
 #include <module.h>
+#include <linux/ctype.h>
 #include <linux/export.h>
 
 const guid_t guid_null;
 EXPORT_SYMBOL(guid_null);
 const uuid_t uuid_null;
 EXPORT_SYMBOL(uuid_null);
+
+const u8 guid_index[16] = {3,2,1,0,5,4,7,6,8,9,10,11,12,13,14,15};
+const u8 uuid_index[16] = {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15};
+
+/**
+ * uuid_is_valid - checks if a UUID string is valid
+ * @uuid:	UUID string to check
+ *
+ * Description:
+ * It checks if the UUID string is following the format:
+ *	xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx
+ *
+ * where x is a hex digit.
+ *
+ * Return: true if input is valid UUID string.
+ */
+bool uuid_is_valid(const char *uuid)
+{
+	unsigned int i;
+
+	for (i = 0; i < UUID_STRING_LEN; i++) {
+		if (i == 8 || i == 13 || i == 18 || i == 23) {
+			if (uuid[i] != '-')
+				return false;
+		} else if (!isxdigit(uuid[i])) {
+			return false;
+		}
+	}
+
+	return true;
+}
+EXPORT_SYMBOL(uuid_is_valid);
+
+static int __uuid_parse(const char *uuid, __u8 b[16], const u8 ei[16])
+{
+	static const u8 si[16] = {0,2,4,6,9,11,14,16,19,21,24,26,28,30,32,34};
+	unsigned int i;
+
+	if (!uuid_is_valid(uuid))
+		return -EINVAL;
+
+	for (i = 0; i < 16; i++) {
+		int hi = hex_to_bin(uuid[si[i] + 0]);
+		int lo = hex_to_bin(uuid[si[i] + 1]);
+
+		b[ei[i]] = (hi << 4) | lo;
+	}
+
+	return 0;
+}
+
+int guid_parse(const char *uuid, guid_t *u)
+{
+	return __uuid_parse(uuid, u->b, guid_index);
+}
+EXPORT_SYMBOL(guid_parse);
+
+int uuid_parse(const char *uuid, uuid_t *u)
+{
+	return __uuid_parse(uuid, u->b, uuid_index);
+}
+EXPORT_SYMBOL(uuid_parse);
-- 
2.39.2



