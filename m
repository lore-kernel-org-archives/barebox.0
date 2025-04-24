Delivery-date: Thu, 24 Apr 2025 14:55:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7w6i-004tHr-1v
	for lore@lore.pengutronix.de;
	Thu, 24 Apr 2025 14:55:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7w6h-0007yz-TX
	for lore@pengutronix.de; Thu, 24 Apr 2025 14:55:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ez++CrJI9IugPu+UTNZgSQqmC7SUPrJBdVTGIce6l8M=; b=0L+bxqtvlAjBkgHC02UMNnpySr
	5UQPCz+yvGG8Y0RhI3gLCyduBFYo16kSldHm/qtUWhfhoVUFNHv1zZ/U6gQ+wGuwPnYIH+mYCy0sV
	OCID9e6gZ+huvH3h6aL2x0/dvIpU9UV8yUJW3DSbeNv3nx+j+nlNiecL5qDzzjee+SYT1Au+N7b2e
	UneYTGFy9U7JG+FW/ngAwajLoob3nJqrsGB04JXYmziJ+4x/ezAooNx2eRacANak2SAMbXEpatSZ5
	LleFOsDTFclBqr6U0/0+g+TaVE+aWlH2c/1UErJvl3xcYY6mebgAyNK/mEfETxeT8DVeqdiHF5hRf
	RV4BJh6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7w68-0000000E6V1-1eSd;
	Thu, 24 Apr 2025 12:54:36 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7uPe-0000000DnSV-1j2k
	for barebox@bombadil.infradead.org;
	Thu, 24 Apr 2025 11:06:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=Ez++CrJI9IugPu+UTNZgSQqmC7SUPrJBdVTGIce6l8M=; b=oVyJ2rC0+stGu3jcu9SjfS3ofk
	oRIeE21fCUCI+hVvqxPUOwRvQmTgUPji/l07e7iVKGpqc8u5qCSyawLSuRUNxymltDKlIqNyl86+d
	bQYhwmeK68TDl2HyCoAsNupQJfJiWUnpnJgRvHLmKizkcgrymCAiDb6i73Weti5pdwbqA4SG4f1sy
	4Sax3XV7fZII0irZLgY2Bwu1cUrNrPER86wOyST7VXKzMaAPFcktTBy6XL0YmReIK2wKHDtP0RuIW
	gRd+qCRmK3Cj17x/d/AAweassEfhOtYZMXpSpR7dOrdZkE7Zrxd4GchWJkl/Pk3dR/Evdys3offHO
	VRyOo/oQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u7uPa-0000000BlDM-1E1g
	for barebox@lists.infradead.org;
	Thu, 24 Apr 2025 11:06:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u7uPY-0001CL-M5; Thu, 24 Apr 2025 13:06:32 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u7uPY-001sBo-1Y;
	Thu, 24 Apr 2025 13:06:32 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u7uPY-00GXx3-1F;
	Thu, 24 Apr 2025 13:06:32 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 24 Apr 2025 13:06:31 +0200
Message-Id: <20250424110631.3943702-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250424110631.3943702-1-a.fatoum@pengutronix.de>
References: <20250424110631.3943702-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250424_120634_457955_1335BD71 
X-CRM114-Status: GOOD (  15.13  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] Documentation: user: versioning: reduce indentation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The bullet points are indented a lot, reduce them to normal.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/user/versioning.rst | 36 +++++++++++++++----------------
 1 file changed, 18 insertions(+), 18 deletions(-)

diff --git a/Documentation/user/versioning.rst b/Documentation/user/versioning.rst
index 0a8095a2e085..d8e2fdbc4574 100644
--- a/Documentation/user/versioning.rst
+++ b/Documentation/user/versioning.rst
@@ -7,15 +7,15 @@ In addition to the usual barebox release (e.g. ``v2025.03.0``), the
 version number can be extended to encode integration-specific version
 information:
 
-  * When built from git, ``scripts/setlocalversion`` will factor in
-    git revision information into the version string.
-  * The ``EXTRAVERSION =`` in the top-level ``Makefile`` can be used
-    to add a suffix to the version. This is useful if patches are applied
-    on top of the tarball release.
-  * The build host can set the ``BUILDSYSTEM_VERSION`` environment variable
-    prior to executing ``make`` to encode a board support package version.
-    This is useful to encode information about built-in environment
-    and firmware.
+* When built from git, ``scripts/setlocalversion`` will factor in
+  git revision information into the version string.
+* The ``EXTRAVERSION =`` in the top-level ``Makefile`` can be used
+  to add a suffix to the version. This is useful if patches are applied
+  on top of the tarball release.
+* The build host can set the ``BUILDSYSTEM_VERSION`` environment variable
+  prior to executing ``make`` to encode a board support package version.
+  This is useful to encode information about built-in environment
+  and firmware.
 
 Query from barebox
 ^^^^^^^^^^^^^^^^^^
@@ -32,17 +32,17 @@ Query from OS
 The barebox version (formatted as ``barebox-$version``) can be queried
 after boot by different means:
 
- * If the OS is booted with device tree, barebox will fixup a
-   ``/chosen/barebox-version`` property into the kernel device tree with
-   the version string. Under Linux, this can be accessed at:
+* If the OS is booted with device tree, barebox will fixup a
+  ``/chosen/barebox-version`` property into the kernel device tree with
+  the version string. Under Linux, this can be accessed at:
 
-   * ``/sys/firmware/devicetree/base/chosen/barebox-version``
-   * ``/proc/device-tree/base/chosen/barebox-version``
+ * ``/sys/firmware/devicetree/base/chosen/barebox-version``
+ * ``/proc/device-tree/base/chosen/barebox-version``
 
- * If the system is booted through barebox as EFI application (payload),
-   a ``LoaderInfo`` EFI variable with the systemd vendor GUID will
-   be set to the version string. Under Linux, the string is shown in
-   ``bootctl`` output
+* If the system is booted through barebox as EFI application (payload),
+  a ``LoaderInfo`` EFI variable with the systemd vendor GUID will
+  be set to the version string. Under Linux, the string is shown in
+  ``bootctl`` output
 
 Query without booting
 ^^^^^^^^^^^^^^^^^^^^^
-- 
2.39.5



