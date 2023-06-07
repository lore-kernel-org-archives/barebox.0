Delivery-date: Wed, 07 Jun 2023 15:52:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6ta5-00EOr6-0f
	for lore@lore.pengutronix.de; Wed, 07 Jun 2023 15:52:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6ta2-0002fD-8N
	for lore@pengutronix.de; Wed, 07 Jun 2023 15:52:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=IbVLTO+XB7ENoJISfqunLCW2l87Y/fbPRB0IN1680Y0=; b=pYN4jBqMy18KkQ37qfPUz4WKmw
	i1iXNWvib8QzpxCjrtAb6z0LV91hsS4PrCIp1hF24NK5yAq5Q3LQizJGl1YziLNGpGM0CV17sVJRT
	UwDOQM8z6Fkub3COremkvb13VQArGz8UhkkvRcyelOtBk5xeeA+8oNL5erjptW5A+su2ENc9NtAiw
	IHmKZHx8QI8kkOLLWAdep9uEQ5fpTuxGz71+NOq9Q31rS9gvZRANJbDbuUvlyhnicXKLEej9SXVq9
	hg3ELKgnstUwofIM70IldMRdoa8IM8NwmqUu1b5r21GWqRVfD7FgC2AZ4MPke/LlTHp+WeJuL9Ir5
	xy4wiinA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6tYz-0069TY-13;
	Wed, 07 Jun 2023 13:51:01 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6tYx-0069SW-07
	for barebox@bombadil.infradead.org;
	Wed, 07 Jun 2023 13:50:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=IbVLTO+XB7ENoJISfqunLCW2l87Y/fbPRB0IN1680Y0=; b=foPUUbiBUQOWtBiEiuY5yiv/a5
	EQpha6N4Vz2o/tIaDfR6w//RhSkYyRkBZEHu2LVpRhD/sIHZMj0wWdVj+C6xaYeZOUoDtaXAj8N9u
	TEIia6eRKEMcGcurDcOHEWyZ6OkK38er6B+i0xyHn+RYgeNEcdegLPINvYGTgKBNJcDPd+brRtk+Q
	2+u6l2POEnjHC/FN+V4P8vrK1bhMOSZpcm4I+N2THbO9JuBEjX4uby8wJBUMvj/Zo7rfqq9NbYecb
	nnV9ZvFlcqpV9j0kcol5UpB/apC1bgz7p3anAlqQ0CF83wIi3ap54Ovb2MiDTCcTaZP+yDecnAlgx
	WDjc7S+w==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6s2B-005903-1g
	for barebox@lists.infradead.org;
	Wed, 07 Jun 2023 12:13:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q6s2A-0005UP-8F; Wed, 07 Jun 2023 14:13:02 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q6s29-005jlo-Jc; Wed, 07 Jun 2023 14:13:01 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q6s29-00DKEJ-12; Wed, 07 Jun 2023 14:13:01 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  7 Jun 2023 14:12:59 +0200
Message-Id: <20230607121259.3175979-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230607_131303_640380_B129C34D 
X-CRM114-Status: GOOD (  16.77  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] include: sync <linux/stddef.h> with Linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Our old definition of offsetof is not an Integer Constant Expression
with some more recent clang versions[1]. Let's adopt the Linux
definition as well as a number of new macros that were added as part of
the hardening of the kernel against common out-of-bound bugs:

  - offsetofend
  - struct_group*
  - DECLARE_FLEX_ARRAY

Of course, we only benefit from the new macros once we start to use
them, but that can follow now that they are available.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/stddef.h | 109 ++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 108 insertions(+), 1 deletion(-)

diff --git a/include/linux/stddef.h b/include/linux/stddef.h
index 1044571c3f45..88ff6f1733d2 100644
--- a/include/linux/stddef.h
+++ b/include/linux/stddef.h
@@ -22,7 +22,7 @@ enum {
 typedef unsigned short wchar_t;
 
 #undef offsetof
-#define offsetof(TYPE, MEMBER) ((size_t) &((TYPE *)0)->MEMBER)
+#define offsetof(TYPE, MEMBER)	__builtin_offsetof(TYPE, MEMBER)
 
 /**
  * sizeof_field() - Report the size of a struct field in bytes
@@ -32,4 +32,111 @@ typedef unsigned short wchar_t;
  */
 #define sizeof_field(TYPE, MEMBER) sizeof((((TYPE *)0)->MEMBER))
 
+/**
+ * offsetofend() - Report the offset of a struct field within the struct
+ *
+ * @TYPE: The type of the structure
+ * @MEMBER: The member within the structure to get the end offset of
+ */
+#define offsetofend(TYPE, MEMBER) \
+	(offsetof(TYPE, MEMBER)	+ sizeof_field(TYPE, MEMBER))
+
+/**
+ * __struct_group() - Create a mirrored named and anonyomous struct
+ *
+ * @TAG: The tag name for the named sub-struct (usually empty)
+ * @NAME: The identifier name of the mirrored sub-struct
+ * @ATTRS: Any struct attributes (usually empty)
+ * @MEMBERS: The member declarations for the mirrored structs
+ *
+ * Used to create an anonymous union of two structs with identical layout
+ * and size: one anonymous and one named. The former's members can be used
+ * normally without sub-struct naming, and the latter can be used to
+ * reason about the start, end, and size of the group of struct members.
+ * The named struct can also be explicitly tagged for layer reuse, as well
+ * as both having struct attributes appended.
+ */
+#define __struct_group(TAG, NAME, ATTRS, MEMBERS...) \
+	union { \
+		struct { MEMBERS } ATTRS; \
+		struct TAG { MEMBERS } ATTRS NAME; \
+	}
+
+/**
+ * struct_group() - Wrap a set of declarations in a mirrored struct
+ *
+ * @NAME: The identifier name of the mirrored sub-struct
+ * @MEMBERS: The member declarations for the mirrored structs
+ *
+ * Used to create an anonymous union of two structs with identical
+ * layout and size: one anonymous and one named. The former can be
+ * used normally without sub-struct naming, and the latter can be
+ * used to reason about the start, end, and size of the group of
+ * struct members.
+ */
+#define struct_group(NAME, MEMBERS...)	\
+	__struct_group(/* no tag */, NAME, /* no attrs */, MEMBERS)
+
+/**
+ * struct_group_attr() - Create a struct_group() with trailing attributes
+ *
+ * @NAME: The identifier name of the mirrored sub-struct
+ * @ATTRS: Any struct attributes to apply
+ * @MEMBERS: The member declarations for the mirrored structs
+ *
+ * Used to create an anonymous union of two structs with identical
+ * layout and size: one anonymous and one named. The former can be
+ * used normally without sub-struct naming, and the latter can be
+ * used to reason about the start, end, and size of the group of
+ * struct members. Includes structure attributes argument.
+ */
+#define struct_group_attr(NAME, ATTRS, MEMBERS...) \
+	__struct_group(/* no tag */, NAME, ATTRS, MEMBERS)
+
+/**
+ * struct_group_tagged() - Create a struct_group with a reusable tag
+ *
+ * @TAG: The tag name for the named sub-struct
+ * @NAME: The identifier name of the mirrored sub-struct
+ * @MEMBERS: The member declarations for the mirrored structs
+ *
+ * Used to create an anonymous union of two structs with identical
+ * layout and size: one anonymous and one named. The former can be
+ * used normally without sub-struct naming, and the latter can be
+ * used to reason about the start, end, and size of the group of
+ * struct members. Includes struct tag argument for the named copy,
+ * so the specified layout can be reused later.
+ */
+#define struct_group_tagged(TAG, NAME, MEMBERS...) \
+	__struct_group(TAG, NAME, /* no attrs */, MEMBERS)
+
+/**
+ * __DECLARE_FLEX_ARRAY() - Declare a flexible array usable in a union
+ *
+ * @TYPE: The type of each flexible array element
+ * @NAME: The name of the flexible array member
+ *
+ * In order to have a flexible array member in a union or alone in a
+ * struct, it needs to be wrapped in an anonymous struct with at least 1
+ * named member, but that member can be empty.
+ */
+#define __DECLARE_FLEX_ARRAY(TYPE, NAME)	\
+	struct { \
+		struct { } __empty_ ## NAME; \
+		TYPE NAME[]; \
+	}
+
+/**
+ * DECLARE_FLEX_ARRAY() - Declare a flexible array usable in a union
+ *
+ * @TYPE: The type of each flexible array element
+ * @NAME: The name of the flexible array member
+ *
+ * In order to have a flexible array member in a union or alone in a
+ * struct, it needs to be wrapped in an anonymous struct with at least 1
+ * named member, but that member can be empty.
+ */
+#define DECLARE_FLEX_ARRAY(TYPE, NAME) \
+	__DECLARE_FLEX_ARRAY(TYPE, NAME)
+
 #endif
-- 
2.39.2



