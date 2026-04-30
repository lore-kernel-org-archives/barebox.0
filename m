Delivery-date: Thu, 30 Apr 2026 13:42:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wIPn5-000TLr-1v
	for lore@lore.pengutronix.de;
	Thu, 30 Apr 2026 13:42:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wIPn3-0000cM-6M
	for lore@pengutronix.de; Thu, 30 Apr 2026 13:42:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=qTQ98vcuKdmEDaZc/pn2xWiecN/FU4fVSAOuLuF3jIg=; b=Uii+/3XdYhUxlxcZ7DIU9NS3cq
	Ga53cQghXTUEkkneRGUmycuqTWXYh+8HmD+43acVtkvq1Nvg1B6Yu3yfv2a615W3tQhL0oL605SgZ
	+frOdWm0Q1Sn4qmaMWnQ87sWvzbp50DQl9j0l89sSicATMFH1qL8OrKzgchHW2qQzCQN58T/piqFI
	JfcmpJUYllAjq9+rS6FueHpwdtezopbqNwGDUKpiSDJbif4NhyDFT+43O880hEtjw9eGs5MGyd4Ip
	GN4OrDpGCsZp8hBCRM66S909GE9pfV971fshkkhk9aNLpJkdTobGYuf4KNoSb0FI/82eU6qPBymFY
	JwDFvXQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIPmA-00000005Of0-3Fiu;
	Thu, 30 Apr 2026 11:41:50 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIPm9-00000005Oer-2bNQ
	for barebox@bombadil.infradead.org;
	Thu, 30 Apr 2026 11:41:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
	Reply-To:Content-ID:Content-Description:In-Reply-To:References;
	bh=qTQ98vcuKdmEDaZc/pn2xWiecN/FU4fVSAOuLuF3jIg=; b=exfr8sABdf828kaFXEzeA3Nkkc
	QlHrG55ie1AZgbZkqJayVh84H5v+uQEjGX46gJ9RzpUv3DugQE4ono+DXJdDoGedG2xQJGoZbpD6V
	t3/f6I391vk1aF/eRMbGd1vDzpg/J2yKSX/imBy3deuMlOzgNi394BAnSx4NzN5dyDYd7AuTOd1AA
	bEbJkY6FH8VZoTOCBVaVCZznhYAXTX+NmOr9BAiXkJfvs+xj0H+nv1tx6n4V1M3BWf7uhZgjv4L+e
	DA00U3UQ6ohYb97fl/Wyl4qa9MfZHNwZebGVfI1mMpxXenbw0l9KBRt5nwgTuGIbjk751SGPHK0tB
	5g6VdPLQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIPm5-00000007HfA-3Jjs
	for barebox@lists.infradead.org;
	Thu, 30 Apr 2026 11:41:48 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1wIPm5-00009p-5F; Thu, 30 Apr 2026 13:41:45 +0200
From: Fabian Pflug <f.pflug@pengutronix.de>
Date: Thu, 30 Apr 2026 13:41:41 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260430-v2026-04-0-topic-tlv-doc-v1-1-5aa0ef602bb8@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Fabian Pflug <f.pflug@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260430_124146_670288_1D7D3B16 
X-CRM114-Status: GOOD (  20.21  )
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
X-Spam-Status: No, score=-2.7 required=4.0 tests=AWL,BAYES_50,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,LOTS_OF_MONEY,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH RESEND] doc: tlv: add images and custom format
 documentation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Improve the documentation by adding some images to make the
interdependencies clearer and add an example on how to define custom TLV
data format.

---
Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
---
 Documentation/user/barebox-tlv.rst           | 113 +++++++++++++++++++++++++++
 Documentation/user/figures/tlv_generator.svg | Bin 0 -> 25691 bytes
 Documentation/user/figures/tlv_usage.svg     | Bin 0 -> 16442 bytes
 3 files changed, 113 insertions(+)

diff --git a/Documentation/user/barebox-tlv.rst b/Documentation/user/barebox-tlv.rst
index adade8a29b..3884d17409 100644
--- a/Documentation/user/barebox-tlv.rst
+++ b/Documentation/user/barebox-tlv.rst
@@ -10,6 +10,10 @@ Data is stored in a tag-length-value format (hence the name) and read
 from non-volatile memory during startup.
 Unpacked values are stored in the devicetree ``chosen``-node.
 
+.. image:: figures/tlv_usage.svg
+  :width: 40%
+  :align: center
+
 barebox TLV consists of two components:
 
 * The parser inside barebox (``common/tlv``).
@@ -61,6 +65,21 @@ The tag range ``0x0000`` to ``0x7FFF`` is intended for common tags,
 that can be used in every schema.
 These common tags are defined in ``common/tlv/barebox.c``.
 
+.. csv-table:: TLV predefined tags
+  :header: "ID", "Name", "Description"
+  :widths: 10, 20, 30
+
+	0x0002, device-hardware-release, "Detailed release information string for the device"
+	0x0003, factory-timestamp, "UNIX timestamp of fabrication"
+	0x0004, device-serial-number, "Device serial number string"
+	0x0005, modification, "Modification: 0: Device unmodified; 1: undocumented modifications"
+	0x0006, featureset, "A comma separated list of features"
+	0x0007, pcba-serial-number, "Printed Circuit Board Assembly serial number string"
+	0x0008, pcba-hardware-release, "Printed Circuit Board Assembly hardware release"
+	0x0011, ethernet-address, "A list of Ethernet addresses or a single Ethernet address"
+	0x0012, ethernet-address, "A sequence of subsequent Ethernet addresses, by number and starting address"
+	0x0024, bound-soc-uid, "Reject TLV if supplied binary data does not match UID SoC register"
+
 The tag range ``0x8000`` to ``0xFFFF`` is intended for custom extensions.
 Parsing must be handled by board-specific extensions.
 
@@ -102,6 +121,8 @@ This schema defines some well-known tags and two board-specific tags.
 Afterwards another yaml-file with the data for the TLV binary is needed.
 An example can be found in ``scripts/bareboxtlv-generator/data-example.yaml``.
 
+.. image:: figures/tlv_generator.svg
+
 With these information in place a TLV binary can be created:
 
 .. code-block:: shell
@@ -118,3 +139,95 @@ that is correctly configured, can be used as KEY.
 .. note::
   The ``FactoryDataset`` class in ``bareboxtlv-generator.py``
    is intended to be used as a library.
+
+Data Location
+-------------
+
+The generated ``tlv.bin`` file has to be stored on the device in a known location.
+This location can for example be described inside the devicetree of the device.
+
+.. code-block:: dts
+    :emphasize-lines: 8,10
+
+    &eeprom1 {
+      partitions {
+        compatible = "fixed-partitions";
+        #address-cells = <1>;
+        #size-cells = <1>;
+
+        tlv_partition: partition@0 {
+          compatible = "barebox,tlv-v1";
+          label = "barebox_tlv";
+          reg = <0x0 0x1000>;
+        };
+      };
+    };
+
+The ``compatible`` defines the format to parse the TLV data as and the ``reg``
+describes the size of the data.
+
+Custom TLV format
+-----------------
+
+A custom TLV format can be created for example like this:
+
+.. code-block:: c
+   :linenos:
+
+    #include <string.h>
+    #include <tlv/tlv.h>
+    #include <common.h>
+
+    #define TLV_MAGIC_CUSTOM_V1_SIGNED 0xe3573cd3
+
+    static struct tlv_mapping custom_tlv_v1_mappings[] = {
+      /* UNIX timestamp of fabrication */
+      { 0x0003, tlv_format_timestamp, "factory-timestamp" },
+      /* Device serial number string */
+      { 0x0004, tlv_handle_serial, "device-serial-number" },
+      /* a comma separated list of features */
+      { 0x0006, tlv_format_str, "featureset" },
+      /* Printed Circuit Board Assembly serial number string */
+      { 0x0007, tlv_format_str, "pcba-serial-number" },
+      /* Reject TLV if supplied binary data does not match UID SoC register */
+      { 0x0024, tlv_bind_soc_uid, "bound-soc-uid" },
+      /* Custom key */
+      { 0x8001, tlv_format_str, "custom-key"},
+      { /* sentintel */ },
+    };
+
+    static struct tlv_mapping *mappings[] = {
+      custom_tlv_v1_mappings,
+      NULL
+    };
+
+    static struct of_device_id matches[] = {
+      { .compatible = "custom,tlv-v1" },
+      { /* sentinel */ }
+    };
+
+    static struct tlv_decoder custom_tlv_v1 = {
+      .magic = TLV_MAGIC_CUSTOM_V1_SIGNED,
+      .driver.name = "custom-tlv-v1",
+      .driver.of_compatible = matches,
+      .mappings = mappings,
+      .signature_keyring = "tlv-custom",
+    };
+
+    static int custom_tlv_v1_register(void)
+    {
+      return tlv_register_decoder(&custom_tlv_v1);
+    }
+    of_populate_initcall(custom_tlv_v1_register);
+
+* line 7-21: Every possible mapping, that is used must be listed here.
+* line 19: The mapping includes a custom tag.
+  All tags above ``0x8000`` are reserved for custom use.
+* line 29: The compatible string of the partition, that will contain the data.
+* line 5,34: Some randomly generated 32bit value to uniquely identify the
+  mapping-table.
+* line 38: The keyring tlv-stange should be used to validate the signature.
+  Keys for the keyring are specified in the barebox config
+  ``CONFIG_CRYPTO_PUBLIC_KEYS`` with for example:
+  ``keyring=tlv-custom:__ENV__TLV_KEY``.
+* line 41-45: Registers the format into barebox.
diff --git a/Documentation/user/figures/tlv_generator.svg b/Documentation/user/figures/tlv_generator.svg
new file mode 100644
index 0000000000000000000000000000000000000000..84ab826145d702bfd7d7c7a85df421b4c9fe9b73
GIT binary patch
literal 25691
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

literal 0
HcmV?d00001

diff --git a/Documentation/user/figures/tlv_usage.svg b/Documentation/user/figures/tlv_usage.svg
new file mode 100644
index 0000000000000000000000000000000000000000..7aed416a396d29198280198a4ef6a0044093fabc
GIT binary patch
literal 16442
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
ahk@-aU4eCcY{36RHT_jASpN3@$NvN5xfibh

literal 0
HcmV?d00001

---
base-commit: c3e3a36f1511a7b4f34061b7be118085b80f7165
change-id: 20260421-v2026-04-0-topic-tlv-doc-e1e56321f477

Best regards,
-- 
Fabian Pflug <f.pflug@pengutronix.de>



