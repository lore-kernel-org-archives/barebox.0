Delivery-date: Mon, 13 Apr 2026 12:11:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCEGl-00BgHw-36
	for lore@lore.pengutronix.de;
	Mon, 13 Apr 2026 12:11:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCEGl-0001c1-Am
	for lore@pengutronix.de; Mon, 13 Apr 2026 12:11:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vbgCAiCmmP04c6SaKMicwpCb/wrWZEb+arm9Zr5wR18=; b=rBu3C8zXSXuYrg0tistKvQ9SeM
	W4pZ3DOClw66RJeGBQyXSUL+Mwc9sqcLlvHeoFvEwkxlFYI7weG7RzfYsCzgOCyiv8TPuQ9ZRxPG6
	XsRGCWoPXwcRBLTN1+lpWCH4M/COouhLO5bPhpAwiv/UltdUw1shrCnKPc6Ne6XE7BBcN9zEPbUQL
	/JQsZpRDFIUhBDaWz7Bc4yH9AuF7U87Fp+2QOTGorQBKOI4DXXh2MSLqFkFX+wlEka2NdxG0P5ivr
	onUgSvp4lVt8aTeoEtEFxmzfx6oJlXelYzKGl+4ONRJD0UtygjA1vw4UkjnvEgpgHeXU2gsQYo7ui
	YKXNw/Hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCEGN-0000000FS7c-2r04;
	Mon, 13 Apr 2026 10:11:27 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCEGJ-0000000FS3d-2d9I
	for barebox@bombadil.infradead.org;
	Mon, 13 Apr 2026 10:11:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=vbgCAiCmmP04c6SaKMicwpCb/wrWZEb+arm9Zr5wR18=; b=JIehhc2MaihdtWVKqSaFL8lusN
	HM45YMN5XB9FdiYtz4poHeZHaSg8A1CfWL2RtXnYxyhtSrYdiqES8o1T26shE4z8QJjbgbcUS6/Ep
	yKG3cSH+XQkudrhqKiH265mfUmLXMtPePVooTpy1eFgzh1brwTNmx8+HGHs1vST8Mptfyqu8zHrbP
	G/Phmf8T1Qyb2aJzuAKrz+ApZ0N8htIE/pSTlAhkva0VUKtPEiuzCYp+c5jyCeEg70sQtWgWPeNs3
	oSJXnVgthnpdX06/fPwEMzRcdEmClsfwNHHBGHBd+m7Cw2wfhgQbloUR7pNJHE1KXCxBxz6UwvFi4
	/+Jwjcww==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCEGG-0000000GZ67-1KeB
	for barebox@lists.infradead.org;
	Mon, 13 Apr 2026 10:11:21 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wCEGF-0001Is-Rx; Mon, 13 Apr 2026 12:11:19 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 13 Apr 2026 12:09:37 +0200
Message-ID: <20260413101118.1462119-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260413101118.1462119-1-a.fatoum@barebox.org>
References: <20260413101118.1462119-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_111120_448504_27FF3351 
X-CRM114-Status: GOOD (  10.28  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/7] stddef: implement scoped_var for use in iterators
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Our various iterator macros depend on a variable being declared
beforehand, which can be error prone as the value after the last
iteration completed may not be stable or even invoke undefined behavior
on access.

To allow restricting lifetime to only the iteration, implement
scoped_var, a macro for scoping a variable definitions to the statement
following it. The implementation is inspired by Linux __scoped_class.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 include/linux/stddef.h | 29 +++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/include/linux/stddef.h b/include/linux/stddef.h
index 88ff6f1733d2..e5e0421fe558 100644
--- a/include/linux/stddef.h
+++ b/include/linux/stddef.h
@@ -139,4 +139,33 @@ typedef unsigned short wchar_t;
 #define DECLARE_FLEX_ARRAY(TYPE, NAME) \
 	__DECLARE_FLEX_ARRAY(TYPE, NAME)
 
+#define __scoped_var(decl, _label)	 	\
+	for (decl; ; ({ goto _label; }))	\
+		if (0) {			\
+_label:						\
+			break;			\
+		} else
+
+/**
+ * scoped_var - declare a variable scoped to the following statement
+ * @type:       the full type (e.g. ``struct foo *`` or ``int``)
+ * @name:       the variable name to declare
+ *
+ * Declares @name as @type, initialized to 0, whose scope is limited
+ * to the immediately following statement. Works with both pointer and
+ * scalar types. Intended for use with existing loop macros to add scoped
+ * iterator variables without duplicating the loop body.
+ *
+ * Example with a list iterator:
+ *
+ * .. code-block:: c
+ *
+ *   scoped_var(struct foo *p)
+ *       list_for_each_entry(p, &head, member) {
+ *           // use p
+ *       }
+ *   // p is out of scope here
+ */
+#define scoped_var(decl) __scoped_var(decl, __UNIQUE_ID(label))
+
 #endif
-- 
2.47.3



