Delivery-date: Fri, 14 Oct 2022 18:37:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ojNgo-008i6b-LW
	for lore@lore.pengutronix.de; Fri, 14 Oct 2022 18:37:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ojNgl-0005SB-KB
	for lore@pengutronix.de; Fri, 14 Oct 2022 18:37:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BRk/pg7AwRHDHxaOJkF3Fm/kslYYLLZ0q+AR0pCenbQ=; b=fnG+/2oL6QKbDuPe3J5QaeZesa
	VcWH6gv53HjV4IRAGCL6OicWRaMeK+6Dam/+TgkZjEQZmlCBJtUsHZIYYx65A5RllF0pwrshgsqpC
	cJYgGMJvw2ZFH8WvWnJY/Kd8CyXoQYKdkbcGlDthnWq7n2fuoSqPM1CnBpwx3fnmWj9fCgymg5mwe
	bYqK1T7NZo+/CwcxJfMgMBlXQ4rCO3Ss7bfvy87eb49iCnCRjKZXJoKv5uswhadeBCMtk4aGRLT2R
	wUpseuvxE34c3WEPVn4+Cz/5mmHO12S6L+rhf/qu5X5zxCj4N2uWMNdNCiC0O+JBlddlKgv5R+ftK
	EEhGLFQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ojNfE-00FNaZ-Pk; Fri, 14 Oct 2022 16:36:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ojNev-00FNSq-CY
	for barebox@lists.infradead.org; Fri, 14 Oct 2022 16:35:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1ojNes-0004xk-IN
	for barebox@lists.infradead.org; Fri, 14 Oct 2022 18:35:38 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1ojNer-001WSa-Sb
	for barebox@lists.infradead.org; Fri, 14 Oct 2022 18:35:37 +0200
Received: from mfe by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1ojNeq-00Fzlk-HS
	for barebox@lists.infradead.org; Fri, 14 Oct 2022 18:35:36 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 14 Oct 2022 18:35:34 +0200
Message-Id: <20221014163534.3812272-9-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221014163534.3812272-1-m.felsch@pengutronix.de>
References: <20221014163534.3812272-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221014_093541_622598_D9AAD0F6 
X-CRM114-Status: GOOD (  22.83  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 8/8] state: add support for new backend format
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The backend can now be specified by either:

  backend = <&of_partition>;

or by using the path binding:

  backend = &mmc2, "partname:2";

  backend = &of_partition;

This allows us to store the state within a partition table like GPT or
MBR. So the days of magic offsets within the partitions table are gone.
For this feature a recent dt-utils package must be used, else you can't
manipulate the state from user-space anymore.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 .../bindings/barebox/barebox,state.rst        | 30 ++++++-
 Documentation/user/state.rst                  | 12 ++-
 common/state/state.c                          | 78 ++++++++++++++++---
 common/state/state.h                          |  2 +
 4 files changed, 102 insertions(+), 20 deletions(-)

diff --git a/Documentation/devicetree/bindings/barebox/barebox,state.rst b/Documentation/devicetree/bindings/barebox/barebox,state.rst
index 390e148a28..ef1c0b418c 100644
--- a/Documentation/devicetree/bindings/barebox/barebox,state.rst
+++ b/Documentation/devicetree/bindings/barebox/barebox,state.rst
@@ -18,7 +18,7 @@ Required Properties
 
 * ``compatible``: should be ``barebox,state``
 * ``magic``: a 32bit number
-* ``backend``: phandle to persistent memory
+* ``backend``: points to the storage backend please see below
 * ``backend-type``: defines the *state* variable set storage format
 * additionally a *state* node must have an alias in the ``/aliases`` node pointing
   to it.
@@ -37,9 +37,31 @@ with the new *state* variable set's content.
    magic value. They're already reserved by the ``direct`` and ``circular``
    storage backends.
 
-The ``backend`` property uses the *phandle* mechanism to link the *state* to
-a real persistent memory. Refer :ref:`Backend <state_framework,backends>` for
-supported persistent memories.
+The ``backend`` property link the *state* to a  real persistent memory. Refer
+:ref:`Backend <state_framework,backends>` for supported persistent memories.
+The property can be specified in two ways:
+
+1. Specified by using the *handle* mechanism
+
+	.. code-block:: c
+
+		backend = <&of_partition>;
+
+2. Specified by using string references
+
+	.. code-block:: c
+
+		backend = &mmc2, "partname:1";
+		backend = &mmc2, "partname:my-barebox-state-partition";
+		backend = &of_partition;
+
+By using the 2nd format the state can be stored within a MBR or GPT partition.
+This has the adavantage that magic holes and offsets of partitions can be
+avoided.
+
+.. note::
+   Please ensure that your dt-utils user space package is
+   recent enough to handle this format. If unsure use format 1.
 
 The ``backend-type`` should be ``raw`` or ``dtb``. Refer
 :ref:`Backend Types <state_framework,backend_types>` for further details.
diff --git a/Documentation/user/state.rst b/Documentation/user/state.rst
index a0e27d4fe8..d5fff18672 100644
--- a/Documentation/user/state.rst
+++ b/Documentation/user/state.rst
@@ -542,10 +542,14 @@ SD/eMMC and ATA
 
 The following devicetree node entry defines some kind of SD/eMMC memory and
 a partition at a specific offset inside it to be used as the backend for the
-*state* variable set. Note that currently there is no support for on-disk
-partition tables. Instead, an ofpart partition description must be used. You
-have to make sure that this partition does not conflict with any other partition
-in the partition table.
+*state* variable set. The partition can be specified by an ofpart partition
+or by on-disk partition tables. Below is an example for an ofpart partition.
+You have to make sure that this partition does not conflict with any other
+partition in the partition table.
+
+.. note::
+   For on-disk partition table support a very recent dt-utils package is
+   required. If unsure use the ofpart partition scheme.
 
 .. code-block:: text
 
diff --git a/common/state/state.c b/common/state/state.c
index cee83ebde4..6272333f45 100644
--- a/common/state/state.c
+++ b/common/state/state.c
@@ -432,7 +432,6 @@ static int of_state_fixup(struct device_node *root, void *ctx)
 	const char *compatible = "barebox,state";
 	struct state *state = ctx;
 	struct property *p;
-	phandle phandle;
 	int ret;
 
 	node = of_find_node_by_path_from(root, state->of_path);
@@ -499,10 +498,20 @@ static int of_state_fixup(struct device_node *root, void *ctx)
 		goto out;
 	}
 
-	phandle = of_node_create_phandle(backend_node);
-	ret = of_property_write_u32(new_node, "backend", phandle);
-	if (ret)
-		goto out;
+	if (state->backend_is_new_format) {
+		ret = of_property_write_strings(new_node, "backend",
+						backend_node->full_name,
+						state->backend_dts_partition, NULL);
+		if (ret)
+			goto out;
+	} else {
+		phandle phandle;
+
+		phandle = of_node_create_phandle(backend_node);
+		ret = of_property_write_u32(new_node, "backend", phandle);
+		if (ret)
+			goto out;
+	}
 
 	if (!strcmp("raw", state->format->name)) {
 		struct digest *digest =
@@ -574,6 +583,7 @@ void state_release(struct state *state)
 	state_format_free(state->format);
 	free(state->backend_dev_path);
 	free(state->backend_dts_dev_or_part);
+	free(state->backend_dts_partition);
 	free(state->of_path);
 	free(state);
 }
@@ -582,11 +592,15 @@ void state_release(struct state *state)
 
 #define state_of_find_path_by_node(node, path, flags, offset, size) \
 	of_find_path_by_node(node, path, flags)
+#define state_of_find_path(node, propname, outpath, flags, offset, size) \
+	of_find_path(node, propname, outpath, flags)
 
 #else
 
 #define state_of_find_path_by_node(node, path, flags, offset, size) \
 	of_get_devicepath(node, path, offset, size)
+#define state_of_find_path(node, propname, outpath, flags, offset, size) \
+	of_find_path(node, propname, outpath, offset, size)
 
 #endif /* __BAREBOX__ */
 
@@ -614,6 +628,39 @@ state_parse_old_backend_format(struct device_node *backend_node,
 	return 0;
 }
 
+static int
+state_parse_new_backend_format(struct device_node *state_node,
+			       struct state *state, off_t *offset, size_t *size)
+{
+	struct device_node *backend_node;
+	const char *backend_dev_or_part;
+	const char *part = NULL;
+	int ret;
+
+	backend_dev_or_part = of_get_property(state_node, "backend", NULL);
+	if (!backend_dev_or_part)
+		return -EINVAL;
+
+	backend_node = of_find_node_by_path(backend_dev_or_part);
+	if (!backend_node)
+		return -ENODEV;
+
+	if (is_of_partition(backend_node))
+		ret = of_partition_ensure_probed(backend_node);
+	else
+		ret = of_device_ensure_probed(backend_node);
+	if (ret)
+		return ret;
+
+	of_property_read_string_index(state_node, "backend", 1, &part);
+	state->backend_dts_dev_or_part = of_get_reproducible_name(backend_node);
+	state->backend_dts_partition = xstrdup(part);
+	state->backend_is_new_format = true;
+
+	return state_of_find_path(state_node, "backend",
+				  &state->backend_dev_path, 0, offset, size);
+}
+
 /*
  * state_new_from_node - create a new state instance from a device_node
  *
@@ -643,14 +690,21 @@ struct state *state_new_from_node(struct device_node *node, bool readonly)
 	if (IS_ERR(state))
 		return state;
 
+	/*
+	 * backend can be in three formats:
+	 *  old) backend = <&state_part>;
+	 *  new) backend = &state_part;
+	 *       backend = &state_part_dev, "partname:0";
+	 *
+	 * Start with the old format for compatibility reasons.
+	 */
 	backend_node = of_parse_phandle(node, "backend", 0);
-	if (!backend_node) {
-		dev_err(&state->dev, "Cannot resolve \"backend\" phandle\n");
-		ret = -EINVAL;
-		goto out_release_state;
-	}
-
-	ret = state_parse_old_backend_format(backend_node, state, &offset, &size);
+	if (backend_node)
+		ret = state_parse_old_backend_format(backend_node, state,
+						     &offset, &size);
+	else
+		ret = state_parse_new_backend_format(node, state,
+						     &offset, &size);
 	if (ret)
 		goto out_release_state;
 
diff --git a/common/state/state.h b/common/state/state.h
index 83a7fae4a5..fdc6b3fc40 100644
--- a/common/state/state.h
+++ b/common/state/state.h
@@ -121,6 +121,8 @@ struct state {
 	struct state_backend_storage storage;
 	char *backend_dev_path;
 	char *backend_dts_dev_or_part;
+	char *backend_dts_partition;
+	bool backend_is_new_format;
 };
 
 enum state_convert {
-- 
2.30.2



