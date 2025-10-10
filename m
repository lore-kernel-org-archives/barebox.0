Delivery-date: Fri, 10 Oct 2025 08:58:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v775D-006Dgc-1Y
	for lore@lore.pengutronix.de;
	Fri, 10 Oct 2025 08:58:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v775C-0000SG-UK
	for lore@pengutronix.de; Fri, 10 Oct 2025 08:58:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Lif3BOb4ZsiQ0hKyiILw1fwZCu4Sc+Fe8m6LXuvKHTc=; b=RWlHZB7aSN1uLsbZO12moHCdhq
	IvEWn9x0RnT2IjFDai4jKOI3X+YJy4wWjams3kQhHMlp5wRqUCJoawGaMBx5f7Uyv9XNVyvmruhDk
	E5sOqFdtBkvNUIPnwKmE6O8Yk1C4cVmRLyUZKE2VeoVZvj5ZuS52Q9Cz+SY/EdDSrijjXQy5O7ZHm
	Wbycsq4qiVlti1PQO6n3P54E+oz2RGLiyQ2jqav0C+PbrGLDmkLgedsSiIUUc94l4lNPDYpN2iuK4
	USk8jJlWvfhaUXHaqWPSJYy6z81YoqnGhRYlQXN3KasDfb0W82uOLMraQFIfFcaGX/SrpTYT2BMw0
	R4XXW5WA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v774e-00000007ngB-1Yf5;
	Fri, 10 Oct 2025 06:57:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v774b-00000007nfG-3cfk
	for barebox@lists.infradead.org;
	Fri, 10 Oct 2025 06:57:54 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1v774a-0000Gi-5e; Fri, 10 Oct 2025 08:57:52 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri, 10 Oct 2025 08:57:43 +0200
Message-ID: <20251010065749.3141299-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251009_235753_929714_B50DAFA8 
X-CRM114-Status: UNSURE (   8.20  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] Documentation: fix warnings during config build
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

js_splitter_code contains backslashes that are meant for Javascript and
not for Python triggering a warning:

  conf.py:275: SyntaxWarning: invalid escape sequence '\p'
    .split(/[^\p{Letter}\p{Number}_\p{Emoji_Presentation}\-\.]+/gu)

Setting soruce_suffix to a string also seems deprecated:

  Converting `source_suffix = '.rst'` to
    `source_suffix = {'.rst': 'restructuredtext'}`.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 Documentation/conf.py | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/conf.py b/Documentation/conf.py
index dfd416f7e0b2..9244bffe9e9b 100644
--- a/Documentation/conf.py
+++ b/Documentation/conf.py
@@ -35,7 +35,7 @@ extensions = []
 templates_path = ['_templates']
 
 # The suffix of source filenames.
-source_suffix = '.rst'
+source_suffix = {'.rst': 'restructuredtext'}
 
 # The encoding of source files.
 #source_encoding = 'utf-8-sig'
@@ -269,7 +269,7 @@ class DashFriendlySearchEnglish(SearchEnglish):
     # Accept words that can include 'inner' hyphens or dots
     _word_re = re.compile(r'[\w]+(?:[\.\-][\w]+)*')
 
-    js_splitter_code = """
+    js_splitter_code = r"""
 function splitQuery(query) {
     return query
         .split(/[^\p{Letter}\p{Number}_\p{Emoji_Presentation}\-\.]+/gu)
-- 
2.47.3



