Delivery-date: Fri, 11 Apr 2025 09:44:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u393p-00BA4u-12
	for lore@lore.pengutronix.de;
	Fri, 11 Apr 2025 09:44:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u393n-00067a-4H
	for lore@pengutronix.de; Fri, 11 Apr 2025 09:44:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=p+6DkCtP0cdKC2PShE8/0eEN+In+OYSkYmoAffS/SP4=; b=RP7Ig0mH1Jxx54athi42aSZBB3
	AlzXWS4t3BC1dHQo+WmdWV63mU6kCMkJOLmlaTcwsUqJxS85T8/Gwu2TD8JMQK/2Ax8t/GDsxGpOJ
	B5f6WYT+ZmWGYlwTbB4zg0PENEXxyFxuJmn2fo+98B3Lx8kFMvneaXlNeGO1jmAOCwakgBuWwsQCR
	Ims6vGt4WzPqdQ6jWDAf75SJwIcVUlgiieNPvom5lNBw9Bcl7LnP8oVGjPGfwRtptEVimOBYt0MjL
	/YHrLgRIEHGbEpMJsPLWd/Zeu3W5KjcsMprs5sO2iko+HaBI3xVhqonvRdkfr+y+gPUmugdQDL2J9
	SB5AEn0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u393H-0000000Cv9s-3B9p;
	Fri, 11 Apr 2025 07:43:51 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u390U-0000000CuLt-2dyk
	for barebox@bombadil.infradead.org;
	Fri, 11 Apr 2025 07:40:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=p+6DkCtP0cdKC2PShE8/0eEN+In+OYSkYmoAffS/SP4=; b=ECCz8Nv7cEcUgYAh0zC/0wez3n
	NM+UI8lUGK+YlCYGY1WMnZ4Hh9JKTr+RCg19cZxuyDfb8CRg58U++c/XCnwJN9gc6SJAQKwEPbYgL
	t3FIJUPFa1+mZgdw0Qt4lsskayRV7SwT1zAv1VhYptyfoTDynCAIZS1Yw6rYlfT9czP4BVCcdWbaJ
	J4RIFXTLUAQhWTnddoAkWJP92JjB0p7mU5k0dEDk76iZ3YOQmbHoyboyl45IussHa37va8EX+Qytx
	52z5CcVTrWyJ3vOco6im5/1Gy+6HaSvRFR3nGPH88Am5XzY43x6Ni5S+DpcpdRiaGzk9lJIUGEIuy
	ymlWWuog==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u390R-00000008y3F-2rdz
	for barebox@lists.infradead.org;
	Fri, 11 Apr 2025 07:40:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u390J-0004v8-6a; Fri, 11 Apr 2025 09:40:47 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u390I-004Oje-2z;
	Fri, 11 Apr 2025 09:40:46 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u390I-008WBo-2f;
	Fri, 11 Apr 2025 09:40:46 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 11 Apr 2025 09:40:44 +0200
Message-Id: <20250411074045.2019372-10-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250411074045.2019372-1-a.fatoum@pengutronix.de>
References: <20250411074045.2019372-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250411_084056_005023_9FCADFE2 
X-CRM114-Status: GOOD (  18.63  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 09/10] doc: Add User-Documentation for Barebox TLV
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Chris Fiege <cfi@pengutronix.de>

With this stub users can hopefully discover the Barebox TLV
functionality.
Additionally it discusses some key concepts of the implementation, that
are not obvious from the actual implementations.

Signed-off-by: Chris Fiege <cfi@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/user/barebox-tlv.rst | 93 ++++++++++++++++++++++++++++++
 Documentation/user/user-manual.rst |  1 +
 2 files changed, 94 insertions(+)
 create mode 100644 Documentation/user/barebox-tlv.rst

diff --git a/Documentation/user/barebox-tlv.rst b/Documentation/user/barebox-tlv.rst
new file mode 100644
index 000000000000..3db13ec88b22
--- /dev/null
+++ b/Documentation/user/barebox-tlv.rst
@@ -0,0 +1,93 @@
+barebox TLV - Non-Volatile Factory Data Storage
+===============================================
+
+barebox TLV is a system to store and retrieve a device's (read-only)
+meta-data from non-volatile memory.
+It is intended to handle information that are usually only set in
+the factory - like serial number, MAC-addresses, analog calibration
+data, etc.
+Data is stored in a tag-length-value format (hence the name) and read
+from non-volatile memory during startup.
+Unpacked values are stored in the devicetree ``chosen``-node.
+
+barebox TLV consists of two components:
+
+* The parser inside barebox (``common/tlv``).
+  This code parses the non-volatile memory during startup.
+* A Python-Tool (``scripts/bareboxtlv-generator``).
+  This script is intended to generate the TLV binaries in the factory.
+
+Data Format
+-----------
+
+The TLV binary has the following format:
+
+.. code-block:: C
+
+     struct tlv {
+         be16 tag; /* 2 bytes */
+         be16 len; /* 2 bytes */
+         u8 payload[];
+     };
+
+     struct binfile {
+         be32 magic_version;
+         be32 length_tlv; /* 4 bytes */
+         be32 length_sig; /* 4 bytes */
+         struct tlv tlvs[];
+         be32 crc32;
+     };
+
+.. note::
+  Even though the header has a ``length_sig`` field,
+  there is currently no support for cryptographic signatures.
+
+Tags
+----
+
+Tags are defined as 32-bit integers.
+A tag defines the following attributes:
+
+* **Data format:**
+  The data format can be something like ``string``, ``decimal`` or
+  ``serial-number``.
+* **Name of the entry:**
+  This is the name under which the value is stored in ``chosen``-node.
+
+The tag range ``0x0000`` to ``0x7FFF`` is intended for common tags,
+that can be used in every schema.
+These common tags are defined in ``common/tlv/barebox.c``.
+
+The tag range ``0x8000`` to ``0xFFFF`` is intended for custom extensions.
+Parsing must be handled by board-specific extensions.
+
+Data Types
+----------
+
+barebox defines a number of common data types.
+These are defined in ``common/tlv/barebox.c``.
+
+Board-specific extensions can add additional data types as needed.
+
+TLV Binary Generation
+---------------------
+
+To generate a TLV binary the schema for the specific TLV must be defined.
+Schemas are yaml-files that represent what the actual parser in barebox expects.
+
+An example schema can be found in ``srcipts/bareboxtlv-generator/schema-example.yaml``.
+This schema defines some well-known tags and two board-specific tags.
+
+Afterwards another yaml-file with the data for the TLV binary is needed.
+An example can be found in ``srcipts/bareboxtlv-generator/data-example.yaml``.
+
+With these information in place a TLV binary can be created:
+
+.. code-block:: shell
+
+   ./bareboxtlv-generator.py --input-data data-example.yaml \
+                             schema-example.yaml tlv.bin
+
+.. note::
+  The ``FactoryDataset`` class in ``bareboxtlv-generator.py``
+   is intended to be used as a library.
diff --git a/Documentation/user/user-manual.rst b/Documentation/user/user-manual.rst
index 83ba9e4c3505..53a94f4e2933 100644
--- a/Documentation/user/user-manual.rst
+++ b/Documentation/user/user-manual.rst
@@ -39,6 +39,7 @@ Contents:
    watchdog
    reboot-mode
    virtio
+   barebox-tlv
 
 * :ref:`search`
 * :ref:`genindex`
-- 
2.39.5



