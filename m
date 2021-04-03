Delivery-date: Sat, 03 Apr 2021 09:04:01 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lSaK9-00015y-2o
	for lore@lore.pengutronix.de; Sat, 03 Apr 2021 09:04:01 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lSaK6-0001o2-WA
	for lore@pengutronix.de; Sat, 03 Apr 2021 09:04:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=wwXZAearykgjpG1po8NMBgg5sdgxTutRvsvDgU2ufrw=; b=BW7hMLoMhp4nOiXxJ3HP0dHt3/
	JXQcgy44Dx0Z/J//uZeRUL3arEbCeBeQdE6Hn2UcCRrtff9vIuSYkaFmbpBHg3AFEIIR+PsIXCpw7
	Tow2kKl0QiaCeBu3mBjmb2klruaWOyhpDaL3FB01/wcv6FhRpVUVfoDVSEFjdqDCTgpgcH2J6eLdh
	6MeWYYCkKsMPA2dcG0TEfyh5nrpPfr98ZU25dsMcXv8JDu4oJ6o2C1Dnv5iJ1AKEMuKt7pRXc13Ow
	z9+RWdXuq8LtpMS6hLiwsAnDDfETa0xlMx3ZpVdWQRFMiU6vpoUOeTbMi+0Zv+QwOeQAj7xt6sRjn
	e6Dw+iwg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lSaJ4-00ENgt-Uj; Sat, 03 Apr 2021 07:02:55 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lSaIv-00ENfH-6g
 for barebox@lists.infradead.org; Sat, 03 Apr 2021 07:02:48 +0000
Received: from geraet.fritz.box (muedsl-82-207-194-145.citykom.de
 [82.207.194.145]) (Authenticated sender: ahmad@a3f.at)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 48846100002;
 Sat,  3 Apr 2021 07:02:41 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Sat,  3 Apr 2021 09:02:34 +0200
Message-Id: <20210403070237.3642189-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210403_080245_300227_DC3AB547 
X-CRM114-Status: GOOD (  11.52  )
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
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/4] PBL: fdt: implement fdt_device_get_match_data
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Currently, the generic DT image can't properly have a PBL console,
because it's only known at runtime what system we are running on.

As we already parse the FDT in the PBL to get the memory regions, we
could extract the board compatible as well and determine which UART to
use. Add a helper to achieve this.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 include/pbl.h |  9 +++++++++
 pbl/fdt.c     | 36 ++++++++++++++++++++++++++++++++++++
 2 files changed, 45 insertions(+)

diff --git a/include/pbl.h b/include/pbl.h
index 194d5e750839..f58daec7351a 100644
--- a/include/pbl.h
+++ b/include/pbl.h
@@ -34,4 +34,13 @@ ssize_t pbl_fat_load(struct pbl_bio *, const char *filename, void *dest, size_t
 
 void fdt_find_mem(const void *fdt, unsigned long *membase, unsigned long *memsize);
 
+struct fdt_device_id {
+	const char *compatible;
+	const void *data;
+};
+
+const void *
+fdt_device_get_match_data(const void *fdt, const char *nodepath,
+			  const struct fdt_device_id ids[]);
+
 #endif /* __PBL_H__ */
diff --git a/pbl/fdt.c b/pbl/fdt.c
index b4a40a514b8b..03260cb61971 100644
--- a/pbl/fdt.c
+++ b/pbl/fdt.c
@@ -68,3 +68,39 @@ err:
 	pr_err("No memory, cannot continue\n");
 	while (1);
 }
+
+const void *fdt_device_get_match_data(const void *fdt, const char *nodepath,
+				      const struct fdt_device_id ids[])
+{
+	int node, length;
+	const char *list, *end;
+	const struct fdt_device_id *id;
+
+	node = fdt_path_offset(fdt, nodepath);
+	if (node < 0)
+		return NULL;
+
+	list = fdt_getprop(fdt, node, "compatible", &length);
+	if (!list)
+		return NULL;
+
+	end = list + length;
+
+	while (list < end) {
+		length = strnlen(list, end - list) + 1;
+
+		/* Abort if the last string isn't properly NUL-terminated. */
+		if (list + length > end)
+			return NULL;
+
+		for (id = ids; id->compatible; id++) {
+			if (strlen(id->compatible) == length &&
+			    !memcmp(list, id->compatible, length))
+				return id->data;
+		}
+
+		list += length;
+	}
+
+	return NULL;
+}
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

