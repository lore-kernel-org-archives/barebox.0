Delivery-date: Thu, 30 Apr 2026 17:20:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wITBm-000X7n-2T
	for lore@lore.pengutronix.de;
	Thu, 30 Apr 2026 17:20:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wITBl-00024P-Mq
	for lore@pengutronix.de; Thu, 30 Apr 2026 17:20:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=rnCmLi/auYKJoMdXYGU6YwT3viC3jhLrOSJ0uJeRlDQ=; b=J8dj77NUyJnLMzLCB8L/PUbco7
	OWDE6lHSHP133Dt5G8N0f/QG0+s5a+8iL3zPghTftA32Sq5e8C9OLWA7frTNYWMrD7ZuiXGwvXjh4
	MEsZOaTMba0fR/SPcj6XEJzjyWhRoAq0lsD0C6C+yVFFehGxPtjXqRg1n6N6SGFEwRPEBOowdNCY8
	uE4ViUu/dQZR/pESfaLw1dh/S8Mmjsmq6GuVAsmut8pjCMoEtTD0prZ+yiQr7B2najO/5Kj+GM8Nx
	fYVdKpqqsdGFB4Jej9QPmuDZvHOx3iok6e/7RShMPLuMfuCcm1uMWAw/FyGS2pD0xH19Y0gxA5bss
	PlipPvyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wITB8-00000005d68-3YxT;
	Thu, 30 Apr 2026 15:19:50 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wITB7-00000005d62-2rfJ
	for barebox@bombadil.infradead.org;
	Thu, 30 Apr 2026 15:19:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
	Reply-To:Content-ID:Content-Description:In-Reply-To:References;
	bh=rnCmLi/auYKJoMdXYGU6YwT3viC3jhLrOSJ0uJeRlDQ=; b=IV6LmeFw2AcayeqgxfnKcT38Hb
	lUZge04b0PUb0Z6Dk+50kyWaRFcNFgrRF4FqWZ/TW8BHfCWAphiKU7hJqrjUsgcR/77mqcr7XMEHH
	yQGGX8n8syjtYvqjRkzoh5r4Evkd8axUjVG37mbfgm4KpTlP1OF6PGiLkwaoQ7ukgGyu9oEbHTwBS
	CzVdbklMmNA5tDCfLPIp6HFEpE6rrY//MrT/x4lWli7nLAdEogqWJ5yzb3ekZDTLbpP4bWKYSWH5a
	RIRIFK0DXro8j6Skgv2xgbB6OaQprKR+sVTWw7fzqxhTwdp/Nu+HzZxYnGiH8seRZ95jupl81vnBL
	mCtXQ7xg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wITB4-00000007dFC-2glS
	for barebox@lists.infradead.org;
	Thu, 30 Apr 2026 15:19:48 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1wITB3-0001ik-Fz; Thu, 30 Apr 2026 17:19:45 +0200
From: Fabian Pflug <f.pflug@pengutronix.de>
Date: Thu, 30 Apr 2026 17:19:34 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260430-v2026-04-0-topic-tlv-doc-v2-1-0147c587d600@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIAAVz82kC/42NQQqDMBBFryKz7pRkmip21XsUF2JGHSiJJGmwi
 Hdv9ATd/ffhv79B5CAc4VFtEDhLFO8K0KWCYe7dxCi2MJCiWhnSmI+EyqDC5BcZML0zWj8ga77
 XN9KjaRoo8yXwKOupfnWFZ4nJh+/5lPXR/iHNGjXaumFDbd+SpufCbvqk4J2sV8vQ7fv+A/Q1j
 jjFAAAA
X-Change-ID: 20260421-v2026-04-0-topic-tlv-doc-e1e56321f477
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 Jonas Rebmann <jre@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
Cc: Fabian Pflug <f.pflug@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260430_161946_860845_2568D8E7 
X-CRM114-Status: GOOD (  21.46  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2] doc: tlv: add images and custom format documentation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Improve the documentation by adding some images to make the
interdependencies clearer and add an example on how to define custom TLV
data format.

Images converted to Graphviz by Jonas Rebmann <jre@pengutronix.de>

Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
---
Changes in v2:
- Using the converted images by Jonas Rebman
- Link to v1: https://lore.barebox.org/barebox/20260421-v2026-04-0-topic-tlv-doc-v1-1-d67e429a9212@pengutronix.de
---
 Documentation/conf.py              |   4 +-
 Documentation/user/barebox-tlv.rst | 159 +++++++++++++++++++++++++++++++++++++
 2 files changed, 162 insertions(+), 1 deletion(-)

diff --git a/Documentation/conf.py b/Documentation/conf.py
index 9244bffe9e..13b74a8655 100644
--- a/Documentation/conf.py
+++ b/Documentation/conf.py
@@ -29,7 +29,9 @@ import re
 # Add any Sphinx extension module names here, as strings. They can be
 # extensions coming with Sphinx (named 'sphinx.ext.*') or your custom
 # ones.
-extensions = []
+extensions = ["sphinx.ext.graphviz"]
+
+graphviz_output_format = 'svg'
 
 # Add any paths that contain templates here, relative to this directory.
 templates_path = ['_templates']
diff --git a/Documentation/user/barebox-tlv.rst b/Documentation/user/barebox-tlv.rst
index adade8a29b..45947d6652 100644
--- a/Documentation/user/barebox-tlv.rst
+++ b/Documentation/user/barebox-tlv.rst
@@ -10,6 +10,22 @@ Data is stored in a tag-length-value format (hence the name) and read
 from non-volatile memory during startup.
 Unpacked values are stored in the devicetree ``chosen``-node.
 
+.. graphviz::
+  :align: center
+
+   digraph tlv_usage {
+     node [shape=box]
+
+     soc_id      [label="SOC ID\n(read from fuses)"]
+     tlv_pubkey  [label="TLV Public Key\n(compiled into barebox)"]
+     signed_tlv  [label="Signed TLV data\n(read from eeprom)"]
+     device_tree [label="Device-Tree"]
+
+     tlv_pubkey  -> signed_tlv  [label="Verifies"]
+     soc_id      -> signed_tlv  [label="Compared against" dir=both]
+     signed_tlv  -> device_tree [label="Updates"]
+   }
+
 barebox TLV consists of two components:
 
 * The parser inside barebox (``common/tlv``).
@@ -61,6 +77,21 @@ The tag range ``0x0000`` to ``0x7FFF`` is intended for common tags,
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
 
@@ -102,6 +133,42 @@ This schema defines some well-known tags and two board-specific tags.
 Afterwards another yaml-file with the data for the TLV binary is needed.
 An example can be found in ``scripts/bareboxtlv-generator/data-example.yaml``.
 
+.. graphviz::
+
+   digraph tlv_generator {
+     node [shape=record fontname="Monospace"]
+
+     schema_yaml [label="{schema.yaml |
+           magic: 0x61bb95f3
+         \lmax_size: 0x1000
+         \ltags:
+         \l\  factory-timestamp:
+         \l\    tag: 0x0003
+         \l\    format: \"decimal\"
+         \l\    length: 8
+         \l\    example: 1636451762
+         \l\  featureset:
+         \l\    tag: 0x0006
+         \l\    format: \"string\"
+         \l\    example: \"base\"
+         \l\    purpose: For later use.
+         }" style=dashed]
+
+     data_yaml [label="{data.yaml |
+           factory-timestamp: 1636451762
+         \lfeatureset: \"base\"\l
+         }"]
+
+     tlv_key     [label="{tlv.key | PRIVATE KEY}"]
+     generator   [label="barebox-tlv-generator.py"]
+     signed_bin  [label="{TLV_signed.bin | Signed TLV data}"]
+
+     schema_yaml -> generator
+     data_yaml   -> generator
+     tlv_key     -> generator
+     generator   -> signed_bin
+   }
+
 With these information in place a TLV binary can be created:
 
 .. code-block:: shell
@@ -118,3 +185,95 @@ that is correctly configured, can be used as KEY.
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

---
base-commit: c3e3a36f1511a7b4f34061b7be118085b80f7165
change-id: 20260421-v2026-04-0-topic-tlv-doc-e1e56321f477

Best regards,
-- 
Fabian Pflug <f.pflug@pengutronix.de>



