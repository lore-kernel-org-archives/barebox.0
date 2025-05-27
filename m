Delivery-date: Tue, 27 May 2025 09:53:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uJp7m-000mqI-2X
	for lore@lore.pengutronix.de;
	Tue, 27 May 2025 09:53:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uJp7m-0006l3-59
	for lore@pengutronix.de; Tue, 27 May 2025 09:53:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=0sTjk/YT+lPJ/vxwSN4N/12w8a6nrkM92E6ht7F95s0=; b=BctUcjPa3xWNMUgY3j9to4cHG7
	wd2V46vcZUSVjOK6kOoRC0oa6uQS44lDHxrzRj4lhfloVWv2qAskkNfV/xwFzGpQ7MK0K+5ILvO35
	8Kzbp9zOXpueCVLldLqBwEnjMvjgZOMQAnZjABd6PMOasTIXxidYguG7aPXPnbTyoOQ8en2h8kmGR
	Srg8GT+BXRtqEjorVPwKJpi76uzoFAl0awVW5+e4Nkjvn9sbG5ckYqrW9ZgcwRNDw64yQ1l3oQiWN
	Ottjbl3Wir/Lnf7NqS4HrSkzD7CrNPV855FaJJLjfXfwXBXYjPHnvgPwYCFDkbsHXLZOH8DxHqhv1
	vxPIid+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJp79-0000000AC00-24vB;
	Tue, 27 May 2025 07:52:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJp77-0000000ABzc-0THd
	for barebox@lists.infradead.org;
	Tue, 27 May 2025 07:52:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ejo@pengutronix.de>)
	id 1uJp75-0006cN-So; Tue, 27 May 2025 09:52:43 +0200
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ejo@pengutronix.de>)
	id 1uJp75-000NiC-2H;
	Tue, 27 May 2025 09:52:43 +0200
Received: from ejo by dude06.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ejo@pengutronix.de>)
	id 1uJp75-00CEVN-25;
	Tue, 27 May 2025 09:52:43 +0200
From: =?UTF-8?q?Enrico=20J=C3=B6rns?= <ejo@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ejo@pengutronix.de
Date: Tue, 27 May 2025 09:52:05 +0200
Message-Id: <20250527075205.2915063-1-ejo@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250527_005245_154417_A3A7DD1E 
X-CRM114-Status: GOOD (  13.31  )
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
X-Spam-Status: No, score=-7.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] docs: conf.py: tweak SearchEnglish to be hyphen- and dot-friendly
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This modifies the default indexer split() and js splitQuery()
methods to support searching for words with 'inner' hyphens or dots.

While this might not be an ideal, rock solid, and fully future-proof
solution, since it relies on some upstream sphinx-docs methods to exist,
it allows to search for strings including hyphens and dots, such as
'OP-TEE', 'nv.bootchooser.last_chosen', or 'barebox-state'.

Below is a bit more detailed explanation of the two modifications done:

1) The default split regex in the sphinx-doc SearchLanguage base class
   is:

   | _word_re = re.compile(r'\w+')

   which we extend to include words with inner hyphens '-' and dots '.':

   | _word_re = re.compile(r'\w+(?:[\.\-]\w+)*')

   This will result in a searchindex.js that contains words with hyphens
   and dots.

2) The 'searchtool.js' code notes for its splitQuery() implementation:

   | /**
   |  * Default splitQuery function. Can be overridden in ``sphinx.search`` with a
   |  * custom function per language.
   |  *
   |  * The regular expression works by splitting the string on consecutive characters
   |  * that are not Unicode letters, numbers, underscores, or emoji characters.
   |  * This is the same as ``\W+`` in Python, preserving the surrogate pair area.
   |  */
   | if (typeof splitQuery === "undefined") {
   |   var splitQuery = (query) => query
   |       .split(/[^\p{Letter}\p{Number}_\p{Emoji_Presentation}]+/gu)
   |       .filter(term => term)  // remove remaining empty strings
   | }

   The hook for this is documented in the sphinx-docs 'SearchLanguage'
   base class.

   |    .. attribute:: js_splitter_code
   |
   |       Return splitter function of JavaScript version.  The function should be
   |       named as ``splitQuery``.  And it should take a string and return list of
   |       strings.
   |
   |       .. versionadded:: 3.0

   We use this to define a simplified splitQuery() function with a split
   argument that splits on empty spaces only.

We extend SearchEnglish (which extends SearchLanguage) here to retain
the stemmer code and stopwords for English.

Signed-off-by: Enrico Jörns <ejo@pengutronix.de>
---
 Documentation/conf.py | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/Documentation/conf.py b/Documentation/conf.py
index 5fb8b07c38..01c430dfa6 100644
--- a/Documentation/conf.py
+++ b/Documentation/conf.py
@@ -14,6 +14,7 @@
 
 import sys
 import os
+import re
 
 # If extensions (or modules to document with autodoc) are in another directory,
 # add these directories to sys.path here. If the directory is relative to the
@@ -260,3 +261,20 @@ texinfo_documents = [
 #texinfo_no_detailmenu = False
 
 highlight_language = 'none'
+
+from sphinx.search import SearchEnglish
+from sphinx.search import languages
+class DashFriendlySearchEnglish(SearchEnglish):
+
+    # Accept words that can include 'inner' hyphens or dots
+    _word_re = re.compile(r'[\w]+(?:[\.\-][\w]+)*')
+
+    js_splitter_code = """
+function splitQuery(query) {
+    return query
+        .split(/[^\p{Letter}\p{Number}_\p{Emoji_Presentation}\-\.]+/gu)
+        .filter(term => term.length > 0);
+}
+"""
+
+languages['en'] = DashFriendlySearchEnglish
-- 
2.39.5



