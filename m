Delivery-date: Wed, 03 Jan 2024 19:32:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL62p-002NYe-1y
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 19:32:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL62m-0003Zl-CW
	for lore@pengutronix.de; Wed, 03 Jan 2024 19:32:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gWOdjdvwUNoK9ZvsuhjPiuoOyvTpgjtrA9UfO+aYRs0=; b=2n2LUZFyOUt8H8KcGal2IJ1NWy
	4pA+MNmgYwGZnpiC4PtvllUyQgkUIdnxC3P2IRAaez0mEe1+T5b78IuC0FI+c/zsZewJdq5Rtay/h
	8dRm6hOW+yYlYTRATGymLIQKqTadutZ1KPlF1crM2lEyLMpZ53d296PzGfZjNvb4EnqkNcGGIRzn6
	0XSNe+gEj8AU9MDaJSZ6wiYtjB2Fw9CgAmweze82+pl/nyoKEdbHXijP14PQNulUyuBEQZfmA+d6z
	Neev/fjNSEuYliEfpaolsjASl2afk8F4976s4YlLEdCvQOmRv3+YTwMeT96swlKbtILUPtU3aNv12
	rR3YX88g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61Y-00Bhdo-1l;
	Wed, 03 Jan 2024 18:31:28 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL619-00BhCy-20
	for barebox@bombadil.infradead.org;
	Wed, 03 Jan 2024 18:31:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=gWOdjdvwUNoK9ZvsuhjPiuoOyvTpgjtrA9UfO+aYRs0=; b=A1n8W58fEYDvWnQnzo4v33luxX
	aG4Bjsd3NIa+K9fc9OZBTMGmzG6LWYIWq/f+Rk/azmOqR+wEuXAmW0FuqYnNuimEwNRkxLWHQjeKs
	galewkNYGwFoodMz9Z7F75GbjDu91lSwVot7YxXkYnRkU2J0xYlh0H2U0G24KIo9PQWyidC7iXroB
	l2omV3iL4M1HFvs1OYJiHi/aFwvCl2De25lgI+gUHzxXzngi2of/siV/EFImf+wFrd6Iy9VEkyA7g
	335EXNb7Ah0Vg91reM/nIytpJSXNAG7QSTWnyWCaOT5EANE91wwvIYz6J0Fa7nF1qv01u6tbwKYQy
	zAYRtU4Q==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL610-005eC2-2P
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 18:31:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL60z-0001Rt-PA; Wed, 03 Jan 2024 19:30:53 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL60z-000AtV-CL; Wed, 03 Jan 2024 19:30:53 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k3-001j4X-0D;
	Wed, 03 Jan 2024 19:13:23 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:12:07 +0100
Message-Id: <20240103181312.409668-48-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_183055_288700_834311DD 
X-CRM114-Status: GOOD (  12.22  )
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
Subject: [PATCH 047/112] string: reduce strjoin runtime, drop trailing separator
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The implementation of strjoin is a bit suboptimal. The destination
string is traversed from the beginning due to strcat and we have a
left-over separator at the end, while it should only be in-between.

Fix this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Originally posted at: https://lore.barebox.org/barebox/20221027073334.GS6702@pengutronix.de/

Changes:
  - remove if statemnt in loop (Sascha)
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 lib/string.c | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/lib/string.c b/lib/string.c
index d8e5edd40648..695e50bc8fc1 100644
--- a/lib/string.c
+++ b/lib/string.c
@@ -1005,7 +1005,7 @@ char *strjoin(const char *separator, char **arr, size_t arrlen)
 {
 	size_t separatorlen;
 	int len = 1; /* '\0' */
-	char *buf;
+	char *buf, *p;
 	int i;
 
 	separatorlen = strlen(separator);
@@ -1013,13 +1013,18 @@ char *strjoin(const char *separator, char **arr, size_t arrlen)
 	for (i = 0; i < arrlen; i++)
 		len += strlen(arr[i]) + separatorlen;
 
-	buf = xzalloc(len);
+	if (!arrlen)
+		return xzalloc(1);
 
-	for (i = 0; i < arrlen; i++) {
-		strcat(buf, arr[i]);
-		strcat(buf, separator);
+	p = buf = xmalloc(len);
+
+	for (i = 0; i < arrlen - 1; i++) {
+		p = stpcpy(p, arr[i]);
+		p = mempcpy(p, separator, separatorlen);
 	}
 
+	stpcpy(p, arr[i]);
+
 	return buf;
 }
 EXPORT_SYMBOL(strjoin);
-- 
2.39.2



