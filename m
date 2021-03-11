Delivery-date: Thu, 11 Mar 2021 18:08:51 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lKOnr-0003V0-CN
	for lore@lore.pengutronix.de; Thu, 11 Mar 2021 18:08:51 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lKOnq-0003G0-Ff
	for lore@pengutronix.de; Thu, 11 Mar 2021 18:08:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Uc5hQpeIcSViEB3K5gxfmaU9ND6bCG3kQnJwewJ/Zsg=; b=VziHBykyvdpRXJ
	Dh5cHL7Y9Uy4S3trESSd2/TE4bcIBVn9ZIDOoluJV5T2824zDqQLYy/PV+PyfUnMgk/3FBlZcJScF
	zQu43T/G45QqeLbowH1aTy9mbuUoBAY99MOUWKPuWr8VTzkUHlKsEm6osogCz2np8IDzlsOOGsqD9
	xnddyGlA6zEDSE17efysN8CL+jcT2+uOCoIxrpARHKTrTMLC1Gc8RUqVUw2VYrUQb5gu+fCWZ/2cJ
	mj7djxAJdep5bZZauVkOrfy/ZOS1OhklfiAcQpp6qZasawFoYA/DSNXo4jKnwFtGFFFlP0OGEbdZB
	hJowoHAXBeQ41fNA6+mA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lKOmi-009eiu-4G; Thu, 11 Mar 2021 17:07:41 +0000
Received: from enterprise01.smtp.diehl.com ([193.201.238.219])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lKOmU-009egD-Ig
 for barebox@lists.infradead.org; Thu, 11 Mar 2021 17:07:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=diehl.com; i=@diehl.com; q=dns/txt; s=default;
 t=1615482447; x=1647018447; h=from:to:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=BhZohKR9DIFowRK0TfslAiJ8k4EQDiUSTzjIxUUFJaw=;
 b=UnXg9cpWODMQvoiOUK8lC5BkLWsRcAsqF4MBZtf3Sfe489JYGb+n1fp+
 vO6SFW6jSALIiadlABrdDJLO0SXjFxzaZ6bDvR+pDcVs/SHWh/FqaKApB
 JWAR5kxfHSDOytXT+RUzZUbQ5jW1HxZ/hYIFRyZSaxAlfFRExIo89sw/W
 TI9gpAQJiS5NAzsF+D/s/0BvVjTn9wOa6ceMXlYMgn3xJaqC4wFGqPa6K
 lQOAsw0ODeUgUMoEqum0RexgKbEA/TE4+nw8cQxM2CsVzn1t0XEfmc1Ns
 FPzIYq4pjku6QcGMq1CAaldV8uZEq8oOnCUQ71BwzAmMS6wOjRsKPDsh/ Q==;
IronPort-SDR: R7ceuyh9a8tNh6afJWIkMq/syoym79dK0ia4Ifn2jTN9w8uYBXW33510W+hlxL6kr1oL+D7U2b
 fsYoHHi4kIP1lZeYMHlb9v2mECbAeESZYNpxK/wmv255hjpaTwk8s+Xmc01MBTCh/Z67AFatWJ
 9dpRJWuYL6dyhDkPxvpbDuxStJ/LiizpOg3bGI0xoriDlQzixvcaJRABSzQ6KRxB17bj0IU38R
 /vz4mxnZZ5ICM7RWGMs7fO6Fzc0LluDstNwrtOqFcpgxQqVCHvbD0mevPU7uRkJ9IP+FbEHHVQ
 j88=
IronPort-HdrOrdr: A9a23:QFnaAa38OQ+okTHJBIkr5wqjBAkkLtp033Aq2lEZdDV+dMuEm8
 ey2MkKzBOcskdpZFgMu/ClfJOBT3TV6IJv7eAqVouKcQH6tAKTXeZfxKT4xTmIIVydysd51b
 18N5R4EsH6F1Jgjc33iTPZL/8F4P2qtJ+lnv3fyXAFd3AIV4hF4x1iAgiWVm1aLTMqObMDGJ
 CR5tVKqlObEBx8Uu2BCmABT6z/obTw5fbbSCQbDB0q4hTmt0LP1JfGFXGjr3IjegIK6rck/G
 jDnWXCipmLgrWwyhK07Q7uxqUTlN74891PbfbjtuElbjnokjypeYhAdtS50wwInA==
X-IronPort-AV: E=Sophos;i="5.81,241,1610406000"; 
   d="scan'208";a="6165194"
From: Denis Osterland-Heim <denis.osterland@diehl.com>
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Thread-Topic: [PATCH] nvmem: ocotp: add support to revoke keys
Thread-Index: AQHXFpkApOo+rbfPeke7j5zTFEps9w==
Date: Thu, 11 Mar 2021 17:07:21 +0000
Message-ID: <20210311170403.22671-1-denis.osterland@diehl.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Evolution 3.28.5-0ubuntu0.18.04.2 
x-ms-exchange-messagesentrepresentingtype: 1
x-disclaimerprocessed: True
MIME-Version: 1.0
X-GBS-PROC: 5x5xXKsZ7k4sJw6jWwvS4p3Trid70NcCAfrXWeuS2B+HoABx79bHc06wZt9/4whV
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210311_170727_017897_059AA0CC 
X-CRM114-Status: GOOD (  11.63  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-103.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED,
	USER_IN_WELCOMELIST,USER_IN_WHITELIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] nvmem: ocotp: add support to revoke keys
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Denis Osterland-Heim <Denis.Osterland@diehl.com>

Add device tree property 'barebox,key-revoke' with the syntax:
< key_phandle fuse_offset mask >

An example:
signature {
key1: key-img1 { ... };
key2: key-srk1 { ... };
};
};
&ocotp {
barebox,key-revoke =3D <
&key1 0x660 1
&key2 0x6f0 1
>;
};

Signed-off-by: Denis Osterland-Heim <Denis.Osterland@diehl.com>
---
 .../bindings/misc/fsl,imx-ocotp.rst           |  4 ++
 drivers/nvmem/ocotp.c                         | 37 ++++++++++++++++++-
 2 files changed, 39 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/misc/fsl,imx-ocotp.rst b/Doc=
umentation/devicetree/bindings/misc/fsl,imx-ocotp.rst
index 202bb3aa0..63a6f5331 100644
--- a/Documentation/devicetree/bindings/misc/fsl,imx-ocotp.rst
+++ b/Documentation/devicetree/bindings/misc/fsl,imx-ocotp.rst
@@ -12,6 +12,9 @@ Optional properties:
   can be multiple entries in the form <&phandle regofs> to assign a MAC
   address to an Ethernet device.

+* ``barebox,key-revoke``: Revoke (remove) key if bit is set. This can be m=
ultiple
+  entries in the form <&phandle regofs mask> to revoke a key if bit is set.
+
 Example:

 .. code-block:: none
@@ -20,4 +23,5 @@ Example:
   compatible =3D "fsl,imx6q-ocotp";
   reg =3D <0x021bc000 0x4000>;
   barebox,provide-mac-address =3D <&fec 0x620>;
+  barebox,key-revoke =3D <&/signature/key-img1 0x6f0 1>;
   };
diff --git a/drivers/nvmem/ocotp.c b/drivers/nvmem/ocotp.c
index cee50955e..00ee6cd06 100644
--- a/drivers/nvmem/ocotp.c
+++ b/drivers/nvmem/ocotp.c
@@ -641,7 +641,7 @@ static struct regmap_bus imx_ocotp_regmap_bus =3D {
 .reg_read =3D imx_ocotp_reg_read,
 };

-static void imx_ocotp_init_dt(struct ocotp_priv *priv)
+static void imx_ocotp_init_mac_dt(struct ocotp_priv *priv)
 {
 char mac[MAC_BYTES];
 const __be32 *prop;
@@ -673,6 +673,38 @@ static void imx_ocotp_init_dt(struct ocotp_priv *priv)
 }
 }

+static void imx_ocotp_init_key_dt(struct ocotp_priv *priv)
+{
+const __be32 *prop;
+struct device_node *node =3D priv->dev.parent->device_node;
+int len;
+
+if (!node)
+return;
+
+prop =3D of_get_property(node, "barebox,key-revoke", &len);
+if (!prop)
+return;
+
+for (; len >=3D 3; len -=3D 3) {
+struct device_node *rnode;
+uint32_t phandle, offset, mask;
+unsigned val;
+
+phandle =3D be32_to_cpup(prop++);
+
+rnode =3D of_find_node_by_phandle(phandle);
+offset =3D be32_to_cpup(prop++);
+mask =3D be32_to_cpup(prop++);
+
+if (imx6_ocotp_read_one_u32(priv, OCOTP_OFFSET_TO_INDEX(offset), &val))
+continue;
+
+if (val & mask)
+of_delete_node(rnode);
+}
+}
+
 static int imx_ocotp_write(struct device_d *dev, const int offset,
     const void *val, int bytes)
 {
@@ -790,7 +822,8 @@ static int imx_ocotp_probe(struct device_d *dev)
 if (IS_ENABLED(CONFIG_MACHINE_ID))
 imx_ocotp_set_unique_machine_id();

-imx_ocotp_init_dt(priv);
+imx_ocotp_init_mac_dt(priv);
+imx_ocotp_init_key_dt(priv);

 dev_add_param_bool(&(priv->dev), "sense_enable", NULL, NULL, &priv->sense_=
enable, priv);

--
2.30.2

Diehl Connectivity Solutions GmbH
Gesch=E4ftsf=FChrung: Horst Leonberger
Sitz der Gesellschaft: N=FCrnberg - Registergericht: Amtsgericht
N=FCrnberg: HRB 32315

________________________________

Der Inhalt der vorstehenden E-Mail ist nicht rechtlich bindend. Diese E-Mai=
l enthaelt vertrauliche und/oder rechtlich geschuetzte Informationen.
Informieren Sie uns bitte, wenn Sie diese E-Mail faelschlicherweise erhalte=
n haben. Bitte loeschen Sie in diesem Fall die Nachricht.
Jede unerlaubte Form der Reproduktion, Bekanntgabe, Aenderung, Verteilung u=
nd/oder Publikation dieser E-Mail ist strengstens untersagt.

- Informationen zum Datenschutz, insbesondere zu Ihren Rechten, erhalten Si=
e unter:

https://www.diehl.com/group/de/transparenz-und-informationspflichten/

The contents of the above mentioned e-mail is not legally binding. This e-m=
ail contains confidential and/or legally protected information. Please info=
rm us if you have received this e-mail by
mistake and delete it in such a case. Each unauthorized reproduction, discl=
osure, alteration, distribution and/or publication of this e-mail is strict=
ly prohibited.

- For general information on data protection and your respective rights ple=
ase visit:

https://www.diehl.com/group/en/transparency-and-information-obligations/



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

