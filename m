Delivery-date: Mon, 04 Mar 2024 20:07:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDf3-008dRN-0a
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 20:07:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDf1-0002cV-HT
	for lore@pengutronix.de; Mon, 04 Mar 2024 20:07:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pc58CrroDTqD1c8VDdbEo1EeIXsH4Vm2Upccjn3GwBQ=; b=KE27KYOSuyjpcZzHkY6l8dqKqg
	jlJkr/6ea5EVbRBL6Z1WHlYwpxqBr2q4eiQjHoPof96iqdr2FIN5Ug74aiN/gC8GMkfFQNhUYuUNd
	pLZrAeG0G/Eiqx2uPqIyAixqvvuAZ9zDBOxKhou3ES4pDvQLtr+FLTmHSmvNkZTvQHru90YsTl7uF
	UQicTG1hTYCp3/V1giR2ltuHJJTkRilYPRKQY3iYMVz9YnqGxt4rYNjEuOtvwKzVzzoYSHTSyjXDx
	Mt/H9Eifhk6nfBaxWG5JuZxD/VBgpLVJ1uwO9UAe7D5sEnWHVdgMaGyywej5h5B1b11DP0ccf5kjp
	cRalgYWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDeA-0000000AL9P-3nv8;
	Mon, 04 Mar 2024 19:06:46 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaV-0000000AIVh-05Gq
	for barebox@bombadil.infradead.org;
	Mon, 04 Mar 2024 19:02:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=pc58CrroDTqD1c8VDdbEo1EeIXsH4Vm2Upccjn3GwBQ=; b=UT/Xgdf6QlWgxYIcF2Ud4Gwt/s
	ZH249SgLsfHvsgRWOKzXJwPhBI0CAhICMBv80OAEE0GB5mP0qSo0GbiZvjRrKm3AGS4V7X4Grni74
	snPqbCvEdjYUDie65ID71kafHkZy4JPgWa5kem9M986lS4ZDBUX6e40M8Wdf8hF9VEEx57qkfH+uz
	/7BuD+oRUO3n2McP8GLNyFz6N++IXfxPnZ236H9AQPRWVSpLOT5cMwTGij3kwX7zAWgSPLJk8AAw7
	U0kifmWD836BmyYuu2l3gx+IyKEe7sdZDUVEoyVeQQLRFaFpLJhvOh5ulkfwwKAlyN7Ez5CAnbTQO
	ylI6Wt4A==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaO-000000051vY-38Rm
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 19:02:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaG-00067t-A8; Mon, 04 Mar 2024 20:02:44 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaF-004PJZ-RU; Mon, 04 Mar 2024 20:02:43 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYN-00Ed9V-33;
	Mon, 04 Mar 2024 20:00:48 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  4 Mar 2024 20:00:34 +0100
Message-Id: <20240304190038.3486881-110-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
References: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_190253_009138_BC49EF35 
X-CRM114-Status: GOOD (  14.98  )
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
Subject: [PATCH v2 109/113] lib: uuid: implement uuid/guid_parse
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We opencode this at least once in EFI code, so import the Linux
definition and start using that instead.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 lib/uuid.c | 63 ++++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 63 insertions(+)

diff --git a/lib/uuid.c b/lib/uuid.c
index 60a651e3301a..1c134bfb4b15 100644
--- a/lib/uuid.c
+++ b/lib/uuid.c
@@ -9,6 +9,7 @@
 #include <linux/uuid.h>
 #include <module.h>
 #include <stdlib.h>
+#include <linux/ctype.h>
 #include <linux/export.h>
 
 const guid_t guid_null;
@@ -16,6 +17,9 @@ EXPORT_SYMBOL(guid_null);
 const uuid_t uuid_null;
 EXPORT_SYMBOL(uuid_null);
 
+const u8 guid_index[16] = {3,2,1,0,5,4,7,6,8,9,10,11,12,13,14,15};
+const u8 uuid_index[16] = {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15};
+
 /**
  * generate_random_uuid - generate a random UUID
  * @uuid: where to put the generated UUID
@@ -44,3 +48,62 @@ void generate_random_guid(unsigned char guid[16])
 	guid[8] = (guid[8] & 0x3F) | 0x80;
 }
 EXPORT_SYMBOL(generate_random_guid);
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



