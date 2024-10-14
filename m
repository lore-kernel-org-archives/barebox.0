Delivery-date: Mon, 14 Oct 2024 15:30:19 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0L9P-004H4M-0z
	for lore@lore.pengutronix.de;
	Mon, 14 Oct 2024 15:30:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0L9O-0003QC-HG
	for lore@pengutronix.de; Mon, 14 Oct 2024 15:30:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VUwM/Q269aQP/K/tKnQlAfnZ3BGWjhjFZSUA38/Zf6o=; b=s/uD1keb3eycm8EVBJESNsZf6p
	AxAD+iv8LZ8+NLhfC8c5jQL4nMQmtwqET9HDkSS5t1j7Xz3m85znWlD6a1AvggSpnFvO1keR9gfwF
	/rSMiH8NH8WlO/FuUFgxY/rZlsdojQ0wooxOuDZYk2V7kDM9vdFw/7jSnC2RCDVMFCh41mrvUYSxA
	m3PViYTAZDpYosyStEXZiiPXKrVqU4iVPnn3f149vpRWeIorS4kFdfhCcHeSIzLeh0JvAcIfNhaw4
	oX6dxj/Vk7iF6DcWCH3ZCRXLBShNtrV+DwuJ6niWtVAT8xcdSea9J1Nq0FEt7CPuVUJekzb+eZJ/q
	rrHLJUDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0L8n-00000005Hd7-49h6;
	Mon, 14 Oct 2024 13:29:42 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0JbC-00000004zLu-0TIv
	for barebox@bombadil.infradead.org;
	Mon, 14 Oct 2024 11:50:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=VUwM/Q269aQP/K/tKnQlAfnZ3BGWjhjFZSUA38/Zf6o=; b=SSxOUjA2tSINlJEzq4+eE+CPPo
	G6UgoFDxzylAOzKCha8fVMXjZzkrV/LP3qt8LVPQKyEsON7bXuEHzQ7Bmi/UIucJOPVQh1k9xAA/3
	bFVHrNXzHuvNJTpK+CZUA6OahZ4NYKXSrfoPXBRgCPQonO+iE3Hp22uCNYW7WdIXhY+uF8aCtMwow
	hCvSChs/6dm1ejiPOXToWkWZVJoyuXjMX+aBSx84RoezizxytyF8nXyQsmpC5mDHUmTjWDrb0Iw4a
	1+uQJ/zfUkPgqyB4ISN3mESm+jg12Fm+qs427nSJsokoKlXyGnLdx3CyLsAgQC5OIUFmwI7sVSOEM
	PIkUnmsA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0Jb9-00000006Kng-01ug
	for barebox@lists.infradead.org;
	Mon, 14 Oct 2024 11:50:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0Jb0-0001C3-IC; Mon, 14 Oct 2024 13:50:42 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0Jb0-001mUV-4y; Mon, 14 Oct 2024 13:50:42 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0Jb0-00BvdQ-0D;
	Mon, 14 Oct 2024 13:50:42 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Oct 2024 13:50:31 +0200
Message-Id: <20241014115040.2843121-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241014115040.2843121-1-a.fatoum@pengutronix.de>
References: <20241014115040.2843121-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_125051_216133_0244C3E6 
X-CRM114-Status: UNSURE (   9.84  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 03/12] include: common.h: move out integer string parsing functions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The <linux/kstrtox.h> header is already included into <common.h> via
<linux/kernel.h> and includes a lot more integer parsing functions, so
let's move the few such functions in common.h there as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/common.h        | 6 ------
 include/linux/kstrtox.h | 6 ++++++
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/include/common.h b/include/common.h
index 6baab254c80e..d8e55114ce23 100644
--- a/include/common.h
+++ b/include/common.h
@@ -53,12 +53,6 @@ int	readline	(const char *prompt, char *buf, int len);
 /* common/memsize.c */
 long	get_ram_size  (volatile long *, long);
 
-int parse_area_spec(const char *str, loff_t *start, loff_t *size);
-
-/* Just like simple_strtoul(), but this one honors a K/M/G suffix */
-unsigned long strtoul_suffix(const char *str, char **endp, int base);
-unsigned long long strtoull_suffix(const char *str, char **endp, int base);
-
 int mem_parse_options(int argc, char *argv[], char *optstr, int *mode,
 		char **sourcefile, char **destfile, int *swab);
 int memcpy_parse_options(int argc, char *argv[], int *sourcefd,
diff --git a/include/linux/kstrtox.h b/include/linux/kstrtox.h
index 51493c71292b..a98f5791a368 100644
--- a/include/linux/kstrtox.h
+++ b/include/linux/kstrtox.h
@@ -118,6 +118,12 @@ extern long simple_strtol(const char *,char **,unsigned int);
 extern unsigned long long simple_strtoull(const char *,char **,unsigned int);
 extern long long simple_strtoll(const char *,char **,unsigned int);
 
+/* Just like simple_strtoul(), but this one honors a K/M/G suffix */
+unsigned long strtoul_suffix(const char *str, char **endp, int base);
+unsigned long long strtoull_suffix(const char *str, char **endp, int base);
+
 extern s64 simple_strtofract(const char *cp, char **endp, u32 division);
 
+int parse_area_spec(const char *str, loff_t *start, loff_t *size);
+
 #endif
-- 
2.39.5



