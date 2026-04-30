Delivery-date: Thu, 30 Apr 2026 16:41:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wISaN-000WGI-1U
	for lore@lore.pengutronix.de;
	Thu, 30 Apr 2026 16:41:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wISaM-0001KE-PZ
	for lore@pengutronix.de; Thu, 30 Apr 2026 16:41:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:References:To:From:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eN3hyhR3oTJ0ywYDOgN7nX3utH4qvXWhNzoN+ZEzNmQ=; b=LeM+K+FZGA/7k5GhbonA7g/ABy
	WQ8fI+lN4L+nu4OZD9sq6ETYFIz99V7eH2wD/8+S6bfFoMfsyDaPHH+TdTNYeKp8CQBDd0JMLWsch
	RwsiiICd8aaIUsmXEWeX6G2EzV7W+eD0CuIPWcn5vvpz/N8j5MaTa8tqTkY1Vy+ZSPO5uZTHhJZGE
	Mr0zUNJXw7sDqHVaxUmzzootf1HyCoAA1ejqlBSFUbkBk8y/krdcmMPfVfYiRz/kEuP7XRQ+rLzhf
	i55sIEvEgdjP7JjDj+00K9ngPzTwJEFi8mst4ruYCBRaiDhhZ4VX2JvbCaBiRV+iVH2I0Ka1YUr9Z
	s8SaxZXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wISZk-00000005ak7-4AiN;
	Thu, 30 Apr 2026 14:41:12 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wISZj-00000005ak1-08AA
	for barebox@bombadil.infradead.org;
	Thu, 30 Apr 2026 14:41:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:References:To:From:Subject:MIME-Version:Date:Message-ID:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=eN3hyhR3oTJ0ywYDOgN7nX3utH4qvXWhNzoN+ZEzNmQ=; b=MVfUJ1LsFimQpXrOCkgGxPT612
	XVKNaAyNTTArF+jLx7nQP8vh66jL0fyj6+Ll97zW/+FH6vOi8AcZvmoH0BzwcTHoxyU8K6IdIjoCn
	mis7X3Rqgbj6jnviTA9iEMrz5o9VwAuE0+VRRHq8JCA07rjYY7wx1b+Uos7wWdPAdI+IFdiOMrhw2
	tCJuddBaRWBna44Y4Ckg8oJvdDaMZ0Om9DZF9Lae7lm+8NZqHcWSA2AHHCbTj0drkPzIYgMyF/FGB
	uvU+3f4ps4p1ZY6YKp0tHD2ogtGsfHTFzMd6keJC4WNxSrPNcFlwSDAHL+6wZwkowrXa5yR19TE5o
	bIRSecXw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wISZf-00000007YLm-1C4r
	for barebox@lists.infradead.org;
	Thu, 30 Apr 2026 14:41:09 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1wISZe-0000yz-Ae; Thu, 30 Apr 2026 16:41:06 +0200
Message-ID: <25879743-34cc-4af5-8924-c72dadba5d5b@pengutronix.de>
Date: Thu, 30 Apr 2026 16:41:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Jonas Rebmann <jre@pengutronix.de>
To: Fabian Pflug <f.pflug@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20260430-v2026-04-0-topic-tlv-doc-v1-1-5aa0ef602bb8@pengutronix.de>
 <193581a7-fd26-4ac4-b6a0-b625c8090f2e@pengutronix.de>
Content-Language: en-US
In-Reply-To: <193581a7-fd26-4ac4-b6a0-b625c8090f2e@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260430_154107_615916_DE3E5957 
X-CRM114-Status: GOOD (  15.05  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH RESEND] doc: tlv: add images and custom format
 documentation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi again,

On 2026-04-30 14:20, Jonas Rebmann wrote:
> Can we turn this into ASCII-art or DOT/Graphviz or similar?
> 
> Is there anything our sphinx setup already supports to turn into SVG on
> the fly?

We could use sphinx.ext.graphviz and represent your diagrams like so:

---8<---

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
index 3884d17409..1a108235ad 100644
--- a/Documentation/user/barebox-tlv.rst
+++ b/Documentation/user/barebox-tlv.rst
@@ -10,9 +10,20 @@ Data is stored in a tag-length-value format (hence the name) and read
  from non-volatile memory during startup.
  Unpacked values are stored in the devicetree ``chosen``-node.

-.. image:: figures/tlv_usage.svg
-  :width: 40%
-  :align: center
+.. graphviz::
+
+   digraph tlv_usage {
+       node [shape=box]
+
+       soc_id      [label="SOC ID\n(read from fuses)"]
+       tlv_pubkey  [label="TLV Public Key\n(compiled into barebox)"]
+       signed_tlv  [label="Signed TLV data\n(read from eeprom)"]
+       device_tree [label="Device-Tree"]
+
+       tlv_pubkey  -> signed_tlv  [label="Verifies"]
+       soc_id      -> signed_tlv  [label="Compared against" dir=both]
+       signed_tlv  -> device_tree [label="Updates"]
+   }

  barebox TLV consists of two components:

@@ -121,7 +132,41 @@ This schema defines some well-known tags and two board-specific tags.
  Afterwards another yaml-file with the data for the TLV binary is needed.
  An example can be found in ``scripts/bareboxtlv-generator/data-example.yaml``.

-.. image:: figures/tlv_generator.svg
+.. graphviz::
+
+    digraph tlv_generator {
+        node [shape=record fontname="Monospace"]
+
+        schema_yaml [label="{schema.yaml |
+              magic: 0x61bb95f3
+            \lmax_size: 0x1000
+            \ltags:
+            \l\  factory-timestamp:
+            \l\    tag: 0x0003
+            \l\    format: \"decimal\"
+            \l\    length: 8
+            \l\    example: 1636451762
+            \l\  featureset:
+            \l\    tag: 0x0006
+            \l\    format: \"string\"
+            \l\    example: \"base\"
+            \l\    purpose: For later use.
+            }" style=dashed]
+
+        data_yaml [label="{data.yaml |
+              factory-timestamp: 1636451762
+            \lfeatureset: \"base\"\l
+            }"]
+
+        tlv_key     [label="{tlv.key | PRIVATE KEY}"]
+        generator   [label="barebox-tlv-generator.py"]
+        signed_bin  [label="{TLV_signed.bin | Signed TLV data}"]
+
+        schema_yaml -> generator
+        data_yaml   -> generator
+        tlv_key     -> generator
+        generator   -> signed_bin
+    }

  With these information in place a TLV binary can be created:

---8<---

I didn't create another version of your patch because it lacked the
Signed-off-by, only signed off the (empty) message body/cover letter.

What do you think about using dot/graphviz for this?

Regards,
Jonas

-- 
Pengutronix e.K.                           | Jonas Rebmann               |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |


