Delivery-date: Fri, 11 Apr 2025 09:44:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u393p-00BA5F-39
	for lore@lore.pengutronix.de;
	Fri, 11 Apr 2025 09:44:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u393n-00067d-6u
	for lore@pengutronix.de; Fri, 11 Apr 2025 09:44:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=y1/CISkHhYyvq6w+yXfo7dIaKGmtOMHwkjlPmaAeYic=; b=IGs1SdzIfWlenIahwhmXMlBUjK
	9xwP5EH/K2e2gDeaGI0TNYbe2VC8HDD1o0jPwmQux6kOYKo+coQ9lNKnCHVjY8jbBeb6pYXPazq6V
	TTHbaG2ifysjFA5YxYuT9c1nf7QQshpaRlLX+4IgR9OfS3zNoqAZwoUE6RzaXY/d7zL7o1SD1LBMg
	1ujvPlHhVURNRGW7OBl4ky6ndCEUFkll9NyultCrR8gLMyob1dA/l3eBoh2aF3pEDzE/o3zAoRrDg
	g326paZhzwXxF/OWlLxAukna8gQt6a/9bU39pVHdeiOisPEcmKIz92jKplcGH8XmFXRoa/OxNWxFH
	fGXUZBqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u393E-0000000Cv4u-0YQL;
	Fri, 11 Apr 2025 07:43:48 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u390R-0000000CuKr-20ea
	for barebox@bombadil.infradead.org;
	Fri, 11 Apr 2025 07:40:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=y1/CISkHhYyvq6w+yXfo7dIaKGmtOMHwkjlPmaAeYic=; b=AaKfUA5kvOeBR8v0ep8U106/60
	UR5XAhVd8Pd5vo4NxHvp3qlHknpKteFv6LLKhyaIN56lv2Np91+kfHhav6ctLU5guGWbdM9sPmiYO
	A1f3c+BdhB44tMnM12XSJHrOmXuN4fRr0nlEYSxmj9cYPjF6185ceOzQSccIMfTUXwbQK08HK/j47
	mqgSoOCUTGwtqSZyORedEQHMAN/RHb19EmcY9uLzVzd5ctEowwfYSSRrgW7Nn1DueVXdXqE8sFnf3
	c2/WMu7L4LLFDAYtPOLOP1iKY/r1VWgxVNdmNG2ofwADaCW3N+tdN8stXai8rIZ8Dl2bD1vEYT+/u
	RzF7Jt/g==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u390M-00000008y0z-3Y09
	for barebox@lists.infradead.org;
	Fri, 11 Apr 2025 07:40:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u390J-0004v3-5C; Fri, 11 Apr 2025 09:40:47 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u390I-004OjZ-2p;
	Fri, 11 Apr 2025 09:40:46 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u390I-008WBo-2V;
	Fri, 11 Apr 2025 09:40:46 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 11 Apr 2025 09:40:43 +0200
Message-Id: <20250411074045.2019372-9-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250411074045.2019372-1-a.fatoum@pengutronix.de>
References: <20250411074045.2019372-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250411_084051_559955_C7CE290A 
X-CRM114-Status: GOOD (  25.48  )
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
Subject: [PATCH 08/10] scripts: Add Barebox TLV Generator Tooling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Chris Fiege <cfi@pengutronix.de>

This host-tooling creates binaries in the Barebox TLV format.
It is intended to be used in the factory (either as script or library)
and creates a tlv binary from a given schema and data.

For convenience an example schema and dataset are provided.

Signed-off-by: Chris Fiege <cfi@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .../bareboxtlv-generator.py                   | 321 ++++++++++++++++++
 .../bareboxtlv-generator/data-example.yaml    |  12 +
 scripts/bareboxtlv-generator/requirements.txt |   2 +
 .../bareboxtlv-generator/schema-example.yaml  |  48 +++
 4 files changed, 383 insertions(+)
 create mode 100755 scripts/bareboxtlv-generator/bareboxtlv-generator.py
 create mode 100644 scripts/bareboxtlv-generator/data-example.yaml
 create mode 100644 scripts/bareboxtlv-generator/requirements.txt
 create mode 100644 scripts/bareboxtlv-generator/schema-example.yaml

diff --git a/scripts/bareboxtlv-generator/bareboxtlv-generator.py b/scripts/bareboxtlv-generator/bareboxtlv-generator.py
new file mode 100755
index 000000000000..5f9285a80630
--- /dev/null
+++ b/scripts/bareboxtlv-generator/bareboxtlv-generator.py
@@ -0,0 +1,321 @@
+#!/usr/bin/env python3
+
+import argparse
+import struct
+
+import yaml
+from crcmod.predefined import mkPredefinedCrcFun
+
+_crc32_mpeg = mkPredefinedCrcFun("crc-32-mpeg")
+
+
+class MaxSizeReachedException(Exception):
+    pass
+
+
+class FactoryDataset:
+    """
+    Generates TLV-encoded datasets that can be used with Barebox's
+    TLV support.
+
+    The generated binary structure looks like this:
+    #############################################################
+    # struct tlv {                                              #
+    #     be16 tag; /* 2 bytes */                               #
+    #     be16 len; /* 2 bytes */                               #
+    #     u8 payload[];                                         #
+    # };                                                        #
+    #                                                           #
+    # struct binfile {                                          #
+    #     be32 magic_version;                                   #
+    #     be32 length_tlv; /* 4 bytes */                        #
+    #     be32 length_sig; /* 4 bytes */                        #
+    #     struct tlv tlvs[];                                    #
+    #     be32 crc32;                                           #
+    # };                                                        #
+    #############################################################
+
+    Limitations:
+    * Signing is currently not supported and length_sig is always 0x0.
+    """
+
+    def __init__(self, schema):
+        """
+        Create a new Factory Dataset Object.
+
+        A ``schema`` is the python-world representation of the Barebox
+        ``struct tlv_mapping`` lists.
+        It describes the tags that can be used and define which
+        formatter must be used when (de-) serializing data.
+
+        Example schema:
+        | magic: 0x0fe01fca
+        | max_size: 0x100
+        |
+        | tags:
+        |   factory-timestamp:
+        |     tag: 0x0003
+        |     format: "decimal"
+        |     length: 8
+        |   (...)
+
+        With:
+        * magic: The magic header for the TLV-encoded data.
+        * max_size: Maximum length of the TLV-encoded data in bytes.
+                    If set the generated binary is tested to be less or equal this size after generation.
+        * tags: dict of tags that can be used for TLV-encoding.
+          * <key>: The human-readable name of this field.
+          * tag: (Mandatory) Tag-ID for use during TLV-encoding
+          * format: (Mandatory) Specifies the formatter to use
+          * length: (Mandatory for some formats) length of the field
+
+        Some remarks:
+        * Additional keys in a tag will be ignored. This can be used to add examples or annotations
+          to an entry.
+        * Tag-IDs can be used in multiple entries inside a schema with different human-readable names.
+          This only works reasonable if the Barebox parser knows how to handle it.
+          This will work well during encoding. But: It will need the same special knowledge for decoding.
+          Otherwise, only the last occurrence will be kept.
+        * The EEPROM will be written in the order of entries in the input data.
+
+        Supported Barebox TLV data formats:
+        * string:
+          - Arbitrary length string (up to 2^16-1 bytes)
+          - UTF-8
+          - Schema example:
+            |  device-hardware-release:
+            |    tag: 0x0002
+            |    format: "string"
+        * decimal:
+          - unsigned int
+          - length is required and must be in [1, 2, 4, 8]
+          - Schema example:
+            |  modification:
+            |    tag: 0x0005
+            |    format: decimal
+            |    length: 1
+        * mac-sequence:
+          - Describes a consecutive number of MAC addresses
+          - Contains a starting address and a count
+          - Input data must be an iterable in the following format: (first_mac: int, count: int)
+          - MAC-addresses are represented as python ints
+          - Schema example:
+            |  ethernet-address:
+            |    tag: 0x0012
+            |    format: "mac-sequence"
+        * mac-list:
+          - A list of MAC addresses
+          - Input data must be an iterable of MAC addresses: (first_mac: int, second_mac: int, ...)
+          - MAC-addresses are represented as python ints
+          - Schema example:
+            |  ethernet-address:
+            |    tag: 0x0012
+            |    format: "mac-list"
+        * linear-calibration
+          - Linear calibration data for analog channels
+          - Input data must be an iterable of floats: (c1: float, c2: float, ...)
+          - Values are stored as a 4-byte float
+          - Length-field is mandatory.
+          - Schema example:
+            |  usb-host1-curr:
+            |    tag: 0x8001
+            |    format: linear-calibration
+            |    length: 2
+        """
+        self.schema = schema
+
+    def encode(self, data):
+        """
+        Generate an EEPROM image for the given data.
+
+        Data must be a dict using fields described in the schema.
+        """
+        # build payload of TLVs
+        tlvs = b""
+
+        for name, value in data.items():
+            if name not in self.schema["tags"]:
+                raise KeyError(f"No Schema defined for data with name '{name}'")
+
+            tag = self.schema["tags"][name]
+            tag_format = tag["format"]
+
+            if tag_format == "string":
+                bin = value.encode("UTF-8")
+                fmt = f"{len(bin)}s"
+                if len(bin) > 2**16 - 1:
+                    raise ValueError(f"String {name} is too long!")
+
+            elif tag_format == "decimal":
+                fmtl = tag["length"]
+                if fmtl == 1:
+                    fmt = "B"
+                elif fmtl == 2:
+                    fmt = "H"
+                elif fmtl == 4:
+                    fmt = "I"
+                elif fmtl == 8:
+                    fmt = "Q"
+                else:
+                    raise ValueError(f"Decimal {name} has invalid len {fmtl}. Must be in [1, 2, 4, 8]!")
+                bin = abs(int(value))
+
+            elif tag_format == "mac-sequence":
+                if len(value) != 2:
+                    raise ValueError(f"mac-sequence {name} must be in format (base_mac: int, count: int)")
+                fmt = "7s"
+                mac = struct.pack(">Q", value[0])[2:]
+                bin = struct.pack(">B6s", value[1], mac)
+
+            elif tag_format == "mac-list":
+                bin = b""
+                for mac in value:
+                    bin += struct.pack(">Q", mac)[2:]
+                fmt = f"{len(value) * 6}s"
+
+            elif tag_format == "calibration":
+                bin = b""
+                if len(value) != tag["length"]:
+                    raise ValueError(f'linear-calibration {name} must have {tag["length"]} elements.')
+                for coeff in value:
+                    bin += struct.pack(">f", coeff)
+                fmt = f"{len(value) * 4}s"
+
+            else:
+                raise Exception(f"{name}: Unknown format {tag_format}")
+
+            tlvs += struct.pack(f">HH{fmt}", tag["tag"], struct.calcsize(fmt), bin)
+
+        # Convert the framing data.
+        len_sig = 0x0  # Not implemented.
+        header = struct.pack(">3I", self.schema["magic"], len(tlvs), len_sig)
+        crc_raw = _crc32_mpeg(header + tlvs)
+        crc = struct.pack(">I", crc_raw)
+        bin = header + tlvs + crc
+
+        # Check length
+        if "max_size" in self.schema and len(bin) > self.schema["max_size"]:
+            raise MaxSizeReachedException(
+                f'Generated binary too large. Is {len(bin)} bytes but max_size is {self.schema["max_size"]}.'
+            )
+        return bin
+
+    def decode(self, bin):
+        """
+        Decode a TLV-encoded binary image.
+
+        Returns a dict with entries decoded from the binary.
+        """
+        # check minimal length
+        values = {}
+
+        if len(bin) < 16:
+            raise ValueError("Supplied binary is too small to be TLV-encoded data.")
+
+        bin_magic, bin_tlv_len, bin_sig_len = struct.unpack(">3I", bin[:12])
+        # check magic
+        if bin_magic != self.schema["magic"]:
+            raise ValueError(f'Magic missmatch. Is {hex(bin_magic)} but expected {hex(self.schema["magic"])}')
+
+        # check signature length
+        if bin_sig_len != 0:
+            raise ValueError("Signature check is not supported!")
+
+        # check crc
+        crc_offset = 12 + bin_tlv_len + bin_sig_len
+        if crc_offset > len(bin) - 4:
+            raise ValueError("crc location calculated behind binary.")
+        bin_crc = struct.unpack(">I", bin[crc_offset : crc_offset + 4])[0]  # noqa E203
+        calc_crc = _crc32_mpeg(bin[:crc_offset])
+        if bin_crc != calc_crc:
+            raise ValueError(f"CRC missmatch. Is {hex(bin_crc)} but expected {hex(calc_crc)}.")
+
+        ptr = 12
+        while ptr < crc_offset:
+            tag_id, tag_len = struct.unpack_from(">HH", bin, ptr)
+            data_ptr = ptr + 4
+            ptr += tag_len + 4
+
+            name, tag_schema = self._get_tag_by_id(tag_id)
+            if not name:
+                print(f"Skipping unknown tag-id {hex(tag_id)}.")
+                continue
+
+            if tag_schema["format"] == "decimal":
+                if tag_len == 1:
+                    fmt = ">B"
+                elif tag_len == 2:
+                    fmt = ">H"
+                elif tag_len == 4:
+                    fmt = ">I"
+                elif tag_len == 8:
+                    fmt = ">Q"
+                else:
+                    raise ValueError(f"Decimal {name} has invalid len {tag_len}. Must be in [1, 2, 4, 8]!")
+                value = struct.unpack_from(fmt, bin, data_ptr)[0]
+            elif tag_schema["format"] == "string":
+                value = bin[data_ptr : data_ptr + tag_len].decode("UTF-8")  # noqa E203
+            elif tag_schema["format"] == "mac-sequence":
+                if tag_len != 7:
+                    raise ValueError(f"Tag {name} has wrong length {hex(tag_len)} but expected 0x7.")
+                count, base_mac = struct.unpack_from(">B6s", bin, data_ptr)
+                base_mac = struct.unpack(">Q", b"\x00\x00" + base_mac)[0]
+                value = [base_mac, count]
+            elif tag_schema["format"] == "mac-list":
+                if tag_len % 6 != 0:
+                    raise ValueError(f"Tag {name} has wrong length {hex(tag_id)}. Must be multiple of 0x6.")
+                value = []
+                for i in range(int(tag_len / 6)):
+                    mac = struct.unpack_from(">6s", bin, data_ptr + int(i * 6))[0]
+                    mac = struct.unpack(">Q", b"\x00\x00" + mac)[0]
+                    value.append(mac)
+            elif tag_schema["format"] == "calibration":
+                if tag_len % 4 != 0:
+                    raise ValueError(f"Tag {name} has wrong length {hex(tag_id)}. Must be multiple of 0x4.")
+                value = []
+                for i in range(int(tag_len / 4)):
+                    coeff = struct.unpack_from(">f", bin, data_ptr + int(i * 4))[0]
+                    value.append(coeff)
+            else:
+                raise Exception(f'{name}: Unknown format {tag_schema["format"]}')
+            values[name] = value
+
+        return values
+
+    def _get_tag_by_id(self, tag_id):
+        for name, tag_schema in self.schema["tags"].items():
+            if tag_schema["tag"] == tag_id:
+                return name, tag_schema
+        return None, None
+
+
+def _main():
+    parser = argparse.ArgumentParser(description="Generate a TLV dataset for the Barebox TLV parser")
+    parser.add_argument("schema", help="YAML file describing the data.")
+    parser.add_argument("--input-data", help="YAML file containing data to write to the binary.")
+    parser.add_argument("--output-data", help="YAML file where the contents of the binary will be written to.")
+    parser.add_argument("binary", help="Path to where export data to be copied into DUT's EEPROM.")
+    args = parser.parse_args()
+
+    # load schema
+    with open(args.schema) as schema_fh:
+        schema = yaml.load(schema_fh, Loader=yaml.SafeLoader)
+    eeprom = FactoryDataset(schema)
+
+    if args.input_data:
+        with open(args.input_data) as d_fh:
+            data = yaml.load(d_fh, Loader=yaml.SafeLoader)
+        bin = eeprom.encode(data)
+        with open(args.binary, "wb+") as out_fh:
+            out_fh.write(bin)
+
+    if args.output_data:
+        with open(args.binary, "rb") as in_fh:
+            bin = in_fh.read()
+        data = eeprom.decode(bin)
+        with open(args.output_data, "w+") as out_fh:
+            yaml.dump(data, out_fh)
+
+
+if __name__ == "__main__":
+    _main()
diff --git a/scripts/bareboxtlv-generator/data-example.yaml b/scripts/bareboxtlv-generator/data-example.yaml
new file mode 100644
index 000000000000..17c787546204
--- /dev/null
+++ b/scripts/bareboxtlv-generator/data-example.yaml
@@ -0,0 +1,12 @@
+factory-timestamp: 1636451762
+modification: 0
+featureset: "base"
+pcba-serial-number: "12345.67890"
+pcba-hardware-release: "device-S01-R02-V03-C04"
+pwr-volt:
+- 1.0
+- 0.0
+pwr-curr:
+- 1.0
+- 0.0
+
diff --git a/scripts/bareboxtlv-generator/requirements.txt b/scripts/bareboxtlv-generator/requirements.txt
new file mode 100644
index 000000000000..a1f7e3b3f2a3
--- /dev/null
+++ b/scripts/bareboxtlv-generator/requirements.txt
@@ -0,0 +1,2 @@
+crcmod
+pyaml
diff --git a/scripts/bareboxtlv-generator/schema-example.yaml b/scripts/bareboxtlv-generator/schema-example.yaml
new file mode 100644
index 000000000000..4927b869513d
--- /dev/null
+++ b/scripts/bareboxtlv-generator/schema-example.yaml
@@ -0,0 +1,48 @@
+magic: 0xc6895c21
+max_size: 0x100
+
+tags:
+  factory-timestamp:
+    tag: 0x0003
+    format: "decimal"
+    length: 8
+    example: 1636451762
+
+  modification:
+    tag: 0x0005
+    format: decimal
+    length: 1
+    example: 42
+    purpose: "0: Device unmodified; 1: Device has undocumented modifications"
+
+  featureset:
+    tag: 0x0006
+    format: "string"
+    example: "base"
+    purpose: For later use. May encode a set of features of this device.
+
+  pcba-serial-number:
+    tag: 0x0007
+    format: "string"
+    example: "12345.67890"
+    purpose: Serial number of device
+
+  pcba-hardware-release:
+    tag: 0x0008
+    format: "string"
+    example: "device-S01-R02-V03-C04"
+    purpose: Detailed release information for device
+
+  pwr-volt:
+    tag: 0x9000
+    format: calibration
+    length: 2
+    example: "(485.0032, -42.23)"
+    purpose: (Gain, Offset) tuple of floats for analog calibration of a measurement
+
+  pwr-curr:
+    tag: 0x9001
+    format: calibration
+    length: 2
+    example: "(485.0032, -42.23)"
+    purpose: (Gain, Offset) tuple of floats for analog calibration of a measurement
-- 
2.39.5



