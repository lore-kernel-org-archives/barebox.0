Delivery-date: Mon, 05 Sep 2022 12:58:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oV9nq-007POk-6B
	for lore@lore.pengutronix.de; Mon, 05 Sep 2022 12:58:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oV9nk-0000Lb-Ro
	for lore@pengutronix.de; Mon, 05 Sep 2022 12:58:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+nOuaWCPW213BLNjzqV3OdC6rPhzahsNKXYAAIFw6X4=; b=wamkk60aEV/bbczfyIKFx57a/M
	0dYKxutxMZkzSAMadQbKz4rKU7+vIbU4MH9kXuTTbaTXSKO0v5hd+8au/5GIPrbh+KH442QfHuY2v
	mLJgV/yJUNXnNL69Oc5Hx1Doder29mLPHnPqJLsyZvcJVOgRteXD+F9DkC2xQ/D1pFIcLI3RUVPUr
	fuNsDZQyOH/Z+IlRM0Tb2y866XRB6AK9ikkwyhRPPtE+YmH+2EtrG4s7awJ7IwYH31YENWMov6YXF
	kUtJ5u6IZlldNkodsMom9iFa2oLbaBEytc9LaOFbmqkhoskny/lBnyGP53vqB110FNsPNw42rR0ca
	IuERX87g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV9g3-000evB-Fh; Mon, 05 Sep 2022 10:50:03 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV8q6-00H4Al-Eu
	for barebox@bombadil.infradead.org; Mon, 05 Sep 2022 09:56:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=+nOuaWCPW213BLNjzqV3OdC6rPhzahsNKXYAAIFw6X4=; b=ETJlGmKIlPZ4q5oaPjMwQcvTiG
	S215S35wPpkG0y0TOkSoo4ERC6awhyqYDZuoVlKWUb3rxC1vwE8/JD7tb4iUUTgXuOcJM56edpyDB
	w8hO8uMAnievBN+Re3U/+qLOrZeBkGQFtwFz9J1NLrJKqJo7qcD8+qeFDsIN1PlhSEkChLD7qfujS
	sQxzZ5D55ljHQ33Kup2sWAsYPfjFItngAwC0X46AqdXo1qQXKyyoNeClGzamGAQKOGlFc/e6q8Mue
	jZ/nsSQYkahrrjjUEYtsHbKdhdPrMx/3SkqNRzi8MVfFZPMv24CApB9kUOmYveFfjcnTo7Mx+X12e
	m0u8KLhw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV8pz-009UjH-8N
	for barebox@lists.infradead.org; Mon, 05 Sep 2022 09:56:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8pr-0008Gk-6H; Mon, 05 Sep 2022 11:56:07 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8po-0042GT-CQ; Mon, 05 Sep 2022 11:56:06 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV8pm-002Wf4-4e; Mon, 05 Sep 2022 11:56:02 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Sep 2022 11:55:55 +0200
Message-Id: <20220905095557.596891-31-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220905095557.596891-1-a.fatoum@pengutronix.de>
References: <20220905095557.596891-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220905_105616_059063_2B12892F 
X-CRM114-Status: UNSURE (   9.40  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 30/32] lib: parse_area_spec: guard against NULL pointer dereference
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

If mem_parse_options is called with an optstr containing x, but with
swab == NULL, we will end up doing a NULL pointer dereference. Add a
check that avoids this from happening.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 lib/misc.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/lib/misc.c b/lib/misc.c
index 532f0bfc1eb5..2d5f7c198586 100644
--- a/lib/misc.c
+++ b/lib/misc.c
@@ -159,6 +159,8 @@ int mem_parse_options(int argc, char *argv[], char *optstr, int *mode,
 			*destfile = optarg;
 			break;
 		case 'x':
+			if (!swab)
+				return -EINVAL;
 			*swab = 1;
 			break;
 		default:
-- 
2.30.2



