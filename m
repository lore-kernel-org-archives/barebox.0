Delivery-date: Mon, 16 Dec 2024 12:34:37 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tN9Mw-008nrE-1s
	for lore@lore.pengutronix.de;
	Mon, 16 Dec 2024 12:34:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tN9Mv-0002ZZ-Fk
	for lore@pengutronix.de; Mon, 16 Dec 2024 12:34:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=MqWT7wGmsq3W3UUySKssk1xX7bLhKO0y7r0GjfNbB7Y=; b=27NVspzGa0QUU1ejWWZN6m7AgY
	Q4Oph/UNUYPnw7tedV9gohCPth1zd20594+FFGQMmXjge7HSDjtEaSuFjrjNmyq0DjynHQ8Tl2KAc
	MHhiO/a5hWiqyOsU1a5Faf1JVHIqAYER5gGFZUKv+6fh/mPYKgw7kipZV2UgbWuTQBzY6xMv37rt3
	SuUnnC6q67ySRC0W8WB5a1PY9hcAydXtufxMkqtmRscSarA6PWIDmzPYJMC/EzG0pu7QgnqMXEDXW
	A56w00t2HBUXLpYAxX5wwjn6Be3hGHTz7UKAuMKE6wM5xqCKFfmBcf9Tt12O+gBpQ8oX88kFWAw3I
	Kv++CkLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tN9MG-00000009qTD-2kav;
	Mon, 16 Dec 2024 11:33:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tN9MD-00000009qRR-40FO
	for barebox@lists.infradead.org;
	Mon, 16 Dec 2024 11:33:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tN9MA-0002Lf-5I; Mon, 16 Dec 2024 12:33:46 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tN9M9-003gcG-0f;
	Mon, 16 Dec 2024 12:33:45 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tN9M9-001gz1-2r;
	Mon, 16 Dec 2024 12:33:45 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 16 Dec 2024 12:33:44 +0100
Message-Id: <20241216113344.403540-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241216_033349_989920_01F10CC9 
X-CRM114-Status: GOOD (  10.62  )
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
Subject: [PATCH] Documentation: devel: project-ideas: add SDL input support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For developing barebox, it's often useful to run barebox directly as
userspace program by compiling it for the sandbox architecture, but
there is no input driver for sandbox yet although we have a virtio input
drive.

Add SDL input as project idea.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/devel/project-ideas.rst | 26 ++++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/Documentation/devel/project-ideas.rst b/Documentation/devel/project-ideas.rst
index 8d6b5d6e584a..7ca827a6538e 100644
--- a/Documentation/devel/project-ideas.rst
+++ b/Documentation/devel/project-ideas.rst
@@ -198,3 +198,29 @@ hardware and tutorial is extended to make use of the new peripherals.
 
 This project does not require dedicated hardware. The development
 machine need only support a recent browser.
+
+Add Sandbox SDL input support
+=============================
+
+Skills: C (Basics). Difficulty: Lowest
+
+barebox on real hardware has multiple possible input method: buttons,
+keypads and even USB keyboards allow controlling barebox beyond what
+a serial console provides.
+
+For virtualized targets, barebox has ``virtio_input`` support, which
+JSBarebox uses to move the DOOM guy around.
+
+For developing barebox, it's often useful to run barebox directly as
+userspace program by compiling it for the ``sandbox`` architecture.
+
+This mode of operation can already use SDL 2.0 for video and sound
+and it would be nice to extend it with input support.
+
+As SDL is handled in a separate thread, this means we need a thread-safe
+FIFO, where the SDL thread would queue input events and barebox would
+dequeue events on the other side as they are polled.
+
+As the code will have a SDL 2.0 dependency anyway, it should probably
+make use of SDL 2.0 mutex/condition variables API for serializing
+accesses to the FIFO.
-- 
2.39.5



