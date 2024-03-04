Delivery-date: Mon, 04 Mar 2024 20:04:57 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDcP-008d99-0Q
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 20:04:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDcO-00006h-0L
	for lore@pengutronix.de; Mon, 04 Mar 2024 20:04:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=w9mYiaaEcGu76mrtaRNhU3OhZr+jzQtMaMsXKj+Ap+8=; b=by2yWWbQQiJiLoY4vSJ8nxa1Wr
	uQc7gYGDd9egJyXR5OWO3QOaAbzSnsE5tjGcH2I1u9cizV/Ux9tJ4aqeqCFi6ZtIP1Tzk7sHl2+W0
	fgnXWOZkTDiFg76G127qbCr/fYXJW8yndV5bh0bD0Oj+M+qk26HOrAMfy9sShwkARjnRWVnGI9b9t
	xVhFFdZWAJyuw3RIwOa+JDJ6utmwz7ubiUWUNjnYYCgEMdn0i+T7f92NHv9qApyCWRkoKjMl1X78+
	B0NHP4D8vYTU3j6gUW1IvzLB4WVMYJLGBNkJslIVKBGBvPBRiG/Sx9YeQAbfv+zhQvlRNG3Qrouim
	ANAak7rA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDbo-0000000AJU3-0rUs;
	Mon, 04 Mar 2024 19:04:21 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaO-0000000AIQQ-1CBl
	for barebox@bombadil.infradead.org;
	Mon, 04 Mar 2024 19:02:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=w9mYiaaEcGu76mrtaRNhU3OhZr+jzQtMaMsXKj+Ap+8=; b=GwJTBplG7Z4DsDGIICmnxxYDmM
	CLxeZHfrWJ5P0cp1XXzT/zXKMWk9gQPPDoBd8g0NJ/d3tJGcOK2NN4omHXCXuPC51XqUAMyq3vMdu
	av8xMCE98j3Q4doJzuxFf6oV5qLqCxdHhLyFhZrwaREMb53wbftwtwqIFHluHIMLdT9DsilFvAx9k
	7xYboTsmHbHQbqifUpJ8zRzxAUw7KmhZhlTUF0PQxZsmyfSAYqKmDb6a/5rhCWvfa8Cz4/L2VE6Ux
	X4LC6W4GpU/DBsVgLOjwlIbADOJMnVRU3l+pMXJighe7l0L4YLDiAsHkU4a9SBgPddlYMj/v0oH5P
	fAHEyteQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaG-000000051w3-0E1k
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 19:02:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaE-00063d-UK; Mon, 04 Mar 2024 20:02:42 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaE-004PIA-Gd; Mon, 04 Mar 2024 20:02:42 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYO-00Ed9V-0O;
	Mon, 04 Mar 2024 20:00:48 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  4 Mar 2024 20:00:38 +0100
Message-Id: <20240304190038.3486881-114-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
References: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_190244_199509_7C82F952 
X-CRM114-Status: GOOD (  11.78  )
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
Subject: [PATCH v2 113/113] commands: efi_handle_dump: don't ignore failure to parse GUID
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

simple_strtoul should probably be removed altogether. Let's start by
removing it from efi_handle_dump.c, so invalid input is not ignored.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/efi_handle_dump.c | 32 +++++++++++++++++---------------
 1 file changed, 17 insertions(+), 15 deletions(-)

diff --git a/commands/efi_handle_dump.c b/commands/efi_handle_dump.c
index 461d330c2fa4..a9db5eb75b69 100644
--- a/commands/efi_handle_dump.c
+++ b/commands/efi_handle_dump.c
@@ -69,8 +69,6 @@ static int do_efi_protocol_dump(struct efi_boot_services *bs, int argc, char **a
 	/* Format 220e73b6-6bdb-4413-8405-b974b108619a */
 	if (argc == 1) {
 		ret = guid_parse(argv[0], &guid);
-		if (ret)
-			return ret;
 	} else if (argc == 11) {
 		u32 a;
 		u16 b, c;
@@ -80,22 +78,26 @@ static int do_efi_protocol_dump(struct efi_boot_services *bs, int argc, char **a
 		 *   or
 		 *	0x220e73b6 0x6bdb 0x14413 0x84 0x05 0xb9 0x74 0xb1 0x08 0x61 0x9a
 		 */
-		a = simple_strtoul(argv[0], NULL, 16);
-		b = simple_strtoul(argv[1], NULL, 16);
-		c = simple_strtoul(argv[2], NULL, 16);
-		d0 = simple_strtoul(argv[3], NULL, 16);
-		d1 = simple_strtoul(argv[4], NULL, 16);
-		d2 = simple_strtoul(argv[5], NULL, 16);
-		d3 = simple_strtoul(argv[6], NULL, 16);
-		d4 = simple_strtoul(argv[7], NULL, 16);
-		d5 = simple_strtoul(argv[8], NULL, 16);
-		d6 = simple_strtoul(argv[9], NULL, 16);
-		d7 = simple_strtoul(argv[10], NULL, 16);
-		guid = EFI_GUID(a, b, c, d0, d1, d2, d3, d4, d5, d6, d7);
+		ret =        kstrtou32(argv[0], 16, &a);
+		ret = ret ?: kstrtou16(argv[1], 16, &b);
+		ret = ret ?: kstrtou16(argv[2], 16, &c);
+		ret = ret ?: kstrtou8(argv[3],  16, &d0);
+		ret = ret ?: kstrtou8(argv[4],  16, &d1);
+		ret = ret ?: kstrtou8(argv[5],  16, &d2);
+		ret = ret ?: kstrtou8(argv[6],  16, &d3);
+		ret = ret ?: kstrtou8(argv[7],  16, &d4);
+		ret = ret ?: kstrtou8(argv[8],  16, &d5);
+		ret = ret ?: kstrtou8(argv[9],  16, &d6);
+		ret = ret ?: kstrtou8(argv[10], 16, &d7);
+		if (!ret)
+			guid = EFI_GUID(a, b, c, d0, d1, d2, d3, d4, d5, d6, d7);
 	} else {
-		return -EINVAL;
+		ret = -EINVAL;
 	}
 
+	if (ret)
+		return ret;
+
 	printf("Searching for:\n");
 	printf("  %pUl: %s\n", &guid, efi_guid_string(&guid));
 
-- 
2.39.2



