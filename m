Delivery-date: Mon, 12 Apr 2021 09:19:29 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVqr3-0003hu-37
	for lore@lore.pengutronix.de; Mon, 12 Apr 2021 09:19:29 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVqr0-0005At-MX
	for lore@pengutronix.de; Mon, 12 Apr 2021 09:19:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bm0n2a92M+MslKbAhYI32WGMLDeVnnFZr9XFs/ZERHs=; b=JRo4UnU2kferZxBjcyoy/MJix
	zK8R1/eM7cLbNqOQp/HFWFwu6zBQ78E3Bow3TXz/NZ+FMiRce1MfduLiXmFk56l0eTXZDejpPsHxI
	EnDhIn8E8NbxB9LIeskGD5yAw0N/DXGcgzuzbWKL5Zsl8HdtXZEaqC5NzrfLGzg3TShRMH1T1xcYM
	TNTlSTBqbtktj40kcMi3CvCazT2EnuooNCwmk95URwFqN1jZlN6wyMPbcs1iiT6gKLJKjfld4ZCvO
	nX59CnSa8Qy8dDM9B8MCwHYc1tJPOKY5txoTXFUuUIkZWAM5MIiXklR3yKcnNHAn880ZLi2fBuIp7
	SI9leSvBw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVqpw-005wJv-Fq; Mon, 12 Apr 2021 07:18:20 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVqon-005vvd-61
 for barebox@desiato.infradead.org; Mon, 12 Apr 2021 07:17:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=hOqq/Hl+tm9vb5r6cIeao7yogE72hdo3UXzHh/xm7tc=; b=aloCkQ3e/j8aWJsGU18itrAWDD
 GI4JciKitU/qBehQ2Xg5gHkhU8V83k6toirRIXxLzNQirMiWZCAhu7TALnyTxgWaIjh+CgNKwfKI9
 oGgOTjbqkcrpMSxXrfWw5+8OtA3Q2INNhmrKOB6OJSrnK0eWDssag3HQHJKW9ac1km/3skIR9wUX9
 TZedYPk0uurmwTAfi1GjJnVbyThaXgCnt7V9IqBcpZj7uNzfsZfANIQZnXLfrCeyQSeZY0Hr+xApS
 0tI2OxVqpKfAF+LuIODeOPbgk+p15NkO1h3Nank5PjUM/wAEQjkdVHSh5cmscJjMlaORbj14ru8uW
 L71HrxDQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVqoj-005vHD-St
 for barebox@lists.infradead.org; Mon, 12 Apr 2021 07:17:07 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lVqoa-0004HP-Hm; Mon, 12 Apr 2021 09:16:56 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lVqoZ-0002fw-CY; Mon, 12 Apr 2021 09:16:55 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 12 Apr 2021 09:16:47 +0200
Message-Id: <20210412071651.8769-14-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210412071651.8769-1-a.fatoum@pengutronix.de>
References: <20210412071651.8769-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210412_001705_963379_E707E7CD 
X-CRM114-Status: GOOD (  10.47  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, rcz@pengutronix.de
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
Subject: [PATCH 13/17] test: support running labgrid-pytest from out-of-tree
 build directory
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The labgrid YAML configs use relative paths to reference the images to
use. This won't work for out-of-tree builds. Do like Linux does for the
scripts/gdb/vmlinux-gdb.py and symlink the labgrid test stuff into the
build directory. With this done, we can now call labgrid-pytest for both
in-tree and out-of-tree builds.

Symlinks are not created for the test directory as a whole:

  - ../../ from within a symlinked directory refers to the original
    destination, not where it's symlinked to
  - Build and test (__pycache__) artifacts are generated into test/.
    we don't want those ending up in the source directory

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Makefile | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/Makefile b/Makefile
index 0a93915cf347..7db7cb7b4a3a 100644
--- a/Makefile
+++ b/Makefile
@@ -1136,6 +1136,10 @@ MRPROPER_FILES += .config .config.old .version .old_version \
                   include/config.h           \
 		  Module.symvers tags TAGS cscope*
 
+ifdef building_out_of_srctree
+MRPROPER_DIRS += test
+endif
+
 # clean - Delete most, but leave enough to build external modules
 #
 clean: rm-dirs  := $(CLEAN_DIRS)
@@ -1264,6 +1268,25 @@ docs: FORCE
 	@$(SPHINXBUILD) -b html -d $(objtree)/doctrees $(srctree)/Documentation \
 		$(objtree)/Documentation/html
 
+# Misc
+# ---------------------------------------------------------------------------
+
+# support running tests from the build directory
+
+PHONY += symlink_tests
+symlink_tests: prepare0
+ifdef building_out_of_srctree
+	@mkdir -p test/$(SRCARCH)
+	@for y in $(abspath $(srctree)/test/$(SRCARCH)/*.yaml); do \
+	  ln -fsn $$y $(objtree)/test/$(SRCARCH)/ ; \
+	done
+	@ln -fsn $(abspath $(srctree)/test/py) $(objtree)/test/
+	@ln -fsn $(abspath $(srctree)/test/conftest.py) $(objtree)/test/
+	@ln -fsn $(abspath $(srctree)/test/__init__.py) $(objtree)/test/
+endif
+
+all: symlink_tests
+
 # Single targets
 # ---------------------------------------------------------------------------
 # Single targets are compatible with:
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

